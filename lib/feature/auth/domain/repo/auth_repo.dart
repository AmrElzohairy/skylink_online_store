import 'package:dartz/dartz.dart';
import 'package:rika_online_store/core/errors/failure.dart';
import 'package:rika_online_store/feature/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure,UserEntity>> signUp();
  Future<Either<Failure,UserEntity>> signIn();
}