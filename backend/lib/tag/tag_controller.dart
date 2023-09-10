import 'dart:async';
import 'dart:io';
import 'package:backend/controller/http_controller.dart';
import 'package:dart_frog/src/_internal.dart';
import 'package:either_dart/either.dart';
import 'package:models/models.dart';
import 'package:repository/repository.dart';

/// {@template tag_controller}
/// This is the controller for the tag resource
/// Use this class to handle requests to the tag resource
/// {@endtemplate}
class TagController extends HttpController {
  /// {@macro tag_controller}
  TagController(this._repo);
  final TagRepository _repo;
  @override
  FutureOr<Response> index(Request request) {
    final tags = _repo.getAllTags();
    return tags.fold(
      (left) => Response.json(
        body: {
          'message': left.message,
        },
        statusCode: left.statusCode,
      ),
      (right) => Response.json(
        body: right.map((e) => e.toJson()).toList(),
      ),
    );
  }

  @override
  FutureOr<Response> update(Request request, String id) async {
    final parsedBody = await parseJson(request);
    if (parsedBody.isLeft) {
      return Response.json(
        body: {'message': parsedBody.left.message},
        statusCode: parsedBody.left.statusCode,
      );
    }
    final json = parsedBody.right;
    final updateTagDto = UpdateTagDto.validated(json);
    if (updateTagDto.isLeft) {
      return Response.json(
        body: {
          'message': updateTagDto.left.message,
          'errors': updateTagDto.left.errors,
        },
        statusCode: updateTagDto.left.statusCode,
      );
    }
    final result = await _repo.updateTag(
      id: id,
      updateTagDto: updateTagDto.right,
    );
    return result.fold(
      (left) => Response.json(
        body: {
          'message': left.message,
          'success': false,
        },
      ),
      (right) => Response.json(
        body: right.toJson(),
      ),
    );
  }

  @override
  FutureOr<Response> store(Request request) async {
    final parsedBody = await parseJson(request);
    if (parsedBody.isLeft) {
      return Response.json(
        body: {'message': parsedBody.left.message},
        statusCode: parsedBody.left.statusCode,
      );
    }
    final json = parsedBody.right;
    final createTagDto = CreateTagDto.validated(json);
    if (createTagDto.isLeft) {
      return Response.json(
        body: {
          'message': createTagDto.left.message,
          'errors': createTagDto.left.errors,
        },
        statusCode: createTagDto.left.statusCode,
      );
    }

    final res = await _repo.createTag(createTagDto.right);
    return res.fold(
      (left) => Response.json(
        body: {
          'message': left.message,
        },
        statusCode: left.statusCode,
      ),
      (right) => Response.json(
        body: right.toJson(),
        statusCode: HttpStatus.created,
      ),
    );
  }

  @override
  FutureOr<Response> destroy(Request request, String id) {
    final result = _repo.deleteTag(id);
    return result.fold(
      (left) => Response.json(
        body: {
          'message': left.message,
          'success': false,
        },
      ),
      (right) => Response.json(
        body: right.toJson(),
      ),
    );
  }
}
