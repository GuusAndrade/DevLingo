import 'package:devlingo/src/modules/_template/infrastructure/dtos/template_dto.dart';

/// Contract for on-device persistence of [TemplateDto] rows.
///
/// Implementations perform raw I/O (Drift, files, etc.) and throw
/// exceptions on failure. Callers in the repository layer translate
/// those into `Either` values with `AppFailure`.
abstract interface class ITemplateLocalDataSource {
  Future<TemplateDto?> getById(String id);

  Future<List<TemplateDto>> getAll();

  Future<void> save(TemplateDto dto);

  Future<void> delete(String id);
}
