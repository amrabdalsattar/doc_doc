import 'package:dio/dio.dart';

import 'package:get_it/get_it.dart';

import '../../features/home/data/apis/home_api_service.dart';
import '../../features/home/data/repos/specializations_repo.dart';
import '../../features/login/data/repos/login_repo.dart';
import '../../features/signup/data/repos/signup_repo.dart';

import '../networking/api_service.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  // Networking
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));

  // Sign up
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));

  // Specializations
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<SpecializationsRepo>(
      () => SpecializationsRepo(getIt()));
}
