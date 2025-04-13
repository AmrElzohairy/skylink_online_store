import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:rika_online_store/core/networking/dio_client.dart';
import 'package:rika_online_store/feature/auth/data/repo/auth_repo_impl.dart';
import 'package:rika_online_store/feature/auth/domain/repo/auth_repo.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  getIt.registerSingleton<DioClient>(DioClient(Dio()));
  getIt.registerSingleton<AuthRepo>(AuthRepoImpl(dio: getIt<DioClient>()));
}
