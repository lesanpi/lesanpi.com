import 'package:either_dart/either.dart';
import 'package:exceptions/exceptions.dart';
import 'package:failures/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'update_user_info_dto.freezed.dart';
part 'update_user_info_dto.g.dart';

/// {@template update_user_dto}
/// UpdateUserDto description
/// {@endtemplate}
@freezed
class UpdateUserInfoDto with _$UpdateUserInfoDto {
  /// {@macro update_user_dto}
  const factory UpdateUserInfoDto({
    @JsonKey(includeIfNull: false) String? name,
    @JsonKey(includeIfNull: false) String? lastname,
    @JsonKey(includeIfNull: false) UpdateMultimediaDto? photo,
  }) = _UpdateUserInfoDto;

  /// Creates a UpdateUserDto from Json map
  factory UpdateUserInfoDto.fromJson(Map<String, dynamic> data) =>
      _$UpdateUserInfoDtoFromJson(data);

  /// Validate [UpdateUserInfoDto]
  static Either<ValidationFailure, UpdateUserInfoDto> validated(
    Map<String, dynamic> json,
  ) {
    try {
      final errors = <String, List<String>>{};
      final name = json['name'] as String? ?? '';
      final lastname = json['lastname'] as String? ?? '';
      final photo = CreateMultimediaDto.validated(
        json['photo'] as Map<String, dynamic>? ?? {},
      );

      if (name.isEmpty) {
        errors['name'] = ['Name is required'];
      }
      if (lastname.isEmpty) {
        errors['lastname'] = ['Lastname is required'];
      }
      if (photo.isLeft) {
        errors['photo'] = [photo.left.message];
      }
      if (json.values.any((element) => element != null || element != '') &&
          json.isNotEmpty) {
        return Right(UpdateUserInfoDto.fromJson(json));
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
