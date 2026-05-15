import 'package:devlingo/src/core/errors/app_failure.dart';
import 'package:devlingo/src/modules/_template/domain/entities/template_entity.dart';
import 'package:devlingo/src/modules/_template/domain/repositories/i_template_repository.dart';
import 'package:devlingo/src/modules/_template/infrastructure/datasources/i_template_local_datasource.dart';
import 'package:devlingo/src/modules/_template/infrastructure/datasources/i_template_remote_datasource.dart';
import 'package:devlingo/src/modules/_template/infrastructure/mappers/template_mapper.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

/// Default [ITemplateRepository] — offline-first with best-effort remote sync.
///
/// Reads prefer the local data source, then fall back to remote. Writes
/// always hit local first; remote failures are swallowed when the local
/// write already succeeded (stub remote throws by design).
@LazySingleton(as: ITemplateRepository)
class TemplateRepository implements ITemplateRepository {
  TemplateRepository(this._local, this._remote);

  final ITemplateLocalDataSource _local;
  final ITemplateRemoteDataSource _remote;

  @override
  Future<Either<AppFailure, Template>> getById(String id) async {
    try {
      final cached = await _local.getById(id);
      if (cached != null) {
        return right(cached.toEntity());
      }

      final remote = await _remote.fetchById(id);
      if (remote == null) {
        return left(
          const AppFailure.notFound(message: 'Template not found.'),
        );
      }

      await _local.save(remote);
      return right(remote.toEntity());
    } on Exception catch (e) {
      return left(AppFailure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<AppFailure, List<Template>>> getAll() async {
    try {
      final rows = await _local.getAll();
      return right(rows.map((dto) => dto.toEntity()).toList());
    } on Exception catch (e) {
      return left(AppFailure.cache(message: e.toString()));
    }
  }

  @override
  Future<Either<AppFailure, Template>> create(Template template) async {
    try {
      final dto = template.toDto();
      await _local.save(dto);

      try {
        final synced = await _remote.upsert(dto);
        await _local.save(synced);
        return right(synced.toEntity());
      } on Exception {
        return right(dto.toEntity());
      }
    } on Exception catch (e) {
      return left(AppFailure.cache(message: e.toString()));
    }
  }

  @override
  Future<Either<AppFailure, Unit>> delete(String id) async {
    try {
      await _local.delete(id);
      try {
        await _remote.delete(id);
      } on Exception {
        // Best-effort: local delete already succeeded.
      }
      return right(unit);
    } on Exception catch (e) {
      return left(AppFailure.cache(message: e.toString()));
    }
  }
}
