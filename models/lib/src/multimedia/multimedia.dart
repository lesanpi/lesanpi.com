import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:models/src/multimedia/multimedia_type.dart';

part 'multimedia.freezed.dart';
part 'multimedia.g.dart';

/// {@template multimedia}
/// Multimedia description
/// {@endtemplate}
@freezed
class Multimedia with _$Multimedia {
  /// {@macro multimedia}
  const factory Multimedia({
    required String id,
    required String filename,
    required String url,
    required MultimediaType type,
  }) = _Multimedia;

  /// Creates a Multimedia from Json map
  factory Multimedia.fromJson(Map<String, dynamic> data) =>
      _$MultimediaFromJson(data);
}
