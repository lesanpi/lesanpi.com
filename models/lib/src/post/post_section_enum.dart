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
        (PostSectionEnum.featured) => 'Featured',
        (PostSectionEnum.video) => 'Video',
        (PostSectionEnum.tutorial) => 'Tutorial',
        (PostSectionEnum.tip) => 'Tip',
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
