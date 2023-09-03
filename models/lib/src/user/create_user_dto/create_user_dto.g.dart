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
    );

Map<String, dynamic> _$$_CreateUserDtoToJson(_$_CreateUserDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lastname': instance.lastname,
      'password': instance.password,
      'email': instance.email,
    };
