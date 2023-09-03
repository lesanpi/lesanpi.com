import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:typedefs/typedefs.dart';

part 'create_post_dto.freezed.dart';
part 'create_post_dto.g.dart';

/// {@template create_post_dto}
/// CreatePostDto description
/// {@endtemplate}
@freezed
class CreatePostDto with _$CreatePostDto {
  /// {@macro create_post_dto}
  const factory CreatePostDto({
    required String title,
    required List<TagId> tags,
    required UserId user,
    required CreateMultimediaDto cover,
    required String content,
    required List<PostSectionEnum> sections,
  }) = _CreatePostDto;

  /// Creates a CreatePostDto from Json map
  factory CreatePostDto.fromJson(Map<String, dynamic> data) =>
      _$CreatePostDtoFromJson(data);
}
