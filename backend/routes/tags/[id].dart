import 'package:backend/request_handlers/unimplemented_handler.dart';
import 'package:backend/tag/tag_controller.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:models/models.dart';

Future<Response> onRequest(RequestContext context, String id) async {
  final controller = context.read<TagController>();

  switch (context.request.method) {
    case HttpMethod.put:
    case HttpMethod.patch:
      final user = context.read<User>();
      if (user.admin) {
        return controller.update(context.request, id);
      }
      return unauthorizedHandler(context);

    case HttpMethod.delete:
      final user = context.read<User>();
      if (user.admin) {
        return controller.destroy(context.request, id);
      }
      return unauthorizedHandler(context);
    case HttpMethod.post:
    case HttpMethod.get:
    case HttpMethod.head:
    case HttpMethod.options:
      return unimplementedHandler(context);
  }
}
