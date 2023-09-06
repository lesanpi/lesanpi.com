// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_tag_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateTagDto _$$_CreateTagDtoFromJson(Map<String, dynamic> json) =>
    _$_CreateTagDto(
      name: json['name'] as String,
      color: json['color'] as String,
      active: json['active'] as bool? ?? true,
    );

Map<String, dynamic> _$$_CreateTagDtoToJson(_$_CreateTagDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'color': instance.color,
      'active': instance.active,
    };
