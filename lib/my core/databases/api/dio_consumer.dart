import 'dart:convert';

import 'package:ecommerce_user/core/networking/api_constants.dart';

import '../../../core/errors/expentions.dart';
import 'api_consumer.dart';
import 'api_interceptors.dart';
import 'end_ponits.dart';
import 'package:dio/dio.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio}) {
    dio.options.baseUrl = ApiConstants.baseUrl;
//dio.options.queryParameters.addAll(other)
    dio.interceptors.add(ApiInterceptor());

    dio.interceptors.add(LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
    ));
  }

  @override
  Future delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    bool isFromData = false,
  }) async {
    try {
      final response = await dio.delete(
        path,
        data: isFromData ? FormData.fromMap(data) : data,
        queryParameters: queryParameters,
      );

      return response.data;
    } on DioException catch (e) {
      handleDioException(e);
    }
  }

  // @override
  // Future get(String path,
  //     {Object? data, Map<String, dynamic>? queryParameters}) async {
  //   try {
  //     final response = await dio.get(
  //       path,
  //       data: isFromData ? FormData.fromMap(data) : data,,
  //       queryParameters: queryParameters,
  //     );
  //     // var vvvv = jsonDecode(response.data);
  //     // return vvvv;
  //     return response.data;
  //   } on DioException catch (e) {
  //     handleDioException(e);
  //   }
  // }

  @override
  Future patch(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    bool isFromData = false,
  }) async {
    try {
      final response = await dio.patch(
        path,
        data: isFromData ? FormData.fromMap(data) : data,
        queryParameters: queryParameters,
      );
      var vvvv = jsonDecode(response.data);
      return vvvv;
      // return response.data;
    } on DioException catch (e) {
      handleDioException(e);
    }
  }

  @override
  Future post(String path,
      {dynamic data,
      Map<String, dynamic>? queryParameters,
      bool isFromData = false}) async {
    try {
      final response = await dio.post(
        path,
        data: isFromData ? FormData.fromMap(data) : data,
        queryParameters: queryParameters,
      );
      var vvvv = jsonDecode(response.data);
      return vvvv;
    } on DioException catch (e) {
      handleDioException(e);
    }
  }

  @override
  Future get(String path,
      {dynamic data,
      Map<String, dynamic>? queryParameters,
      bool isFromData = false}) async {
    try {
      final response = await dio.get(
        path,
        data: isFromData ? FormData.fromMap(data) : data,
        queryParameters: queryParameters,
      );
      var vvvv = jsonDecode(response.data);
      return vvvv;
    } on DioException catch (e) {
      handleDioException(e);
    }
  }
}

// @override
// Future post(
//   String path, {
//   Map<String, dynamic>? data,
//   Map<String, dynamic>? queryParameters,
//   bool isFromData = false,
// }) async {
//   try {
//     final response = await dio.post(
//       path,
//       data: isFromData ? FormData.fromMap(data!) : data,
//       queryParameters: queryParameters,
//     );

//     return response.data;
//   } on DioException catch (e) {
//     handleDioException(e);
//   }
// }
