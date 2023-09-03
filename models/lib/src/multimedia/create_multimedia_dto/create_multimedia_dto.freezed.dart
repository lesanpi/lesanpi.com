// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_multimedia_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateMultimediaDto _$CreateMultimediaDtoFromJson(Map<String, dynamic> json) {
  return _CreateMultimediaDto.fromJson(json);
}

/// @nodoc
mixin _$CreateMultimediaDto {
  String get filename => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  MultimediaTypeEnum get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateMultimediaDtoCopyWith<CreateMultimediaDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMultimediaDtoCopyWith<$Res> {
  factory $CreateMultimediaDtoCopyWith(
          CreateMultimediaDto value, $Res Function(CreateMultimediaDto) then) =
      _$CreateMultimediaDtoCopyWithImpl<$Res, CreateMultimediaDto>;
  @useResult
  $Res call({String filename, String url, MultimediaTypeEnum type});
}

/// @nodoc
class _$CreateMultimediaDtoCopyWithImpl<$Res, $Val extends CreateMultimediaDto>
    implements $CreateMultimediaDtoCopyWith<$Res> {
  _$CreateMultimediaDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
    Object? url = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MultimediaTypeEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateMultimediaDtoCopyWith<$Res>
    implements $CreateMultimediaDtoCopyWith<$Res> {
  factory _$$_CreateMultimediaDtoCopyWith(_$_CreateMultimediaDto value,
          $Res Function(_$_CreateMultimediaDto) then) =
      __$$_CreateMultimediaDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String filename, String url, MultimediaTypeEnum type});
}

/// @nodoc
class __$$_CreateMultimediaDtoCopyWithImpl<$Res>
    extends _$CreateMultimediaDtoCopyWithImpl<$Res, _$_CreateMultimediaDto>
    implements _$$_CreateMultimediaDtoCopyWith<$Res> {
  __$$_CreateMultimediaDtoCopyWithImpl(_$_CreateMultimediaDto _value,
      $Res Function(_$_CreateMultimediaDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
    Object? url = null,
    Object? type = null,
  }) {
    return _then(_$_CreateMultimediaDto(
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MultimediaTypeEnum,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateMultimediaDto implements _CreateMultimediaDto {
  const _$_CreateMultimediaDto(
      {required this.filename, required this.url, required this.type});

  factory _$_CreateMultimediaDto.fromJson(Map<String, dynamic> json) =>
      _$$_CreateMultimediaDtoFromJson(json);

  @override
  final String filename;
  @override
  final String url;
  @override
  final MultimediaTypeEnum type;

  @override
  String toString() {
    return 'CreateMultimediaDto(filename: $filename, url: $url, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateMultimediaDto &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, filename, url, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateMultimediaDtoCopyWith<_$_CreateMultimediaDto> get copyWith =>
      __$$_CreateMultimediaDtoCopyWithImpl<_$_CreateMultimediaDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateMultimediaDtoToJson(
      this,
    );
  }
}

abstract class _CreateMultimediaDto implements CreateMultimediaDto {
  const factory _CreateMultimediaDto(
      {required final String filename,
      required final String url,
      required final MultimediaTypeEnum type}) = _$_CreateMultimediaDto;

  factory _CreateMultimediaDto.fromJson(Map<String, dynamic> json) =
      _$_CreateMultimediaDto.fromJson;

  @override
  String get filename;
  @override
  String get url;
  @override
  MultimediaTypeEnum get type;
  @override
  @JsonKey(ignore: true)
  _$$_CreateMultimediaDtoCopyWith<_$_CreateMultimediaDto> get copyWith =>
      throw _privateConstructorUsedError;
}
