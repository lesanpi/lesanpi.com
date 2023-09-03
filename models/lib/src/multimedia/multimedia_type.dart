/// [Multimedia] type definition
/// video, image, audio, url.
enum MultimediaType {
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
        (MultimediaType.video) => 'video',
        (MultimediaType.image) => 'image',
        (MultimediaType.audio) => 'audio',
        (MultimediaType.url) => 'url',
      };
}
