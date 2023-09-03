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
}
