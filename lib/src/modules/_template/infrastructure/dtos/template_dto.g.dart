// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TemplateDtoImpl _$$TemplateDtoImplFromJson(Map<String, dynamic> json) =>
    _$TemplateDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$TemplateDtoImplToJson(_$TemplateDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'createdAt': instance.createdAt.toIso8601String(),
      'description': instance.description,
    };
