import 'package:models/models.dart';
import 'package:typedefs/typedefs.dart';

/// {@template post_data_source}
/// A class that manages the tag data.
/// {@endtemplate}
abstract class TagDataSource {
  /// Get tag by [id].
  Future<Tag> getTagById(TagId id);

  /// Get all tags
  Future<List<Tag>> getAllTags();

  /// Create new tag
  Future<Tag> createTag(CreateTagDto tag);

  /// Update tag by id
  Future<Tag> updateTag({
    required TagId id,
    required UpdateTagDto tag,
  });

  /// Delete tag by id
  Future<OperationResultDto> deleteTagById({
    required TagId id,
  });
}
