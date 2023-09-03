import 'package:freezed_annotation/freezed_annotation.dart';

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
}
