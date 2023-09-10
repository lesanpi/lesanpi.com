// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_tag_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateTagDto _$UpdateTagDtoFromJson(Map<String, dynamic> json) {
  return _UpdateTagDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateTagDto {
  @JsonKey(includeIfNull: false)
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  bool? get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateTagDtoCopyWith<UpdateTagDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTagDtoCopyWith<$Res> {
  factory $UpdateTagDtoCopyWith(
          UpdateTagDto value, $Res Function(UpdateTagDto) then) =
      _$UpdateTagDtoCopyWithImpl<$Res, UpdateTagDto>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? name,
      @JsonKey(includeIfNull: false) String? color,
      @JsonKey(includeIfNull: false) bool? active});
}

/// @nodoc
class _$UpdateTagDtoCopyWithImpl<$Res, $Val extends UpdateTagDto>
    implements $UpdateTagDtoCopyWith<$Res> {
  _$UpdateTagDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? color = freezed,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateTagDtoCopyWith<$Res>
    implements $UpdateTagDtoCopyWith<$Res> {
  factory _$$_UpdateTagDtoCopyWith(
          _$_UpdateTagDto value, $Res Function(_$_UpdateTagDto) then) =
      __$$_UpdateTagDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? name,
      @JsonKey(includeIfNull: false) String? color,
      @JsonKey(includeIfNull: false) bool? active});
}

/// @nodoc
class __$$_UpdateTagDtoCopyWithImpl<$Res>
    extends _$UpdateTagDtoCopyWithImpl<$Res, _$_UpdateTagDto>
    implements _$$_UpdateTagDtoCopyWith<$Res> {
  __$$_UpdateTagDtoCopyWithImpl(
      _$_UpdateTagDto _value, $Res Function(_$_UpdateTagDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? color = freezed,
    Object? active = freezed,
  }) {
    return _then(_$_UpdateTagDto(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateTagDto implements _UpdateTagDto {
  const _$_UpdateTagDto(
      {@JsonKey(includeIfNull: false) this.name,
      @JsonKey(includeIfNull: false) this.color,
      @JsonKey(includeIfNull: false) this.active});

  factory _$_UpdateTagDto.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateTagDtoFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final String? name;
  @override
  @JsonKey(includeIfNull: false)
  final String? color;
  @override
  @JsonKey(includeIfNull: false)
  final bool? active;

  @override
  String toString() {
    return 'UpdateTagDto(name: $name, color: $color, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateTagDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, color, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateTagDtoCopyWith<_$_UpdateTagDto> get copyWith =>
      __$$_UpdateTagDtoCopyWithImpl<_$_UpdateTagDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateTagDtoToJson(
      this,
    );
  }
}

abstract class _UpdateTagDto implements UpdateTagDto {
  const factory _UpdateTagDto(
      {@JsonKey(includeIfNull: false) final String? name,
      @JsonKey(includeIfNull: false) final String? color,
      @JsonKey(includeIfNull: false) final bool? active}) = _$_UpdateTagDto;

  factory _UpdateTagDto.fromJson(Map<String, dynamic> json) =
      _$_UpdateTagDto.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  String? get name;
  @override
  @JsonKey(includeIfNull: false)
  String? get color;
  @override
  @JsonKey(includeIfNull: false)
  bool? get active;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateTagDtoCopyWith<_$_UpdateTagDto> get copyWith =>
      throw _privateConstructorUsedError;
}
