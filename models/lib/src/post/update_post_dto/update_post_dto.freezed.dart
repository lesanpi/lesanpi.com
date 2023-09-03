// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_post_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdatePostDto _$UpdatePostDtoFromJson(Map<String, dynamic> json) {
  return _UpdatePostDto.fromJson(json);
}

/// @nodoc
mixin _$UpdatePostDto {
  String? get title => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;
  CreateMultimediaDto? get cover => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  List<PostSectionEnum>? get sections => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdatePostDtoCopyWith<UpdatePostDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePostDtoCopyWith<$Res> {
  factory $UpdatePostDtoCopyWith(
          UpdatePostDto value, $Res Function(UpdatePostDto) then) =
      _$UpdatePostDtoCopyWithImpl<$Res, UpdatePostDto>;
  @useResult
  $Res call(
      {String? title,
      List<String>? tags,
      String? user,
      CreateMultimediaDto? cover,
      String? content,
      List<PostSectionEnum>? sections});

  $CreateMultimediaDtoCopyWith<$Res>? get cover;
}

/// @nodoc
class _$UpdatePostDtoCopyWithImpl<$Res, $Val extends UpdatePostDto>
    implements $UpdatePostDtoCopyWith<$Res> {
  _$UpdatePostDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? tags = freezed,
    Object? user = freezed,
    Object? cover = freezed,
    Object? content = freezed,
    Object? sections = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as CreateMultimediaDto?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      sections: freezed == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<PostSectionEnum>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateMultimediaDtoCopyWith<$Res>? get cover {
    if (_value.cover == null) {
      return null;
    }

    return $CreateMultimediaDtoCopyWith<$Res>(_value.cover!, (value) {
      return _then(_value.copyWith(cover: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UpdatePostDtoCopyWith<$Res>
    implements $UpdatePostDtoCopyWith<$Res> {
  factory _$$_UpdatePostDtoCopyWith(
          _$_UpdatePostDto value, $Res Function(_$_UpdatePostDto) then) =
      __$$_UpdatePostDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      List<String>? tags,
      String? user,
      CreateMultimediaDto? cover,
      String? content,
      List<PostSectionEnum>? sections});

  @override
  $CreateMultimediaDtoCopyWith<$Res>? get cover;
}

/// @nodoc
class __$$_UpdatePostDtoCopyWithImpl<$Res>
    extends _$UpdatePostDtoCopyWithImpl<$Res, _$_UpdatePostDto>
    implements _$$_UpdatePostDtoCopyWith<$Res> {
  __$$_UpdatePostDtoCopyWithImpl(
      _$_UpdatePostDto _value, $Res Function(_$_UpdatePostDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? tags = freezed,
    Object? user = freezed,
    Object? cover = freezed,
    Object? content = freezed,
    Object? sections = freezed,
  }) {
    return _then(_$_UpdatePostDto(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as CreateMultimediaDto?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      sections: freezed == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<PostSectionEnum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdatePostDto implements _UpdatePostDto {
  const _$_UpdatePostDto(
      {this.title,
      final List<String>? tags,
      this.user,
      this.cover,
      this.content,
      final List<PostSectionEnum>? sections})
      : _tags = tags,
        _sections = sections;

  factory _$_UpdatePostDto.fromJson(Map<String, dynamic> json) =>
      _$$_UpdatePostDtoFromJson(json);

  @override
  final String? title;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? user;
  @override
  final CreateMultimediaDto? cover;
  @override
  final String? content;
  final List<PostSectionEnum>? _sections;
  @override
  List<PostSectionEnum>? get sections {
    final value = _sections;
    if (value == null) return null;
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UpdatePostDto(title: $title, tags: $tags, user: $user, cover: $cover, content: $content, sections: $sections)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdatePostDto &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._sections, _sections));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      const DeepCollectionEquality().hash(_tags),
      user,
      cover,
      content,
      const DeepCollectionEquality().hash(_sections));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdatePostDtoCopyWith<_$_UpdatePostDto> get copyWith =>
      __$$_UpdatePostDtoCopyWithImpl<_$_UpdatePostDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdatePostDtoToJson(
      this,
    );
  }
}

abstract class _UpdatePostDto implements UpdatePostDto {
  const factory _UpdatePostDto(
      {final String? title,
      final List<String>? tags,
      final String? user,
      final CreateMultimediaDto? cover,
      final String? content,
      final List<PostSectionEnum>? sections}) = _$_UpdatePostDto;

  factory _UpdatePostDto.fromJson(Map<String, dynamic> json) =
      _$_UpdatePostDto.fromJson;

  @override
  String? get title;
  @override
  List<String>? get tags;
  @override
  String? get user;
  @override
  CreateMultimediaDto? get cover;
  @override
  String? get content;
  @override
  List<PostSectionEnum>? get sections;
  @override
  @JsonKey(ignore: true)
  _$$_UpdatePostDtoCopyWith<_$_UpdatePostDto> get copyWith =>
      throw _privateConstructorUsedError;
}
