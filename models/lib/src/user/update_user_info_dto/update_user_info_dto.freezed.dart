// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateUserInfoDto _$UpdateUserInfoDtoFromJson(Map<String, dynamic> json) {
  return _UpdateUserInfoDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserInfoDto {
  @JsonKey(includeIfNull: false)
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get lastname => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  UpdateMultimediaDto? get photo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUserInfoDtoCopyWith<UpdateUserInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserInfoDtoCopyWith<$Res> {
  factory $UpdateUserInfoDtoCopyWith(
          UpdateUserInfoDto value, $Res Function(UpdateUserInfoDto) then) =
      _$UpdateUserInfoDtoCopyWithImpl<$Res, UpdateUserInfoDto>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? name,
      @JsonKey(includeIfNull: false) String? lastname,
      @JsonKey(includeIfNull: false) UpdateMultimediaDto? photo});

  $UpdateMultimediaDtoCopyWith<$Res>? get photo;
}

/// @nodoc
class _$UpdateUserInfoDtoCopyWithImpl<$Res, $Val extends UpdateUserInfoDto>
    implements $UpdateUserInfoDtoCopyWith<$Res> {
  _$UpdateUserInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? lastname = freezed,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as UpdateMultimediaDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdateMultimediaDtoCopyWith<$Res>? get photo {
    if (_value.photo == null) {
      return null;
    }

    return $UpdateMultimediaDtoCopyWith<$Res>(_value.photo!, (value) {
      return _then(_value.copyWith(photo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UpdateUserInfoDtoCopyWith<$Res>
    implements $UpdateUserInfoDtoCopyWith<$Res> {
  factory _$$_UpdateUserInfoDtoCopyWith(_$_UpdateUserInfoDto value,
          $Res Function(_$_UpdateUserInfoDto) then) =
      __$$_UpdateUserInfoDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? name,
      @JsonKey(includeIfNull: false) String? lastname,
      @JsonKey(includeIfNull: false) UpdateMultimediaDto? photo});

  @override
  $UpdateMultimediaDtoCopyWith<$Res>? get photo;
}

/// @nodoc
class __$$_UpdateUserInfoDtoCopyWithImpl<$Res>
    extends _$UpdateUserInfoDtoCopyWithImpl<$Res, _$_UpdateUserInfoDto>
    implements _$$_UpdateUserInfoDtoCopyWith<$Res> {
  __$$_UpdateUserInfoDtoCopyWithImpl(
      _$_UpdateUserInfoDto _value, $Res Function(_$_UpdateUserInfoDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? lastname = freezed,
    Object? photo = freezed,
  }) {
    return _then(_$_UpdateUserInfoDto(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as UpdateMultimediaDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateUserInfoDto implements _UpdateUserInfoDto {
  const _$_UpdateUserInfoDto(
      {@JsonKey(includeIfNull: false) this.name,
      @JsonKey(includeIfNull: false) this.lastname,
      @JsonKey(includeIfNull: false) this.photo});

  factory _$_UpdateUserInfoDto.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateUserInfoDtoFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final String? name;
  @override
  @JsonKey(includeIfNull: false)
  final String? lastname;
  @override
  @JsonKey(includeIfNull: false)
  final UpdateMultimediaDto? photo;

  @override
  String toString() {
    return 'UpdateUserInfoDto(name: $name, lastname: $lastname, photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateUserInfoDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, lastname, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateUserInfoDtoCopyWith<_$_UpdateUserInfoDto> get copyWith =>
      __$$_UpdateUserInfoDtoCopyWithImpl<_$_UpdateUserInfoDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateUserInfoDtoToJson(
      this,
    );
  }
}

abstract class _UpdateUserInfoDto implements UpdateUserInfoDto {
  const factory _UpdateUserInfoDto(
          {@JsonKey(includeIfNull: false) final String? name,
          @JsonKey(includeIfNull: false) final String? lastname,
          @JsonKey(includeIfNull: false) final UpdateMultimediaDto? photo}) =
      _$_UpdateUserInfoDto;

  factory _UpdateUserInfoDto.fromJson(Map<String, dynamic> json) =
      _$_UpdateUserInfoDto.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  String? get name;
  @override
  @JsonKey(includeIfNull: false)
  String? get lastname;
  @override
  @JsonKey(includeIfNull: false)
  UpdateMultimediaDto? get photo;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateUserInfoDtoCopyWith<_$_UpdateUserInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}
