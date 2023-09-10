import 'package:backend/db/database_connection.dart';
import 'package:backend/services/jwt_service.dart';
import 'package:backend/services/password_hasher_service.dart';
import 'package:backend/tag/tag_controller.dart';
import 'package:backend/tag/tag_data_source.dart';
import 'package:backend/tag/tag_repository.dart';
import 'package:backend/user/user_data_source.dart';
import 'package:backend/user/user_repository.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_auth/dart_frog_auth.dart';
import 'package:data_source/data_source.dart';
import 'package:dotenv/dotenv.dart';
import 'package:models/models.dart';
import 'package:repository/repository.dart';

final env = DotEnv()..load(['variables.env']);
final _db = DatabaseConnection(dbUrl: env['DB_URL'] ?? '');
final _jwtService = JWTService(env);
const _passwordHasher = PasswordHasherService();
final _tagDs = TagDataSourceImpl(databaseConnection: _db);
final _tagRepo = TagRepositoryImpl(_tagDs);
final _tagController = TagController(_tagRepo);
final _userDs = UserDataSourceImpl(databaseConnection: _db);
final _userRepo = UserRepositoryImpl(_userDs, _passwordHasher, _jwtService);

Handler middleware(Handler handler) {
  return handler
      .use(requestLogger())
      .use(provider<JWTService>((_) => _jwtService))
      .use(provider<TagDataSource>((_) => _tagDs))
      .use(provider<UserDataSource>((_) => _userDs))
      .use(provider<TagRepository>((_) => _tagRepo))
      .use(provider<UserRepository>((_) => _userRepo))
      .use(provider<TagController>((_) => _tagController))
      .use(
        bearerAuthentication<User>(
          authenticator: (context, token) async {
            final user = await _userRepo.getUserByToken(token);
            return user.fold(
              (left) => null,
              (right) => right,
            );
          },
          applies: (RequestContext context) async =>
              context.request.method == HttpMethod.post,
        ),
      );
}
