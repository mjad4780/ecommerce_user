import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../databases/api/dio_consumer.dart';
import '../databases/cache/cache_helper.dart';

final getIt = GetIt.instance;
void setupServise() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<DioConsumer>(DioConsumer(dio: getIt<Dio>()));
  // getIt.registerFactory(() => MainCubit());

  // getIt.registerSingleton<Crud>(
  //     Crud(api: getIt<DioConsumer>(), networkInfo: getIt<NetworkInfoImpl>()));
  // getIt.registerSingleton<StatusReqest>( StatusReqest());
}
