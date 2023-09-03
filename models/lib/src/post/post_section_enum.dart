/// Section of Post
enum PostSectionEnum {
  /// Featured
  featured,

  /// Video
  video,

  /// Tutorial
  tutorial,

  /// Tip
  tip;

  @override
  String toString() => switch (this) {
        (PostSectionEnum.featured) => 'featured',
        (PostSectionEnum.video) => 'video',
        (PostSectionEnum.tutorial) => 'tutorial',
        (PostSectionEnum.tip) => 'tip',
      };
}
