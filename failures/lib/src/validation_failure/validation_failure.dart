import 'dart:io';

import 'package:failures/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'validation_failure.freezed.dart';

/// {@template validation_failure}
/// ValidationFailure
/// {@endtemplate}
@freezed
class ValidationFailure extends Failure with _$ValidationFailure {
  /// {@macro validation_failure}
  const factory ValidationFailure({
    required String message,
    @Default(HttpStatus.badRequest) int statusCode,
    @Default({}) Map<String, List<String>> errors,
  }) = _ValidationFailure;
}
