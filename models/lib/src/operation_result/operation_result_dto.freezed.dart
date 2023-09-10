// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'operation_result_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OperationResultDto _$OperationResultDtoFromJson(Map<String, dynamic> json) {
  return _OperationResultDto.fromJson(json);
}

/// @nodoc
mixin _$OperationResultDto {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OperationResultDtoCopyWith<OperationResultDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationResultDtoCopyWith<$Res> {
  factory $OperationResultDtoCopyWith(
          OperationResultDto value, $Res Function(OperationResultDto) then) =
      _$OperationResultDtoCopyWithImpl<$Res, OperationResultDto>;
  @useResult
  $Res call({bool success, String? message});
}

/// @nodoc
class _$OperationResultDtoCopyWithImpl<$Res, $Val extends OperationResultDto>
    implements $OperationResultDtoCopyWith<$Res> {
  _$OperationResultDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OperationResultDtoCopyWith<$Res>
    implements $OperationResultDtoCopyWith<$Res> {
  factory _$$_OperationResultDtoCopyWith(_$_OperationResultDto value,
          $Res Function(_$_OperationResultDto) then) =
      __$$_OperationResultDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String? message});
}

/// @nodoc
class __$$_OperationResultDtoCopyWithImpl<$Res>
    extends _$OperationResultDtoCopyWithImpl<$Res, _$_OperationResultDto>
    implements _$$_OperationResultDtoCopyWith<$Res> {
  __$$_OperationResultDtoCopyWithImpl(
      _$_OperationResultDto _value, $Res Function(_$_OperationResultDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
  }) {
    return _then(_$_OperationResultDto(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OperationResultDto implements _OperationResultDto {
  const _$_OperationResultDto({required this.success, this.message = null});

  factory _$_OperationResultDto.fromJson(Map<String, dynamic> json) =>
      _$$_OperationResultDtoFromJson(json);

  @override
  final bool success;
  @override
  @JsonKey()
  final String? message;

  @override
  String toString() {
    return 'OperationResultDto(success: $success, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OperationResultDto &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OperationResultDtoCopyWith<_$_OperationResultDto> get copyWith =>
      __$$_OperationResultDtoCopyWithImpl<_$_OperationResultDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OperationResultDtoToJson(
      this,
    );
  }
}

abstract class _OperationResultDto implements OperationResultDto {
  const factory _OperationResultDto(
      {required final bool success,
      final String? message}) = _$_OperationResultDto;

  factory _OperationResultDto.fromJson(Map<String, dynamic> json) =
      _$_OperationResultDto.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_OperationResultDtoCopyWith<_$_OperationResultDto> get copyWith =>
      throw _privateConstructorUsedError;
}
