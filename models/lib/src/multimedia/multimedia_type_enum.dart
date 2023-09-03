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
}
