// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multimedia.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Multimedia _$$_MultimediaFromJson(Map<String, dynamic> json) =>
    _$_Multimedia(
      id: json['_id'] as String,
      filename: json['filename'] as String,
      url: json['url'] as String,
      type: $enumDecode(_$MultimediaTypeEnumEnumMap, json['type']),
    );

Map<String, dynamic> _$$_MultimediaToJson(_$_Multimedia instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'filename': instance.filename,
      'url': instance.url,
      'type': instance.type,
    };

const _$MultimediaTypeEnumEnumMap = {
  MultimediaTypeEnum.video: 'video',
  MultimediaTypeEnum.image: 'image',
  MultimediaTypeEnum.audio: 'audio',
  MultimediaTypeEnum.url: 'url',
};
