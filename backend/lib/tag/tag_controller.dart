import 'dart:async';
import 'dart:io';

import 'package:backend/controller/http_controller.dart';
import 'package:dart_frog/src/_internal.dart';
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
}
