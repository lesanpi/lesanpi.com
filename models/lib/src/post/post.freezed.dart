// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<Tag> get tags => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  Multimedia get cover => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<PostSectionEnum> get section => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  @DateTimeConverterNullable()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {String id,
      String title,
      List<Tag> tags,
      User user,
      Multimedia cover,
      String content,
      List<PostSectionEnum> section,
      @DateTimeConverter() DateTime createdAt,
      @DateTimeConverterNullable() DateTime? updatedAt,
      bool active});

  $UserCopyWith<$Res> get user;
  $MultimediaCopyWith<$Res> get cover;
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? tags = null,
    Object? user = null,
    Object? cover = null,
    Object? content = null,
    Object? section = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? active = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as Multimedia,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      section: null == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as List<PostSectionEnum>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MultimediaCopyWith<$Res> get cover {
    return $MultimediaCopyWith<$Res>(_value.cover, (value) {
      return _then(_value.copyWith(cover: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$_PostCopyWith(_$_Post value, $Res Function(_$_Post) then) =
      __$$_PostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      List<Tag> tags,
      User user,
      Multimedia cover,
      String content,
      List<PostSectionEnum> section,
      @DateTimeConverter() DateTime createdAt,
      @DateTimeConverterNullable() DateTime? updatedAt,
      bool active});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $MultimediaCopyWith<$Res> get cover;
}

/// @nodoc
class __$$_PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res, _$_Post>
    implements _$$_PostCopyWith<$Res> {
  __$$_PostCopyWithImpl(_$_Post _value, $Res Function(_$_Post) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? tags = null,
    Object? user = null,
    Object? cover = null,
    Object? content = null,
    Object? section = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? active = null,
  }) {
    return _then(_$_Post(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as Multimedia,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      section: null == section
          ? _value._section
          : section // ignore: cast_nullable_to_non_nullable
              as List<PostSectionEnum>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Post implements _Post {
  const _$_Post(
      {required this.id,
      required this.title,
      required final List<Tag> tags,
      required this.user,
      required this.cover,
      required this.content,
      required final List<PostSectionEnum> section,
      @DateTimeConverter() required this.createdAt,
      @DateTimeConverterNullable() this.updatedAt,
      this.active = true})
      : _tags = tags,
        _section = section;

  factory _$_Post.fromJson(Map<String, dynamic> json) => _$$_PostFromJson(json);

  @override
  final String id;
  @override
  final String title;
  final List<Tag> _tags;
  @override
  List<Tag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final User user;
  @override
  final Multimedia cover;
  @override
  final String content;
  final List<PostSectionEnum> _section;
  @override
  List<PostSectionEnum> get section {
    if (_section is EqualUnmodifiableListView) return _section;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_section);
  }

  @override
  @DateTimeConverter()
  final DateTime createdAt;
  @override
  @DateTimeConverterNullable()
  final DateTime? updatedAt;
  @override
  @JsonKey()
  final bool active;

  @override
  String toString() {
    return 'Post(id: $id, title: $title, tags: $tags, user: $user, cover: $cover, content: $content, section: $section, createdAt: $createdAt, updatedAt: $updatedAt, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Post &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._section, _section) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      const DeepCollectionEquality().hash(_tags),
      user,
      cover,
      content,
      const DeepCollectionEquality().hash(_section),
      createdAt,
      updatedAt,
      active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostCopyWith<_$_Post> get copyWith =>
      __$$_PostCopyWithImpl<_$_Post>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostToJson(
      this,
    );
  }
}

abstract class _Post implements Post {
  const factory _Post(
      {required final String id,
      required final String title,
      required final List<Tag> tags,
      required final User user,
      required final Multimedia cover,
      required final String content,
      required final List<PostSectionEnum> section,
      @DateTimeConverter() required final DateTime createdAt,
      @DateTimeConverterNullable() final DateTime? updatedAt,
      final bool active}) = _$_Post;

  factory _Post.fromJson(Map<String, dynamic> json) = _$_Post.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  List<Tag> get tags;
  @override
  User get user;
  @override
  Multimedia get cover;
  @override
  String get content;
  @override
  List<PostSectionEnum> get section;
  @override
  @DateTimeConverter()
  DateTime get createdAt;
  @override
  @DateTimeConverterNullable()
  DateTime? get updatedAt;
  @override
  bool get active;
  @override
  @JsonKey(ignore: true)
  _$$_PostCopyWith<_$_Post> get copyWith => throw _privateConstructorUsedError;
}
