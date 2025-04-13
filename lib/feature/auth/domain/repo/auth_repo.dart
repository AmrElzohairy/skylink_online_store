import 'package:dartz/dartz.dart';
import 'package:rika_online_store/core/errors/failure.dart';
import 'package:rika_online_store/feature/auth/data/models/sign_up_body.dart';
import 'package:rika_online_store/feature/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, String>> signUp(SignUpBody signUpBody);
  Future<Either<Failure, UserEntity>> signIn();
}
