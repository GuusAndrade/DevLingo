import 'package:freezed_annotation/freezed_annotation.dart';

part 'template_dto.freezed.dart';
part 'template_dto.g.dart';

/// Wire format for `_template/` persistence / API payloads.
///
/// Not a domain model — convert to `Template` using the mapper extension
/// (`toEntity` on this type).
@freezed
class TemplateDto with _$TemplateDto {
  const factory TemplateDto({
    required String id,
    required String name,
    required DateTime createdAt,
    String? description,
  }) = _TemplateDto;

  factory TemplateDto.fromJson(Map<String, dynamic> json) =>
      _$TemplateDtoFromJson(json);
}
