// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      lastname: json['lastname'] as String,
      photo: Multimedia.fromJson(json['photo'] as Map<String, dynamic>),
      createdAt: const DateTimeConverter().fromJson(json['createdAt']),
      updatedAt: const DateTimeConverterNullable().fromJson(json['updatedAt']),
      active: json['active'] as bool? ?? true,
      admin: json['admin'] as bool? ?? false,
      emailConfirmed: json['emailConfirmed'] as bool? ?? false,
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'lastname': instance.lastname,
      'photo': instance.photo,
      'createdAt': const DateTimeConverter().toJson(instance.createdAt),
      'updatedAt': const DateTimeConverterNullable().toJson(instance.updatedAt),
      'active': instance.active,
      'admin': instance.admin,
      'emailConfirmed': instance.emailConfirmed,
    };
