import 'package:models/models.dart';
import 'package:typedefs/typedefs.dart';

/// {@template post_data_source}
/// A class that manages the post data.
/// {@endtemplate}
abstract class PostDataSource {
  /// Get post by [id].
  Future<Post> getPostById(PostId id);

  /// Get all posts
  Future<List<Post>> getAllPost();

  /// Get all post by tag [id]
  Future<List<Post>> getAllPostByTagId(TagId id);

  /// Get posts by [section]
  Future<List<Post>> getPostsBySection(PostSectionEnum section);

  /// Create new post
  Future<Post> createPost(CreatePostDto post);

  /// Update post by id
  Future<Post> updatePost({
    required PostId id,
    required UpdatePostDto post,
  });
}
