import 'package:dart_frog/dart_frog.dart';
import 'package:dotenv/dotenv.dart';
import '../db/database_connection.dart';

final env = DotEnv()..load(['variables.env']);
final _db = DatabaseConnection(dbUrl: env['DB_URL'] ?? '');

Handler middleware(Handler handler) {
  return handler
      .use(requestLogger())
      .use(provider<DatabaseConnection>((_) => _db));
}
