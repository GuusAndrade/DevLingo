import 'package:devlingo/src/core/errors/app_failure.dart';
import 'package:devlingo/src/core/usecases/usecase.dart';
import 'package:devlingo/src/modules/_template/domain/entities/template_entity.dart';
import 'package:devlingo/src/modules/_template/domain/repositories/i_template_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

/// Fetches a single [Template] by identifier.
///
/// One use case class maps to one domain operation; heavier workflows
/// should be split into dedicated use cases.
@injectable
class GetTemplateByIdUseCase implements UseCase<Template, String> {
  GetTemplateByIdUseCase(this._repository);

  final ITemplateRepository _repository;

  @override
  Future<Either<AppFailure, Template>> call(String id) =>
      _repository.getById(id);
}
