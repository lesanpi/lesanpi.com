// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_tag_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateTagDto _$CreateTagDtoFromJson(Map<String, dynamic> json) {
  return _CreateTagDto.fromJson(json);
}

/// @nodoc
mixin _$CreateTagDto {
  String get name => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateTagDtoCopyWith<CreateTagDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTagDtoCopyWith<$Res> {
  factory $CreateTagDtoCopyWith(
          CreateTagDto value, $Res Function(CreateTagDto) then) =
      _$CreateTagDtoCopyWithImpl<$Res, CreateTagDto>;
  @useResult
  $Res call({String name, String color, bool active});
}

/// @nodoc
class _$CreateTagDtoCopyWithImpl<$Res, $Val extends CreateTagDto>
    implements $CreateTagDtoCopyWith<$Res> {
  _$CreateTagDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? color = null,
    Object? active = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateTagDtoCopyWith<$Res>
    implements $CreateTagDtoCopyWith<$Res> {
  factory _$$_CreateTagDtoCopyWith(
          _$_CreateTagDto value, $Res Function(_$_CreateTagDto) then) =
      __$$_CreateTagDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String color, bool active});
}

/// @nodoc
class __$$_CreateTagDtoCopyWithImpl<$Res>
    extends _$CreateTagDtoCopyWithImpl<$Res, _$_CreateTagDto>
    implements _$$_CreateTagDtoCopyWith<$Res> {
  __$$_CreateTagDtoCopyWithImpl(
      _$_CreateTagDto _value, $Res Function(_$_CreateTagDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? color = null,
    Object? active = null,
  }) {
    return _then(_$_CreateTagDto(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateTagDto implements _CreateTagDto {
  const _$_CreateTagDto(
      {required this.name, required this.color, this.active = true});

  factory _$_CreateTagDto.fromJson(Map<String, dynamic> json) =>
      _$$_CreateTagDtoFromJson(json);

  @override
  final String name;
  @override
  final String color;
  @override
  @JsonKey()
  final bool active;

  @override
  String toString() {
    return 'CreateTagDto(name: $name, color: $color, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateTagDto &&
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
  _$$_CreateTagDtoCopyWith<_$_CreateTagDto> get copyWith =>
      __$$_CreateTagDtoCopyWithImpl<_$_CreateTagDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateTagDtoToJson(
      this,
    );
  }
}

abstract class _CreateTagDto implements CreateTagDto {
  const factory _CreateTagDto(
      {required final String name,
      required final String color,
      final bool active}) = _$_CreateTagDto;

  factory _CreateTagDto.fromJson(Map<String, dynamic> json) =
      _$_CreateTagDto.fromJson;

  @override
  String get name;
  @override
  String get color;
  @override
  bool get active;
  @override
  @JsonKey(ignore: true)
  _$$_CreateTagDtoCopyWith<_$_CreateTagDto> get copyWith =>
      throw _privateConstructorUsedError;
}
