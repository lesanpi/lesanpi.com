// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_tag_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateTagDto _$$_UpdateTagDtoFromJson(Map<String, dynamic> json) =>
    _$_UpdateTagDto(
      name: json['name'] as String?,
      color: json['color'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$_UpdateTagDtoToJson(_$_UpdateTagDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('color', instance.color);
  writeNotNull('active', instance.active);
  return val;
}
