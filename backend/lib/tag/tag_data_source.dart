// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:backend/db/database_connection.dart';
import 'package:data_source/data_source.dart';
import 'package:exceptions/exceptions.dart';
import 'package:models/models.dart';
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
  Future<Tag> deleteTagById({required TagId id}) {
    // TODO: implement deleteTagById
    throw UnimplementedError();
  }

  @override
  Future<List<Tag>> getAllTags() {
    // TODO: implement getAllTags
    throw UnimplementedError();
  }

  @override
  Future<Tag> getPostById(TagId id) {
    // TODO: implement getPostById
    throw UnimplementedError();
  }

  @override
  Future<Tag> updateTag({required TagId id, required UpdateTagDto tag}) {
    // TODO: implement updateTag
    throw UnimplementedError();
  }
}
