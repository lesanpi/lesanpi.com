import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:models/src/serializers/date_time_converter.dart';
import 'package:typedefs/typedefs.dart';

part 'post.freezed.dart';
part 'post.g.dart';

/// {@template post}
/// Post description
/// {@endtemplate}
@freezed
class Post with _$Post {
  /// {@macro post}
  const factory Post({
    required PostId id,
    required String title,
    required List<Tag> tags,
    required User user,
    required Multimedia cover,
    required String content,
    required List<PostSectionEnum> sections,
    @DateTimeConverter() required DateTime createdAt,
    @DateTimeConverterNullable() DateTime? updatedAt,
    @Default(true) bool active,
  }) = _Post;

  /// Creates a Post from Json map
  factory Post.fromJson(Map<String, dynamic> data) => _$PostFromJson(data);
}
