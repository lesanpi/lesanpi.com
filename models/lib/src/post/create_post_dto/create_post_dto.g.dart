// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_post_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreatePostDto _$$_CreatePostDtoFromJson(Map<String, dynamic> json) =>
    _$_CreatePostDto(
      title: json['title'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      user: json['user'] as String,
      cover:
          CreateMultimediaDto.fromJson(json['cover'] as Map<String, dynamic>),
      content: json['content'] as String,
      sections: (json['sections'] as List<dynamic>)
          .map((e) => $enumDecode(_$PostSectionEnumEnumMap, e))
          .toList(),
      active: json['active'] as bool? ?? true,
    );

Map<String, dynamic> _$$_CreatePostDtoToJson(_$_CreatePostDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'tags': instance.tags,
      'user': instance.user,
      'cover': instance.cover,
      'content': instance.content,
      'sections': instance.sections,
      'active': instance.active,
    };

const _$PostSectionEnumEnumMap = {
  PostSectionEnum.featured: 'featured',
  PostSectionEnum.video: 'video',
  PostSectionEnum.tutorial: 'tutorial',
  PostSectionEnum.tip: 'tip',
};
