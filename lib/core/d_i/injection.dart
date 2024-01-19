import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mide_mate/core/networking/api_services.dart';
import 'package:mide_mate/core/networking/dio_factory.dart';
import 'package:mide_mate/features/login/data/repo/login_repo.dart';
import 'package:mide_mate/features/login/logic/cubit/login_cubit.dart';
import 'package:mide_mate/features/sign_up/data/repository/sing_up_repo.dart';
import 'package:mide_mate/features/sign_up/logic/cubit/sign_up_cubit.dart';

final getIt = GetIt.asNewInstance();
Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton(() => ApiService(dio));
  //Login
  getIt.registerLazySingleton(() => LoginRepo(getIt()));
  getIt.registerFactory(() => LoginCubit(getIt()));
  //singUp
  getIt.registerLazySingleton(() => SignUpRepo( getIt()));
  getIt.registerFactory(() => SignUpCubit(getIt()));
}
