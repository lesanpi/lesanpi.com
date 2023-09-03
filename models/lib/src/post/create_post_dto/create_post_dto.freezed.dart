// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_post_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreatePostDto _$CreatePostDtoFromJson(Map<String, dynamic> json) {
  return _CreatePostDto.fromJson(json);
}

/// @nodoc
mixin _$CreatePostDto {
  String get title => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String get user => throw _privateConstructorUsedError;
  CreateMultimediaDto get cover => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<PostSectionEnum> get sections => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePostDtoCopyWith<CreatePostDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostDtoCopyWith<$Res> {
  factory $CreatePostDtoCopyWith(
          CreatePostDto value, $Res Function(CreatePostDto) then) =
      _$CreatePostDtoCopyWithImpl<$Res, CreatePostDto>;
  @useResult
  $Res call(
      {String title,
      List<String> tags,
      String user,
      CreateMultimediaDto cover,
      String content,
      List<PostSectionEnum> sections});

  $CreateMultimediaDtoCopyWith<$Res> get cover;
}

/// @nodoc
class _$CreatePostDtoCopyWithImpl<$Res, $Val extends CreatePostDto>
    implements $CreatePostDtoCopyWith<$Res> {
  _$CreatePostDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? tags = null,
    Object? user = null,
    Object? cover = null,
    Object? content = null,
    Object? sections = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as CreateMultimediaDto,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      sections: null == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<PostSectionEnum>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateMultimediaDtoCopyWith<$Res> get cover {
    return $CreateMultimediaDtoCopyWith<$Res>(_value.cover, (value) {
      return _then(_value.copyWith(cover: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreatePostDtoCopyWith<$Res>
    implements $CreatePostDtoCopyWith<$Res> {
  factory _$$_CreatePostDtoCopyWith(
          _$_CreatePostDto value, $Res Function(_$_CreatePostDto) then) =
      __$$_CreatePostDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      List<String> tags,
      String user,
      CreateMultimediaDto cover,
      String content,
      List<PostSectionEnum> sections});

  @override
  $CreateMultimediaDtoCopyWith<$Res> get cover;
}

/// @nodoc
class __$$_CreatePostDtoCopyWithImpl<$Res>
    extends _$CreatePostDtoCopyWithImpl<$Res, _$_CreatePostDto>
    implements _$$_CreatePostDtoCopyWith<$Res> {
  __$$_CreatePostDtoCopyWithImpl(
      _$_CreatePostDto _value, $Res Function(_$_CreatePostDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? tags = null,
    Object? user = null,
    Object? cover = null,
    Object? content = null,
    Object? sections = null,
  }) {
    return _then(_$_CreatePostDto(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as CreateMultimediaDto,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      sections: null == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<PostSectionEnum>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreatePostDto implements _CreatePostDto {
  const _$_CreatePostDto(
      {required this.title,
      required final List<String> tags,
      required this.user,
      required this.cover,
      required this.content,
      required final List<PostSectionEnum> sections})
      : _tags = tags,
        _sections = sections;

  factory _$_CreatePostDto.fromJson(Map<String, dynamic> json) =>
      _$$_CreatePostDtoFromJson(json);

  @override
  final String title;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String user;
  @override
  final CreateMultimediaDto cover;
  @override
  final String content;
  final List<PostSectionEnum> _sections;
  @override
  List<PostSectionEnum> get sections {
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sections);
  }

  @override
  String toString() {
    return 'CreatePostDto(title: $title, tags: $tags, user: $user, cover: $cover, content: $content, sections: $sections)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatePostDto &&
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
  _$$_CreatePostDtoCopyWith<_$_CreatePostDto> get copyWith =>
      __$$_CreatePostDtoCopyWithImpl<_$_CreatePostDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreatePostDtoToJson(
      this,
    );
  }
}

abstract class _CreatePostDto implements CreatePostDto {
  const factory _CreatePostDto(
      {required final String title,
      required final List<String> tags,
      required final String user,
      required final CreateMultimediaDto cover,
      required final String content,
      required final List<PostSectionEnum> sections}) = _$_CreatePostDto;

  factory _CreatePostDto.fromJson(Map<String, dynamic> json) =
      _$_CreatePostDto.fromJson;

  @override
  String get title;
  @override
  List<String> get tags;
  @override
  String get user;
  @override
  CreateMultimediaDto get cover;
  @override
  String get content;
  @override
  List<PostSectionEnum> get sections;
  @override
  @JsonKey(ignore: true)
  _$$_CreatePostDtoCopyWith<_$_CreatePostDto> get copyWith =>
      throw _privateConstructorUsedError;
}
