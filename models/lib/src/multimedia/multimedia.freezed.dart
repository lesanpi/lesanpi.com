// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multimedia.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Multimedia _$MultimediaFromJson(Map<String, dynamic> json) {
  return _Multimedia.fromJson(json);
}

/// @nodoc
mixin _$Multimedia {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get filename => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  MultimediaTypeEnum get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MultimediaCopyWith<Multimedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultimediaCopyWith<$Res> {
  factory $MultimediaCopyWith(
          Multimedia value, $Res Function(Multimedia) then) =
      _$MultimediaCopyWithImpl<$Res, Multimedia>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String filename,
      String url,
      MultimediaTypeEnum type});
}

/// @nodoc
class _$MultimediaCopyWithImpl<$Res, $Val extends Multimedia>
    implements $MultimediaCopyWith<$Res> {
  _$MultimediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? filename = null,
    Object? url = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_MultimediaCopyWith<$Res>
    implements $MultimediaCopyWith<$Res> {
  factory _$$_MultimediaCopyWith(
          _$_Multimedia value, $Res Function(_$_Multimedia) then) =
      __$$_MultimediaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String filename,
      String url,
      MultimediaTypeEnum type});
}

/// @nodoc
class __$$_MultimediaCopyWithImpl<$Res>
    extends _$MultimediaCopyWithImpl<$Res, _$_Multimedia>
    implements _$$_MultimediaCopyWith<$Res> {
  __$$_MultimediaCopyWithImpl(
      _$_Multimedia _value, $Res Function(_$_Multimedia) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? filename = null,
    Object? url = null,
    Object? type = null,
  }) {
    return _then(_$_Multimedia(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_Multimedia implements _Multimedia {
  const _$_Multimedia(
      {@JsonKey(name: '_id') required this.id,
      required this.filename,
      required this.url,
      required this.type});

  factory _$_Multimedia.fromJson(Map<String, dynamic> json) =>
      _$$_MultimediaFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String filename;
  @override
  final String url;
  @override
  final MultimediaTypeEnum type;

  @override
  String toString() {
    return 'Multimedia(id: $id, filename: $filename, url: $url, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Multimedia &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, filename, url, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MultimediaCopyWith<_$_Multimedia> get copyWith =>
      __$$_MultimediaCopyWithImpl<_$_Multimedia>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MultimediaToJson(
      this,
    );
  }
}

abstract class _Multimedia implements Multimedia {
  const factory _Multimedia(
      {@JsonKey(name: '_id') required final String id,
      required final String filename,
      required final String url,
      required final MultimediaTypeEnum type}) = _$_Multimedia;

  factory _Multimedia.fromJson(Map<String, dynamic> json) =
      _$_Multimedia.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get filename;
  @override
  String get url;
  @override
  MultimediaTypeEnum get type;
  @override
  @JsonKey(ignore: true)
  _$$_MultimediaCopyWith<_$_Multimedia> get copyWith =>
      throw _privateConstructorUsedError;
}
