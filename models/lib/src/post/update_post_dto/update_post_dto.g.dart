// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_post_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdatePostDto _$$_UpdatePostDtoFromJson(Map<String, dynamic> json) =>
    _$_UpdatePostDto(
      title: json['title'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      user: json['user'] as String?,
      cover: json['cover'] == null
          ? null
          : CreateMultimediaDto.fromJson(json['cover'] as Map<String, dynamic>),
      content: json['content'] as String?,
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PostSectionEnumEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$_UpdatePostDtoToJson(_$_UpdatePostDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('tags', instance.tags);
  writeNotNull('user', instance.user);
  writeNotNull('cover', instance.cover);
  writeNotNull('content', instance.content);
  writeNotNull('sections',
      instance.sections?.map((e) => _$PostSectionEnumEnumMap[e]!).toList());
  return val;
}

const _$PostSectionEnumEnumMap = {
  PostSectionEnum.featured: 'featured',
  PostSectionEnum.video: 'video',
  PostSectionEnum.tutorial: 'tutorial',
  PostSectionEnum.tip: 'tip',
};
