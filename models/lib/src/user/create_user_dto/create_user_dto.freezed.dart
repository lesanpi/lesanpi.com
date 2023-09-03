// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateUserDto _$CreateUserDtoFromJson(Map<String, dynamic> json) {
  return _CreateUserDto.fromJson(json);
}

/// @nodoc
mixin _$CreateUserDto {
  String get name => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  CreateMultimediaDto? get photo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateUserDtoCopyWith<CreateUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserDtoCopyWith<$Res> {
  factory $CreateUserDtoCopyWith(
          CreateUserDto value, $Res Function(CreateUserDto) then) =
      _$CreateUserDtoCopyWithImpl<$Res, CreateUserDto>;
  @useResult
  $Res call(
      {String name,
      String lastname,
      String password,
      String email,
      CreateMultimediaDto? photo});

  $CreateMultimediaDtoCopyWith<$Res>? get photo;
}

/// @nodoc
class _$CreateUserDtoCopyWithImpl<$Res, $Val extends CreateUserDto>
    implements $CreateUserDtoCopyWith<$Res> {
  _$CreateUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? lastname = null,
    Object? password = null,
    Object? email = null,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as CreateMultimediaDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateMultimediaDtoCopyWith<$Res>? get photo {
    if (_value.photo == null) {
      return null;
    }

    return $CreateMultimediaDtoCopyWith<$Res>(_value.photo!, (value) {
      return _then(_value.copyWith(photo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreateUserDtoCopyWith<$Res>
    implements $CreateUserDtoCopyWith<$Res> {
  factory _$$_CreateUserDtoCopyWith(
          _$_CreateUserDto value, $Res Function(_$_CreateUserDto) then) =
      __$$_CreateUserDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String lastname,
      String password,
      String email,
      CreateMultimediaDto? photo});

  @override
  $CreateMultimediaDtoCopyWith<$Res>? get photo;
}

/// @nodoc
class __$$_CreateUserDtoCopyWithImpl<$Res>
    extends _$CreateUserDtoCopyWithImpl<$Res, _$_CreateUserDto>
    implements _$$_CreateUserDtoCopyWith<$Res> {
  __$$_CreateUserDtoCopyWithImpl(
      _$_CreateUserDto _value, $Res Function(_$_CreateUserDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? lastname = null,
    Object? password = null,
    Object? email = null,
    Object? photo = freezed,
  }) {
    return _then(_$_CreateUserDto(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as CreateMultimediaDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateUserDto implements _CreateUserDto {
  const _$_CreateUserDto(
      {required this.name,
      required this.lastname,
      required this.password,
      required this.email,
      this.photo});

  factory _$_CreateUserDto.fromJson(Map<String, dynamic> json) =>
      _$$_CreateUserDtoFromJson(json);

  @override
  final String name;
  @override
  final String lastname;
  @override
  final String password;
  @override
  final String email;
  @override
  final CreateMultimediaDto? photo;

  @override
  String toString() {
    return 'CreateUserDto(name: $name, lastname: $lastname, password: $password, email: $email, photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateUserDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, lastname, password, email, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateUserDtoCopyWith<_$_CreateUserDto> get copyWith =>
      __$$_CreateUserDtoCopyWithImpl<_$_CreateUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateUserDtoToJson(
      this,
    );
  }
}

abstract class _CreateUserDto implements CreateUserDto {
  const factory _CreateUserDto(
      {required final String name,
      required final String lastname,
      required final String password,
      required final String email,
      final CreateMultimediaDto? photo}) = _$_CreateUserDto;

  factory _CreateUserDto.fromJson(Map<String, dynamic> json) =
      _$_CreateUserDto.fromJson;

  @override
  String get name;
  @override
  String get lastname;
  @override
  String get password;
  @override
  String get email;
  @override
  CreateMultimediaDto? get photo;
  @override
  @JsonKey(ignore: true)
  _$$_CreateUserDtoCopyWith<_$_CreateUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
