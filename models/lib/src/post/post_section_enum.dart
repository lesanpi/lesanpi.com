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

  /// Create section enum from given json
  static PostSectionEnum? fromJson(dynamic json) {
    if (json == null) return null;
    if (json is PostSectionEnum) return json;
    if (json! is String) return null;
    return switch (json) {
      ('featured') => PostSectionEnum.featured,
      ('video') => PostSectionEnum.video,
      ('tutorial') => PostSectionEnum.tutorial,
      ('tip') => PostSectionEnum.tip,
      (_) => null
    };
  }

  /// Convert to json
  String? toJson() {
    return toString();
  }
}
