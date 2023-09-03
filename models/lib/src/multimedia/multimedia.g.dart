// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multimedia.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Multimedia _$$_MultimediaFromJson(Map<String, dynamic> json) =>
    _$_Multimedia(
      id: json['id'] as String,
      filename: json['filename'] as String,
      url: json['url'] as String,
      type: $enumDecode(_$MultimediaTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_MultimediaToJson(_$_Multimedia instance) =>
    <String, dynamic>{
      'id': instance.id,
      'filename': instance.filename,
      'url': instance.url,
      'type': _$MultimediaTypeEnumMap[instance.type],
    };

const _$MultimediaTypeEnumMap = {
  MultimediaType.video: 'video',
  MultimediaType.image: 'image',
  MultimediaType.audio: 'audio',
  MultimediaType.url: 'url',
};
