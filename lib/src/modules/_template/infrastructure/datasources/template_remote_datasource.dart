import 'package:devlingo/src/modules/_template/infrastructure/datasources/i_template_remote_datasource.dart';
import 'package:devlingo/src/modules/_template/infrastructure/dtos/template_dto.dart';
import 'package:injectable/injectable.dart';

/// Stub remote data source — throws on every call.
///
/// Wire real Supabase queries here later. Keeping the class registered in
/// DI preserves the constructor seam the repository already expects.
@LazySingleton(as: ITemplateRemoteDataSource)
class TemplateRemoteDataSource implements ITemplateRemoteDataSource {
  Never _notImplemented(String method) => throw Exception(
        'TemplateRemoteDataSource.$method is not implemented yet.',
      );

  @override
  Future<TemplateDto?> fetchById(String id) async => _notImplemented('fetchById');

  @override
  Future<List<TemplateDto>> fetchAll() async => _notImplemented('fetchAll');

  @override
  Future<TemplateDto> upsert(TemplateDto dto) async => _notImplemented('upsert');

  @override
  Future<void> delete(String id) async => _notImplemented('delete');
}
