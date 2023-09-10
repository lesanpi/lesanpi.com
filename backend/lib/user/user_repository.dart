import 'dart:developer';
import 'dart:io';

import 'package:backend/services/jwt_service.dart';
import 'package:backend/services/password_hasher_service.dart';
import 'package:data_source/data_source.dart';
import 'package:either_dart/either.dart';
import 'package:exceptions/exceptions.dart';
import 'package:failures/failures.dart';
import 'package:models/models.dart';
import 'package:repository/repository.dart';
import 'package:typedefs/typedefs.dart';

class UserRepositoryImpl extends UserRepository {
  /// {@macro user_repository_impl}
  UserRepositoryImpl(
    this.dataSource,
    this.passwordHasherService,
    this.jwtService,
  );

  /// The data source used to perform CRUD operations
  final UserDataSource dataSource;

  /// The password hasher service used to hash and check passwords
  final PasswordHasherService passwordHasherService;

  /// The jwt service used to get and check token
  final JWTService jwtService;

  @override
  Future<Either<Failure, User>> createUser(CreateUserDto createUserDto) async {
    final email = createUserDto.email;
    final userFound = await getUserByEmail(email);

    try {
      if (userFound.isRight) {
        return Left(
          ServerFailure(
            message: 'Already user with email $email',
            statusCode: HttpStatus.unauthorized,
          ),
        );
      }
      final hashedPassword = passwordHasherService.hashPassword(
        createUserDto.password,
      );
      final user = await dataSource.createUser(
        createUserDto.copyWith(
          password: hashedPassword,
          createdAt: DateTime.now(),
          active: true,
          admin: false,
        ),
      );
      return Right(user);
    } catch (e) {
      return const Left(
        ServerFailure(
          message: 'Error creating user',
          statusCode: HttpStatus.unauthorized,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, User>> getUserByEmail(String email) async {
    try {
      final user = await dataSource.getUserByEmail(email);
      return Right(user);
    } catch (e) {
      log(
        e.toString(),
        error: e,
      );
      return const Left(
        ServerFailure(
          message: 'No user found',
          statusCode: HttpStatus.unauthorized,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, User>> getUserById(UserId id) async {
    try {
      final user = await dataSource.getUserById(id);
      return Right(user);
    } catch (e) {
      return const Left(
        ServerFailure(
          message: 'Error fetching user',
          statusCode: HttpStatus.unauthorized,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, User>> loginUser(LoginUserDto loginUserDto) async {
    try {
      final email = loginUserDto.email;
      final userExists = await getUserByEmail(email);
      if (userExists.isLeft) {
        throw const ServerException('Invalid email or password');
      }
      final user = userExists.right;
      final password = loginUserDto.password;
      final isPasswordCorrect =
          passwordHasherService.checkPassword(password, user.password);
      if (!isPasswordCorrect) {
        throw const ServerException('Invalid email or password');
      }
      return Right(user);
    } catch (e) {
      log(
        e.toString(),
        error: e,
      );
      return const Left(
        ServerFailure(
          message: 'Invalid email or password',
          statusCode: HttpStatus.unauthorized,
        ),
      );
    }
  }

  @override
  Future<User> updateUserInfo({
    required UserId id,
    required UpdateUserInfoDto updateUserInfoDto,
  }) {
    // TODO: implement updateUserInfo
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> getUserByToken(String token) async {
    try {
      if (token.isEmpty) throw const UnauthorizedException();
      final decoded = jwtService.verify(token);
      print('decoded $decoded');
      final decodedUser = User.fromJson(decoded);
      final user = await getUserById(decodedUser.id);
      print('UserRepository: user $user');

      if (user.isLeft) {
        print('UserRepository: left ${user.left}');

        return Left(user.left);
      }
      print('UserRepository: rigth ${user.right}');

      return Right(user.right);
    } on HttpException catch (e) {
      return Left(
        ServerFailure(
          message: e.message,
          statusCode: e.statusCode,
        ),
      );
    } catch (e) {
      return const Left(
        ServerFailure(
          message: 'Invalid token',
          statusCode: HttpStatus.forbidden,
        ),
      );
    }
  }
}
