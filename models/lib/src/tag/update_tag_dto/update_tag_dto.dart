import 'package:either_dart/either.dart';
import 'package:exceptions/exceptions.dart';
import 'package:failures/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/src/tag/create_tag_dto/create_tag_dto.dart';

part 'update_tag_dto.freezed.dart';
part 'update_tag_dto.g.dart';

/// {@template update_tag_dto}
/// UpdateTagDto description
/// {@endtemplate}
@freezed
class UpdateTagDto with _$UpdateTagDto {
  /// {@macro update_tag_dto}
  const factory UpdateTagDto({
    String? name,
    String? color,
  }) = _UpdateTagDto;

  /// Creates a UpdateTagDto from Json map
  factory UpdateTagDto.fromJson(Map<String, dynamic> data) =>
      _$UpdateTagDtoFromJson(data);

  /// Validate [UpdateTagDto]
  static Either<ValidationFailure, UpdateTagDto> validated(
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
      if (json.values.any((element) => element != null || element != '') &&
          json.isNotEmpty) {
        return Right(UpdateTagDto.fromJson(json));
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
