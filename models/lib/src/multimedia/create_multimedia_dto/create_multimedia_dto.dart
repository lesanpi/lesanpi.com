import 'package:either_dart/either.dart';
import 'package:exceptions/exceptions.dart';
import 'package:failures/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'create_multimedia_dto.freezed.dart';
part 'create_multimedia_dto.g.dart';

/// {@template create_multimedia_dto}
/// CreateMultimediaDto description
/// {@endtemplate}
@freezed
class CreateMultimediaDto with _$CreateMultimediaDto {
  /// {@macro create_multimedia_dto}
  const factory CreateMultimediaDto({
    required String filename,
    required String url,
    required MultimediaTypeEnum type,
  }) = _CreateMultimediaDto;

  /// Creates a CreateMultimediaDto from Json map
  factory CreateMultimediaDto.fromJson(Map<String, dynamic> data) =>
      _$CreateMultimediaDtoFromJson(data);

  /// Validate [CreateMultimediaDto]
  static Either<ValidationFailure, CreateMultimediaDto> validated(
    Map<String, dynamic> json,
  ) {
    try {
      final errors = <String, List<String>>{};
      final filename = json['filename'] as String? ?? '';
      final url = json['url'] as String? ?? '';
      final type = MultimediaTypeEnum.fromJson(json['type']);

      if (filename.isEmpty) {
        errors['filename'] = ['Filename is required'];
      }
      if (url.isEmpty) {
        errors['url'] = ['Url is required'];
      }
      if (type == null) {
        errors['type'] = ['Type is required'];
      }
      if (errors.isEmpty) return Right(CreateMultimediaDto.fromJson(json));
      throw BadRequestException(
        message: 'Validation failed',
        errors: errors,
      );
    } on ValidationFailure catch (e) {
      return Left(
        ValidationFailure(
          message: e.message,
          errors: e.errors,
          statusCode: e.statusCode,
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
