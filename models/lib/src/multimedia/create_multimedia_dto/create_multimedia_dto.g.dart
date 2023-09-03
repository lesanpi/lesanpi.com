// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_multimedia_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateMultimediaDto _$$_CreateMultimediaDtoFromJson(
        Map<String, dynamic> json) =>
    _$_CreateMultimediaDto(
      filename: json['filename'] as String,
      url: json['url'] as String,
      type: $enumDecode(_$MultimediaTypeEnumEnumMap, json['type']),
    );

Map<String, dynamic> _$$_CreateMultimediaDtoToJson(
        _$_CreateMultimediaDto instance) =>
    <String, dynamic>{
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
