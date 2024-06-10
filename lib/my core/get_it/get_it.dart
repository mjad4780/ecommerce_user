import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../future/auth/Login/data/data_login.dart';
import '../../future/auth/Login/logic/cubit/login_cubit.dart';
import '../../future/auth/forgetpassword/data/ForgetPassword.dart';
import '../../future/auth/forgetpassword/logic/cubit/forger_password_cubit.dart';
import '../../future/auth/sign_up/data/data_sigin_up.dart';
import '../../future/auth/sign_up/logic/cubit/sign_up_cubit.dart';
import '../../future/auth/verfyCode/data/data_verfycode.dart';
import '../../future/auth/verfyCode/logic/cubit/verfycode_cubit.dart';
import '../databases/api/dio_consumer.dart';
import '../databases/cache/cache_helper.dart';

final getIt = GetIt.instance;
void setupServise() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<DioConsumer>(DioConsumer(dio: getIt<Dio>()));
  getIt.registerFactory(
      () => ForgerPasswordCubit(ForgetPassword(api: getIt<DioConsumer>())));
  getIt.registerFactory(() => LoginCubit(LoginDate(api: getIt<DioConsumer>())));
  getIt.registerFactory(
      () => SignUpCubit(SignUpDate(api: getIt<DioConsumer>())));
  getIt.registerFactory(
      () => VerfycodeCubit(VerfyCodeDate(api: getIt<DioConsumer>())));

  // getIt.registerSingleton<Crud>(
  //     Crud(api: getIt<DioConsumer>(), networkInfo: getIt<NetworkInfoImpl>()));
  // getIt.registerSingleton<StatusReqest>( StatusReqest());
}
