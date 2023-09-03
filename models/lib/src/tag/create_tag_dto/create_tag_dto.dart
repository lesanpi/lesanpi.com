import 'package:either_dart/either.dart';
import 'package:exceptions/exceptions.dart';
import 'package:failures/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'create_tag_dto.freezed.dart';
part 'create_tag_dto.g.dart';

/// {@template create_tag_dto}
/// CreateTagDto description
/// {@endtemplate}
@freezed
class CreateTagDto with _$CreateTagDto {
  /// {@macro create_tag_dto}
  const factory CreateTagDto({
    required String name,
    required String color,
  }) = _CreateTagDto;

  /// Creates a CreateTagDto from Json map
  factory CreateTagDto.fromJson(Map<String, dynamic> data) =>
      _$CreateTagDtoFromJson(data);

  /// Validate [CreateTagDto]
  static Either<ValidationFailure, CreateTagDto> validated(
    Map<String, dynamic> json,
  ) {
    try {
      final errors = <String, List<String>>{};

      final name = json['name'] as String? ?? '';
      final color = json['color'] as String? ?? '';

      if (name.isEmpty) {
        errors['name'] = ['Name is required'];
      }

      if (color.isEmpty) {
        errors['color'] = ['Color is required'];
      }

      if (errors.isEmpty) return Right(CreateTagDto.fromJson(json));
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
