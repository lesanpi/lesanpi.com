import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:models/src/serializers/date_time_converter.dart';
import 'package:typedefs/typedefs.dart';

part 'user.freezed.dart';
part 'user.g.dart';

/// {@template user}
/// User description
/// {@endtemplate}
@freezed
class User with _$User {
  /// {@macro user}
  const factory User({
    required UserId id,
    required String email,
    required String name,
    required String lastname,
    required Multimedia photo,
    @DateTimeConverter() required DateTime createdAt,
    @DateTimeConverterNullable() required DateTime? updatedAt,
    @Default(true) bool active,
    @Default(false) bool admin,
    @Default(false) bool emailConfirmed,
    @Default('') String password,
  }) = _User;

  /// Creates a User from Json map
  factory User.fromJson(Map<String, dynamic> data) => _$UserFromJson(data);
}
