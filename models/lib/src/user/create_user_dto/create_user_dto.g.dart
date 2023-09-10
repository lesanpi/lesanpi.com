// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateUserDto _$$_CreateUserDtoFromJson(Map<String, dynamic> json) =>
    _$_CreateUserDto(
      name: json['name'] as String,
      lastname: json['lastname'] as String,
      password: json['password'] as String,
      email: json['email'] as String,
      createdAt: const DateTimeConverter().fromJson(json['createdAt']),
      active: json['active'] as bool? ?? true,
      admin: json['admin'] as bool? ?? false,
      updatedAt: const DateTimeConverterNullable().fromJson(json['updatedAt']),
      photo: json['photo'] == null
          ? null
          : CreateMultimediaDto.fromJson(json['photo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreateUserDtoToJson(_$_CreateUserDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lastname': instance.lastname,
      'password': instance.password,
      'email': instance.email,
      'createdAt': const DateTimeConverter().toJson(instance.createdAt),
      'active': instance.active,
      'admin': instance.admin,
      'updatedAt': const DateTimeConverterNullable().toJson(instance.updatedAt),
      'photo': instance.photo,
    };
