// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:backend/db/database_connection.dart';
import 'package:data_source/data_source.dart';
import 'package:exceptions/exceptions.dart';
import 'package:models/models.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:typedefs/typedefs.dart';

class UserDataSourceImpl extends UserDataSource {
  UserDataSourceImpl({
    required DatabaseConnection databaseConnection,
  }) : _databaseConnection = databaseConnection;
  final DatabaseConnection _databaseConnection;

  @override
  Future<User> createUser(CreateUserDto user) async {
    try {
      await _databaseConnection.connect();
      final collection = _databaseConnection.db.collection('users');
      final result = await collection.insertOne({
        ...user.toJson(),
      });
      final tagDocument = result.document ?? {};
      final id = mapObjectId<UserId>(tagDocument['_id']);
      if (id.isLeft) {
        throw ServerException('Unexpected error: ${id.left.message}');
      }
      tagDocument['_id'] = id.right;
      return User.fromJson(tagDocument);
    } catch (e) {
      throw ServerException('Unexpected error: $e');
    } finally {
      await _databaseConnection.close();
    }
  }

  @override
  Future<User> getUserByEmail(String email) async {
    try {
      await _databaseConnection.connect();
      final collection = _databaseConnection.db.collection('users');
      final result = await collection.findOne(where.eq('email', email));
      final userDocument = result ?? {};
      final id = mapObjectId<UserId>(userDocument['_id']);
      if (id.isLeft) {
        throw ServerException('Unexpected error: ${id.left.message}');
      }
      userDocument['_id'] = id.right;

      return User.fromJson(userDocument);
    } catch (e) {
      throw ServerException('Unexpected error: $e');
    } finally {
      await _databaseConnection.close();
    }
  }

  @override
  Future<User> getUserById(UserId id) async {
    try {
      await _databaseConnection.connect();
      final collection = _databaseConnection.db.collection('users');
      final result =
          await collection.findOne(where.id(ObjectId.fromHexString(id)));
      final userDocument = result ?? {};

      final userId = mapObjectId<UserId>(userDocument['_id']);
      if (userId.isLeft) {
        throw ServerException('Unexpected error: ${userId.left.message}');
      }
      userDocument['_id'] = userId.right;

      final user = User.fromJson(userDocument);
      return user;
    } catch (e) {
      throw ServerException('Unexpected error: $e');
    } finally {
      await _databaseConnection.close();
    }
  }

  @override
  Future<User> updateUserInfo({
    required UserId id,
    required UpdateUserInfoDto user,
  }) {
    // TODO: implement updateUserInfo
    throw UnimplementedError();
  }
}
