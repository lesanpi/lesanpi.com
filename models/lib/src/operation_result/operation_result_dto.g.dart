// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OperationResultDto _$$_OperationResultDtoFromJson(
        Map<String, dynamic> json) =>
    _$_OperationResultDto(
      success: json['success'] as bool,
      message: json['message'] as String? ?? null,
    );

Map<String, dynamic> _$$_OperationResultDtoToJson(
        _$_OperationResultDto instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
    };
