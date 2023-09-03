import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:typedefs/typedefs.dart';

part 'update_post_dto.freezed.dart';
part 'update_post_dto.g.dart';

/// {@template create_post_dto}
/// UpdatePostDto description
/// {@endtemplate}
@freezed
class UpdatePostDto with _$UpdatePostDto {
  /// {@macro create_post_dto}
  const factory UpdatePostDto({
    String? title,
    List<TagId>? tags,
    UserId? user,
    CreateMultimediaDto? cover,
    String? content,
    List<PostSectionEnum>? sections,
  }) = _UpdatePostDto;

  /// Creates a UpdatePostDto from Json map
  factory UpdatePostDto.fromJson(Map<String, dynamic> data) =>
      _$UpdatePostDtoFromJson(data);
}
