import 'package:either_dart/either.dart';
import 'package:failures/failures.dart';
import 'package:models/models.dart';
import 'package:typedefs/typedefs.dart';

/// {@template post_repository}
/// Base class for all post repositories.
/// {@endtemplate}
abstract class PostRepository {
  /// Get post with the given [id].
  Future<Either<Failure, Post>> getPostById(PostId id);

  /// Get all posts
  Future<Either<Failure, List<Post>>> getAllPosts();

  /// Get all post with the tag [id]
  Future<Either<Failure, List<Post>>> getAllPostByTagId(TagId id);

  /// Get posts that belongs to the given [section]
  Future<Either<Failure, List<Post>>> getPostsBySection(
    PostSectionEnum section,
  );

  /// Create new post using the given [createPostDto]
  Future<Either<Failure, Post>> createPost(CreatePostDto createPostDto);

  /// Update post using the given [id] and [updatePostDto]
  Future<Either<Failure, Post>> updatePost({
    required PostId id,
    required UpdatePostDto updatePostDto,
  });
}
