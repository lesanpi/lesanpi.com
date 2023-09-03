import 'package:models/models.dart';

/// {@template post_data_source}
/// A class that manages the post data.
/// {@endtemplate}
abstract class PostDataSource {
  /// Get post by [id].
  Future<Post> getPostById(String id);

  /// Get all posts
  Future<List<Post>> getAllPost();

  /// Get all post by tag [id]
  Future<List<Post>> getAllPostByTagId(String id);

  /// Get posts by section
  Future<List<Post>> getPostsBySection(PostSectionEnum section);
}
