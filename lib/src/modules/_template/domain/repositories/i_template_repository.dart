import 'package:devlingo/src/core/errors/app_failure.dart';
import 'package:devlingo/src/modules/_template/domain/entities/template_entity.dart';
import 'package:fpdart/fpdart.dart';

/// Domain contract for the `_template/` repository.
///
/// Implementations live in `infrastructure/repositories/` and decide
/// the local-vs-remote strategy. Callers (use cases, blocs) depend on
/// this interface, never on a concrete implementation.
abstract interface class ITemplateRepository {
  Future<Either<AppFailure, Template>> getById(String id);

  Future<Either<AppFailure, List<Template>>> getAll();

  Future<Either<AppFailure, Template>> create(Template template);

  Future<Either<AppFailure, Unit>> delete(String id);
}
