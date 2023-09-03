import 'package:either_dart/either.dart';
import 'package:exceptions/exceptions.dart';
import 'package:failures/failures.dart';
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

  /// Validate [UpdatePostDto]
  static Either<ValidationFailure, UpdatePostDto> validated(
    Map<String, dynamic> json,
  ) {
    try {
      final errors = <String, List<String>>{};
      final title = json['title'] as String? ?? '';
      final tags = json['tags'] as List?;
      final cover = UpdateMultimediaDto.validated(
        json['cover'] as Map<String, dynamic>? ?? {},
      );
      final content = json['content'] as String? ?? '';
      final sections = json['sections'] as List?;
      if (title.isEmpty) {
        errors['title'] = ['Title is required'];
      }
      if (tags == null || tags.isEmpty) {
        errors['tags'] = ['Tags is required'];
      }
      if (cover.isLeft) {
        errors['cover'] = [cover.left.message];
      }
      if (content.isEmpty) {
        errors['content'] = ['Content is required'];
      }
      if (sections == null || sections.isEmpty) {
        errors['sections'] = ['Sections is required'];
      }

      if (json.values.any((element) => element != null || element != '') &&
          json.isNotEmpty) {
        return Right(UpdatePostDto.fromJson(json));
      }
      throw BadRequestException(
        message: 'Validation failed',
        errors: errors,
      );
    } on BadRequestException catch (e) {
      return Left(
        ValidationFailure(
          message: e.message,
          statusCode: e.statusCode,
          errors: e.errors,
        ),
      );
    } on Exception {
      return const Left(
        ValidationFailure(
          message: 'Validation failed',
        ),
      );
    }
  }
}
