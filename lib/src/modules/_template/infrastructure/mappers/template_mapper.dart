import 'package:devlingo/src/modules/_template/domain/entities/template_entity.dart';
import 'package:devlingo/src/modules/_template/infrastructure/dtos/template_dto.dart';

extension TemplateDtoX on TemplateDto {
  Template toEntity() => Template(
    id: id,
    name: name,
    description: description,
    createdAt: createdAt,
  );
}
