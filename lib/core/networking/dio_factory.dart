import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../my core/databases/api/api_interceptors.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 10);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      // addDioHeaders();
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  // static void addDioHeaders() async {
  //   dio?.options.headers = {
  //     'Accept': 'application/json',
  //     'Authorization': ''
  //     // 'Bearer ${await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken)}',
  //   };
  // }

  // static void setTokenIntoHeaderAfterLogin(String token) {
  //   dio?.options.headers = {
  //     'Authorization': 'Bearer $token',
  //   };
  // }

  static void addDioInterceptor() {
    // dio?.interceptors.add(
    //   PrettyDioLogger(
    //     request: true,
    //     requestHeader: true,
    //     requestBody: true,
    //     responseHeader: true,
    //     responseBody: true,
    //     error: true,
    //   ),
    // );
    dio?.interceptors.add(ApiInterceptor());
    dio?.interceptors.add(LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
    ));
  }
}
