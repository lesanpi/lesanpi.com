// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Tag _$$_TagFromJson(Map<String, dynamic> json) => _$_Tag(
      id: json['_id'] as String,
      name: json['name'] as String,
      color: json['color'] as String,
      active: json['active'] as bool? ?? true,
    );

Map<String, dynamic> _$$_TagToJson(_$_Tag instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'color': instance.color,
      'active': instance.active,
    };
