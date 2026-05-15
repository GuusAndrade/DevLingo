import 'package:freezed_annotation/freezed_annotation.dart';

part 'template_entity.freezed.dart';

/// Reference entity for the `_template/` module.
///
/// Real features should mirror this shape: a single non-sealed `@freezed`
/// class living in `domain/entities/`, exposing only domain-level data.
@freezed
class Template with _$Template {
  const factory Template({
    required String id,
    required String name,
    required DateTime createdAt,
    String? description,
  }) = _Template;
}
