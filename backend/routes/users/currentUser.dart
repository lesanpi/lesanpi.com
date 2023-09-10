import 'dart:async';
import 'dart:io';

import 'package:backend/request_handlers/not_allowed_request_handler.dart';
import 'package:backend/user/user_controller.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:either_dart/either.dart';
import 'package:repository/repository.dart';

FutureOr<Response> onRequest(RequestContext context) async {
  final userRepo = context.read<UserRepository>();
  final request = context.request;
  final authHeader = request.headers[HttpHeaders.authorizationHeader] ?? '';
  final token = authHeader.replaceFirst('Bearer ', '');
  if (context.request.method != HttpMethod.get) {
    return notAllowedRequestHandler(context);
  }
  final user = userRepo.getUserByToken(token);
  return user.fold(
    (left) => Response.json(
      body: {'message': left.message},
      statusCode: left.statusCode,
    ),
    (right) => Response.json(
      body: right.toJson(),
    ),
  );
}
