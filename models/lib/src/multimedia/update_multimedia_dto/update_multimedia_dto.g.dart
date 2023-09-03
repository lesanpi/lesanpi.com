// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_multimedia_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateMultimediaDto _$$_UpdateMultimediaDtoFromJson(
        Map<String, dynamic> json) =>
    _$_UpdateMultimediaDto(
      filename: json['filename'] as String?,
      url: json['url'] as String?,
      type: $enumDecodeNullable(_$MultimediaTypeEnumEnumMap, json['type']),
    );

Map<String, dynamic> _$$_UpdateMultimediaDtoToJson(
        _$_UpdateMultimediaDto instance) =>
    <String, dynamic>{
      'filename': instance.filename,
      'url': instance.url,
      'type': _$MultimediaTypeEnumEnumMap[instance.type],
    };

const _$MultimediaTypeEnumEnumMap = {
  MultimediaTypeEnum.video: 'video',
  MultimediaTypeEnum.image: 'image',
  MultimediaTypeEnum.audio: 'audio',
  MultimediaTypeEnum.url: 'url',
};
