import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/src/serializers/date_time_converter.dart';
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
    required TagId id,
    required String name,
    required String color,
    @DateTimeConverter() required DateTime createdAt,
    @DateTimeConverterNullable() DateTime? updatedAt,
    @Default(true) bool active,
  }) = _Tag;

  /// Creates a Tag from Json map
  factory Tag.fromJson(Map<String, dynamic> data) => _$TagFromJson(data);
}
