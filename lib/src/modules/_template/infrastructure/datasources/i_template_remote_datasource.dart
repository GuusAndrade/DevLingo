import 'package:devlingo/src/modules/_template/infrastructure/dtos/template_dto.dart';

/// Contract for network-backed access to template rows.
///
/// Implementations talk to Supabase/REST and throw exceptions on
/// failure. The repository maps those to `AppFailure`.
abstract interface class ITemplateRemoteDataSource {
  Future<TemplateDto?> fetchById(String id);

  Future<List<TemplateDto>> fetchAll();

  Future<TemplateDto> upsert(TemplateDto dto);

  Future<void> delete(String id);
}
