import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/src/multimedia/create_multimedia_dto/create_multimedia_dto.dart';
import 'package:models/src/multimedia/multimedia.dart';

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
    CreateMultimediaDto? photo,
  }) = _CreateUserDto;

  /// Creates a CreateUserDto from Json map
  factory CreateUserDto.fromJson(Map<String, dynamic> data) =>
      _$CreateUserDtoFromJson(data);
}
