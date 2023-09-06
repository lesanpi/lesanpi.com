import 'dart:developer';
import 'dart:io';

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
  UserRepositoryImpl(this.dataSource, this.passwordHasherService);

  /// The data source used to perform CRUD operations
  final UserDataSource dataSource;

  /// The password hasher service used to hash and check passwords
  final PasswordHasherService passwordHasherService;

  @override
  Future<Either<Failure, User>> createUser(CreateUserDto createUserDto) {
    // TODO: implement createUser
    throw UnimplementedError();
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
          message: 'Invalid email or password',
          statusCode: HttpStatus.unauthorized,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, User>> getUserById(UserId id) {
    // TODO: implement getUserById
    throw UnimplementedError();
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
}
