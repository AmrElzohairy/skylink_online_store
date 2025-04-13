import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:rika_online_store/core/errors/failure.dart';
import 'package:rika_online_store/core/networking/api_end_points.dart';
import 'package:rika_online_store/core/networking/dio_client.dart';
import 'package:rika_online_store/feature/auth/data/models/sign_up_body.dart';
import 'package:rika_online_store/feature/auth/domain/entities/user_entity.dart';
import 'package:rika_online_store/feature/auth/domain/repo/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final DioClient dio;

  AuthRepoImpl({required this.dio});
  @override
  Future<Either<Failure, UserEntity>> signIn() {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> signUp(SignUpBody signUpBody) async {
    try {
      await dio.post(ApiEndpoints.signUp, data: signUpBody.toJson());
      return const Right(null);
    } on Exception catch (e) {
      if (e is DioException) {
        log("Dio error in signUp method in AuthRepoImpl: $e");
        return Left(ServerFailure.fromDiorError(e));
      }
      log("Error in signUp method in AuthRepoImpl: $e");
      return Left(ServerFailure(e.toString()));
    }
  }
}
