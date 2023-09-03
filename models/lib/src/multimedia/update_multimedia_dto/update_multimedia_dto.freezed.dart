// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_multimedia_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateMultimediaDto _$UpdateMultimediaDtoFromJson(Map<String, dynamic> json) {
  return _UpdateMultimediaDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateMultimediaDto {
  String? get filename => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  MultimediaTypeEnum? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateMultimediaDtoCopyWith<UpdateMultimediaDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateMultimediaDtoCopyWith<$Res> {
  factory $UpdateMultimediaDtoCopyWith(
          UpdateMultimediaDto value, $Res Function(UpdateMultimediaDto) then) =
      _$UpdateMultimediaDtoCopyWithImpl<$Res, UpdateMultimediaDto>;
  @useResult
  $Res call(
      {String? filename,
      String? url,
      @JsonKey(includeIfNull: false) MultimediaTypeEnum? type});
}

/// @nodoc
class _$UpdateMultimediaDtoCopyWithImpl<$Res, $Val extends UpdateMultimediaDto>
    implements $UpdateMultimediaDtoCopyWith<$Res> {
  _$UpdateMultimediaDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = freezed,
    Object? url = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MultimediaTypeEnum?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateMultimediaDtoCopyWith<$Res>
    implements $UpdateMultimediaDtoCopyWith<$Res> {
  factory _$$_UpdateMultimediaDtoCopyWith(_$_UpdateMultimediaDto value,
          $Res Function(_$_UpdateMultimediaDto) then) =
      __$$_UpdateMultimediaDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? filename,
      String? url,
      @JsonKey(includeIfNull: false) MultimediaTypeEnum? type});
}

/// @nodoc
class __$$_UpdateMultimediaDtoCopyWithImpl<$Res>
    extends _$UpdateMultimediaDtoCopyWithImpl<$Res, _$_UpdateMultimediaDto>
    implements _$$_UpdateMultimediaDtoCopyWith<$Res> {
  __$$_UpdateMultimediaDtoCopyWithImpl(_$_UpdateMultimediaDto _value,
      $Res Function(_$_UpdateMultimediaDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = freezed,
    Object? url = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_UpdateMultimediaDto(
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MultimediaTypeEnum?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateMultimediaDto implements _UpdateMultimediaDto {
  const _$_UpdateMultimediaDto(
      {this.filename, this.url, @JsonKey(includeIfNull: false) this.type});

  factory _$_UpdateMultimediaDto.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateMultimediaDtoFromJson(json);

  @override
  final String? filename;
  @override
  final String? url;
  @override
  @JsonKey(includeIfNull: false)
  final MultimediaTypeEnum? type;

  @override
  String toString() {
    return 'UpdateMultimediaDto(filename: $filename, url: $url, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateMultimediaDto &&
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
  _$$_UpdateMultimediaDtoCopyWith<_$_UpdateMultimediaDto> get copyWith =>
      __$$_UpdateMultimediaDtoCopyWithImpl<_$_UpdateMultimediaDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateMultimediaDtoToJson(
      this,
    );
  }
}

abstract class _UpdateMultimediaDto implements UpdateMultimediaDto {
  const factory _UpdateMultimediaDto(
          {final String? filename,
          final String? url,
          @JsonKey(includeIfNull: false) final MultimediaTypeEnum? type}) =
      _$_UpdateMultimediaDto;

  factory _UpdateMultimediaDto.fromJson(Map<String, dynamic> json) =
      _$_UpdateMultimediaDto.fromJson;

  @override
  String? get filename;
  @override
  String? get url;
  @override
  @JsonKey(includeIfNull: false)
  MultimediaTypeEnum? get type;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateMultimediaDtoCopyWith<_$_UpdateMultimediaDto> get copyWith =>
      throw _privateConstructorUsedError;
}
