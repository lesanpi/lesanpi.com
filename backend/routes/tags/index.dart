import 'package:backend/request_handlers/unimplemented_handler.dart';
import 'package:backend/tag/tag_controller.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:models/models.dart';

Future<Response> onRequest(RequestContext context) async {
  final controller = context.read<TagController>();

  switch (context.request.method) {
    case HttpMethod.post:
      final user = context.read<User>();
      if (user.admin) {
        return controller.store(context.request);
      }
      return unauthorizedHandler(context);

    case HttpMethod.get:
      return controller.index(context.request);

    case HttpMethod.put:
    case HttpMethod.patch:
    case HttpMethod.delete:
    case HttpMethod.head:
    case HttpMethod.options:
      return unimplementedHandler(context);
  }
}
