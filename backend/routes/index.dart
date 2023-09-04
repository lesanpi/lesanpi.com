import 'package:backend/db/database_connection.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  final connection = context.read<DatabaseConnection>();
  await connection.connect();
  final databaseName = connection.db.databaseName ?? 'None';
  return Response(body: 'Welcome to Dart Frog! Database $databaseName');
}
