import 'package:devlingo/src/modules/_template/domain/entities/template_entity.dart';
import 'package:devlingo/src/modules/_template/infrastructure/dtos/template_dto.dart';

/// Maps wire-format DTOs to domain [Template] values.
extension TemplateDtoX on TemplateDto {
  Template toEntity() => Template(
        id: id,
        name: name,
        createdAt: createdAt,
        description: description,
      );
}

/// Maps domain [Template] values back to wire-format DTOs (e.g. before save).
extension TemplateX on Template {
  TemplateDto toDto() => TemplateDto(
        id: id,
        name: name,
        createdAt: createdAt,
        description: description,
      );
}
