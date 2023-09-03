import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'create_multimedia_dto.freezed.dart';
part 'create_multimedia_dto.g.dart';

/// {@template create_multimedia_dto}
/// CreateMultimediaDto description
/// {@endtemplate}
@freezed
class CreateMultimediaDto with _$CreateMultimediaDto {
  /// {@macro create_multimedia_dto}
  const factory CreateMultimediaDto({
    required String filename,
    required String url,
    required MultimediaTypeEnum type,
  }) = _CreateMultimediaDto;

  /// Creates a CreateMultimediaDto from Json map
  factory CreateMultimediaDto.fromJson(Map<String, dynamic> data) =>
      _$CreateMultimediaDtoFromJson(data);
}
