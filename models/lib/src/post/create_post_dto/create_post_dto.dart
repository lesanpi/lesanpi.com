import 'package:either_dart/either.dart';
import 'package:exceptions/exceptions.dart';
import 'package:failures/failures.dart';
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
    @Default(true) bool active,
  }) = _CreatePostDto;

  /// Creates a CreatePostDto from Json map
  factory CreatePostDto.fromJson(Map<String, dynamic> data) =>
      _$CreatePostDtoFromJson(data);

  /// Validate [CreatePostDto]
  static Either<ValidationFailure, CreatePostDto> validated(
    Map<String, dynamic> json,
  ) {
    try {
      final errors = <String, List<String>>{};
      final title = json['title'] as String? ?? '';
      final tags = json['tags'] as List?;
      final cover = CreateMultimediaDto.validated(
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

      if (errors.isEmpty) return Right(CreatePostDto.fromJson(json));
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
