/// Multimedia type definition
/// video, image, audio, url.
enum MultimediaTypeEnum {
  /// video
  video,

  /// image
  image,

  /// audio
  audio,

  /// url
  url,
  ;

  @override
  String toString() => switch (this) {
        (MultimediaTypeEnum.video) => 'video',
        (MultimediaTypeEnum.image) => 'image',
        (MultimediaTypeEnum.audio) => 'audio',
        (MultimediaTypeEnum.url) => 'url',
      };

  /// Create type from given json
  static MultimediaTypeEnum? fromJson(dynamic json) {
    if (json == null) return null;
    if (json is MultimediaTypeEnum) return json;
    if (json! is String) return null;
    return switch (json) {
      ('video') => MultimediaTypeEnum.video,
      ('image') => MultimediaTypeEnum.image,
      ('audio') => MultimediaTypeEnum.audio,
      ('url') => MultimediaTypeEnum.url,
      (_) => null
    };
  }

  /// Convert to json
  String? toJson() {
    return toString();
  }
}
