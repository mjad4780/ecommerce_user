import '../../../core/class/cache_helper.dart';
import '../../../core/get_it/get_it.dart';
import 'end_ponits.dart';
import 'package:dio/dio.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
//options.queryParameters[]

    options.headers['Accept-Language'] = "en";

    options.headers['Content-Type'] = "application/json";

    options.headers['Authorization'] =
        getIt<CacheHelper>().getDataString(key: ApiKey.token);

    super.onRequest(options, handler);
  }
}
