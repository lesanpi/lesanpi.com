// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:backend/db/database_connection.dart';
import 'package:data_source/data_source.dart';
import 'package:exceptions/exceptions.dart';
import 'package:models/models.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:typedefs/typedefs.dart';

class TagDataSourceImpl extends TagDataSource {
  TagDataSourceImpl({
    required DatabaseConnection databaseConnection,
  }) : _databaseConnection = databaseConnection;
  final DatabaseConnection _databaseConnection;

  @override
  Future<Tag> createTag(CreateTagDto tag) async {
    try {
      await _databaseConnection.connect();
      final collection = _databaseConnection.db.collection('tags');
      final result = await collection.insertOne(tag.toJson());
      final tagDocument = result.document ?? {};
      final id = mapObjectId<TagId>(tagDocument['_id']);
      if (id.isLeft) {
        throw ServerException('Unexpected error: ${id.left.message}');
      }
      tagDocument['_id'] = id.right;
      return Tag.fromJson(tagDocument);
    } catch (e) {
      throw ServerException('Unexpected error: $e');
    } finally {
      await _databaseConnection.close();
    }
  }

  @override
  Future<OperationResultDto> deleteTagById({required TagId id}) async {
    try {
      await _databaseConnection.connect();
      final collection = _databaseConnection.db.collection('tags');
      final result =
          await collection.deleteOne(where.id(ObjectId.fromHexString(id)));
      return OperationResultDto(
        success: result.success,
        message: result.errmsg,
      );
    } catch (e) {
      throw ServerException('Unexpected error: $e');
    } finally {
      await _databaseConnection.close();
    }
  }

  @override
  Future<List<Tag>> getAllTags() async {
    try {
      await _databaseConnection.connect();
      final collection = _databaseConnection.db.collection('tags');
      final result = await collection.find().toList();

      final tags = result.map((tagDocument) {
        final id = mapObjectId<TagId>(tagDocument['_id']);
        if (id.isLeft) {
          throw ServerException('Unexpected error: ${id.left.message}');
        }
        tagDocument['_id'] = id.right;
        return Tag.fromJson(tagDocument);
      }).toList();
      return tags;
    } catch (e) {
      throw ServerException('Unexpected error: $e');
    } finally {
      await _databaseConnection.close();
    }
  }

  @override
  Future<Tag> updateTag({required TagId id, required UpdateTagDto tag}) {
    // TODO: implement updateTag
    throw UnimplementedError();
  }

  @override
  Future<Tag> getTagById(TagId id) async {
    try {
      await _databaseConnection.connect();
      final collection = _databaseConnection.db.collection('tags');
      final result =
          await collection.findOne(where.id(ObjectId.fromHexString(id)));
      final tagDocument = result ?? {};

      if (tagDocument.isEmpty) {
        throw const NotFoundException('Tag not found');
      }

      final tagId = mapObjectId<TagId>(tagDocument['_id']);
      if (tagId.isLeft) {
        throw ServerException('Unexpected error: ${tagId.left.message}');
      }
      tagDocument['_id'] = tagId.right;

      final tag = Tag.fromJson(tagDocument);
      return tag;
    } on ServerException {
      rethrow;
    } catch (e, s) {
      throw ServerException('Unexpected error: $e, $s');
    } finally {
      await _databaseConnection.close();
    }
  }
}
