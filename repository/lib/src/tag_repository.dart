import 'package:either_dart/either.dart';
import 'package:failures/failures.dart';
import 'package:models/models.dart';
import 'package:typedefs/typedefs.dart';

/// {@template tag_repository}
/// Base class for all tags repositories.
/// {@endtemplate}
abstract class TagRepository {
  /// Get tag with the given [id].
  Future<Either<Failure, Tag>> getTagById(TagId id);

  /// Get all posts
  Future<Either<Failure, List<Post>>> getAllTags();

  /// Create new tag using the given [createTagDto]
  Future<Either<Failure, Tag>> createTag(CreateTagDto createTagDto);

  /// Update post using the given [id] and [updateTagDto]
  Future<Either<Failure, Tag>> updateTag({
    required TagId id,
    required UpdateTagDto updateTagDto,
  });

  /// Delete a tag with the given [id].
  Future<Either<Failure, void>> deleteTag(TagId id);
}
