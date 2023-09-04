import 'package:backend/db/database_connection.dart';
import 'package:backend/tag/tag_controller.dart';
import 'package:backend/tag/tag_data_source.dart';
import 'package:backend/tag/tag_repository.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:data_source/data_source.dart';
import 'package:dotenv/dotenv.dart';
import 'package:repository/repository.dart';

final env = DotEnv()..load(['variables.env']);
final _db = DatabaseConnection(dbUrl: env['DB_URL'] ?? '');
final _tagDs = TagDataSourceImpl(databaseConnection: _db);
final _tagRepo = TagRepositoryImpl(_tagDs);
final _tagController = TagController(_tagRepo);

Handler middleware(Handler handler) {
  return handler
      .use(requestLogger())
      .use(provider<TagDataSource>((_) => _tagDs))
      .use(provider<TagRepository>((_) => _tagRepo))
      .use(provider<TagController>((_) => _tagController));
}
