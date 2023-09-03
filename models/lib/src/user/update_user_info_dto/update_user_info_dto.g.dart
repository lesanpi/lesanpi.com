// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateUserInfoDto _$$_UpdateUserInfoDtoFromJson(Map<String, dynamic> json) =>
    _$_UpdateUserInfoDto(
      name: json['name'] as String?,
      lastname: json['lastname'] as String?,
      photo: json['photo'] == null
          ? null
          : UpdateMultimediaDto.fromJson(json['photo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UpdateUserInfoDtoToJson(
  _$_UpdateUserInfoDto instance,
) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('lastname', instance.lastname);
  writeNotNull('photo', instance.photo);
  return val;
}
