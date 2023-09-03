import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'update_multimedia_dto.freezed.dart';
part 'update_multimedia_dto.g.dart';

/// {@template update_multimedia_dto}
/// UpdateMultimediaDto description
/// {@endtemplate}
@freezed
class UpdateMultimediaDto with _$UpdateMultimediaDto {
  /// {@macro update_multimedia_dto}
  const factory UpdateMultimediaDto({
    String? filename,
    String? url,
    MultimediaTypeEnum? type,
  }) = _UpdateMultimediaDto;

  /// Creates a UpdateMultimediaDto from Json map
  factory UpdateMultimediaDto.fromJson(Map<String, dynamic> data) =>
      _$UpdateMultimediaDtoFromJson(data);
}
