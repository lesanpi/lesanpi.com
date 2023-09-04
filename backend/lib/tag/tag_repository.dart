// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:data_source/data_source.dart';
import 'package:either_dart/either.dart';
import 'package:exceptions/exceptions.dart';
import 'package:failures/failures.dart';
import 'package:models/models.dart';
import 'package:repository/repository.dart';
import 'package:typedefs/typedefs.dart';

/// {@template tag_repository}
/// Base class for all tags repositories.
/// {@endtemplate}
class TagRepositoryImpl extends TagRepository {
  TagRepositoryImpl(
    this.dataSource,
  );

  /// The data source used to perform CRUD operations
  final TagDataSource dataSource;

  @override
  Future<Either<Failure, Tag>> createTag(CreateTagDto createTagDto) async {
    try {
      final todo = await dataSource.createTag(createTagDto);
      return Right(todo);
    } on ServerException catch (e) {
      log(e.message, error: e);
      return Left(
        ServerFailure(message: e.message),
      );
    }
  }

  @override
  Future<Either<Failure, void>> deleteTag(TagId id) {
    // TODO: implement deleteTag
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Post>>> getAllTags() {
    // TODO: implement getAllTags
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Tag>> getTagById(TagId id) {
    // TODO: implement getTagById
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Tag>> updateTag({
    required TagId id,
    required UpdateTagDto updateTagDto,
  }) {
    // TODO: implement updateTag
    throw UnimplementedError();
  }
}
