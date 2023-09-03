import 'package:either_dart/either.dart';
import 'package:exceptions/exceptions.dart';
import 'package:failures/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'login_user_dto.freezed.dart';
part 'login_user_dto.g.dart';

/// {@template login_user_dto}
/// LoginUserDto description
/// {@endtemplate}
@freezed
class LoginUserDto with _$LoginUserDto {
  /// {@macro login_user_dto}
  const factory LoginUserDto({
    required String email,
    required String password,
  }) = _LoginUserDto;

  /// Creates a LoginUserDto from Json map
  factory LoginUserDto.fromJson(Map<String, dynamic> data) =>
      _$LoginUserDtoFromJson(data);

  /// Validate [LoginUserDto]
  static Either<ValidationFailure, LoginUserDto> validated(
    Map<String, dynamic> json,
  ) {
    try {
      final errors = <String, List<String>>{};

      final password = json['password'] as String? ?? '';
      final email = json['email'] as String? ?? '';

      if (password.isEmpty) {
        errors['password'] = ['Password is required'];
      }
      if (password.length < 8) {
        errors['password'] = ['Password must be at least 8 characters'];
      }
      if (email.isEmpty) {
        errors['email'] = ['Email is required'];
      }

      if (errors.isEmpty) return Right(LoginUserDto.fromJson(json));
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
