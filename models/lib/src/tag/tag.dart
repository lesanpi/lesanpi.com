import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:typedefs/typedefs.dart';

part 'tag.freezed.dart';
part 'tag.g.dart';

/// {@template tag}
/// Tag description
/// {@endtemplate}
@freezed
class Tag with _$Tag {
  /// {@macro tag}
  const factory Tag({
    @JsonKey(name: '_id') required TagId id,
    required String name,
    required String color,
    @Default(true) bool active,
  }) = _Tag;

  /// Creates a Tag from Json map
  factory Tag.fromJson(Map<String, dynamic> data) => _$TagFromJson(data);
}
