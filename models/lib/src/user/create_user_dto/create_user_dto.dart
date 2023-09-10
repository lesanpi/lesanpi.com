import 'package:either_dart/either.dart';
import 'package:exceptions/exceptions.dart';
import 'package:failures/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/src/multimedia/create_multimedia_dto/create_multimedia_dto.dart';
import 'package:models/src/multimedia/multimedia.dart';
import 'package:models/src/serializers/date_time_converter.dart';

part 'create_user_dto.freezed.dart';
part 'create_user_dto.g.dart';

/// {@template create_user_dto}
/// CreateUserDto description
/// {@endtemplate}
@freezed
class CreateUserDto with _$CreateUserDto {
  /// {@macro create_user_dto}
  const factory CreateUserDto({
    required String name,
    required String lastname,
    required String password,
    required String email,
    @DateTimeConverter() required DateTime createdAt,
    @Default(true) bool active,
    @Default(false) bool admin,
    @DateTimeConverterNullable() DateTime? updatedAt,
    CreateMultimediaDto? photo,
  }) = _CreateUserDto;

  /// Creates a CreateUserDto from Json map
  factory CreateUserDto.fromJson(Map<String, dynamic> data) =>
      _$CreateUserDtoFromJson(data);

  /// Validate [CreateUserDto]
  static Either<ValidationFailure, CreateUserDto> validated(
    Map<String, dynamic> json,
  ) {
    try {
      final errors = <String, List<String>>{};
      final name = json['name'] as String? ?? '';
      final lastname = json['lastname'] as String? ?? '';
      final password = json['password'] as String? ?? '';
      final email = json['email'] as String? ?? '';
      final photoValue = json['photo'];
      final photo = CreateMultimediaDto.validated(
        json['photo'] as Map<String, dynamic>? ?? {},
      );
      if (name.isEmpty) {
        errors['name'] = ['Name is required'];
      }
      if (lastname.isEmpty) {
        errors['lastname'] = ['Lastname is required'];
      }
      if (password.isEmpty) {
        errors['password'] = ['Password is required'];
      }
      if (email.isEmpty) {
        errors['email'] = ['Email is required'];
      }
      if (photo.isLeft && photoValue is Map<String, dynamic>) {
        errors['photo'] = [photo.left.message];
      }
      if (errors.isEmpty) return Right(CreateUserDto.fromJson(json));
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
