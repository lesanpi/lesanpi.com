import 'package:either_dart/either.dart';
import 'package:exceptions/exceptions.dart';
import 'package:failures/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'update_multimedia_dto.freezed.dart';
part 'update_multimedia_dto.g.dart';

/// {@template update_multimedia_dto}
/// UpdateMultimediaDto description
/// {@endtemplate}
@freezed
class UpdateMultimediaDto with _$UpdateMultimediaDto {
  /// {@macro update_multimedia_dto}
  const factory UpdateMultimediaDto({
    String? filename,
    String? url,
    @JsonKey(includeIfNull: false) MultimediaTypeEnum? type,
  }) = _UpdateMultimediaDto;

  /// Creates a UpdateMultimediaDto from Json map
  factory UpdateMultimediaDto.fromJson(Map<String, dynamic> data) =>
      _$UpdateMultimediaDtoFromJson(data);

  /// Validate [UpdateMultimediaDto]
  static Either<ValidationFailure, UpdateMultimediaDto> validated(
    Map<String, dynamic> json,
  ) {
    try {
      final errors = <String, List<String>>{};
      final filename = json['filename'] as String? ?? '';
      final url = json['url'] as String? ?? '';
      final type = MultimediaTypeEnum.fromJson(json['type']);

      if (filename.isEmpty) {
        errors['filename'] = ['Title is required'];
      }
      if (url.isEmpty) {
        errors['url'] = ['Url is required'];
      }
      if (type == null) {
        errors['type'] = ['Type is required'];
      }
      if (json.values.any((element) => element != null || element != '') &&
          json.isNotEmpty) {
        return Right(UpdateMultimediaDto.fromJson(json));
      }
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
