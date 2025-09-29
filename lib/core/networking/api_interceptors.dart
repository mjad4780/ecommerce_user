import 'dart:developer';

import 'package:dio/dio.dart';

import '../../key.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
//options.queryParameters[]

    options.headers['Accept-Language'] = "en";
    // options.headers['Content-Type'] = "application/x-www-form-urlencoded";
    options.headers['Content-Type'] = "application/json";
    // options.headers['Stripe-Version'] = "2024-06-20";
    // options.headers['Authorization'] = 'Bearer ${ApiConstants.apikey}';
    options.headers['Authorization'] = 'Bearer $supabaseKey';

    if (options.path.contains(ApiConstants.payment)) {
      log('Payment Request Detected: ${options.path}');

      options.headers['Content-Type'] = "application/x-www-form-urlencoded";

      options.headers['Authorization'] = 'Bearer ${ApiConstants.apikey}';
    } else {
      log('Regular Request Detected: ${options.path}');
      options.headers['Authorization'] = 'Bearer $supabaseKey';
    }

    super.onRequest(options, handler);
  }
}
