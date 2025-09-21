import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import 'api_error_model.dart';

class ErrorHandler {
  static ApiErrorModel handle(dynamic error) {
    log(error.toString());
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionError:
          return ApiErrorModel(
            messege: "Connection to server failed. Please check your network.",
          );
        case DioExceptionType.cancel:
          return ApiErrorModel(messege: "Request to server was cancelled");
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(
            messege: "Connection timeout. Please try again later.",
          );
        case DioExceptionType.unknown:
          return _handleUnknownError(error);
        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(
            messege: "Receive timeout. Server is not responding.",
          );
        case DioExceptionType.badResponse:
          return _handleError(error.response);
        case DioExceptionType.sendTimeout:
          return ApiErrorModel(
            messege: "Send timeout. Please check your network speed.",
          );
        case DioExceptionType.badCertificate:
          return ApiErrorModel(messege: "SSL certificate verification failed");
      }
    } else if (error is StripeException) {
      if (error.error.code == FailureCode.Canceled) {
        return ApiErrorModel(
          status: 'canceled',
          messege: "User canceled the payment flow.",
        );
      } else {
        return ApiErrorModel(
          status: 'failed',
          messege: error.error.localizedMessage ?? "Payment failed",
        );
      }
    } else {
      return ApiErrorModel(messege: "Unexpected error: ${error.toString()}");
    }
  }

  static ApiErrorModel _handleUnknownError(DioException error) {
    final err = error.error;
    if (err is SocketException) {
      return ApiErrorModel(messege: "No internet connection");
    } else if (err is HandshakeException) {
      return ApiErrorModel(messege: "SSL handshake failed");
    } else if (err is FormatException) {
      return ApiErrorModel(messege: "Data format error");
    } else if (err is HttpException) {
      return ApiErrorModel(messege: "HTTP protocol error");
    } else if (err is TimeoutException) {
      return ApiErrorModel(messege: "Connection timeout");
    } else if (err is StripeException) {
      if (err.error.code == FailureCode.Canceled) {
        return ApiErrorModel(
            status: 'canceled', messege: "User canceled the payment flow.");
      } else {
        return ApiErrorModel(
            messege: "Payment failed: ${err.error.localizedMessage}");
      }
    } else if (err is TlsException) {
      return ApiErrorModel(messege: "TLS/SSL communication error");
    } else if (err != null) {
      return ApiErrorModel(messege: "Unexpected error: ${err.toString()}");
    } else {
      return ApiErrorModel(messege: "Connection failed due to unknown reasons");
    }
  }

  static ApiErrorModel _handleError(Response? response) {
    if (response == null) {
      return ApiErrorModel(
        messege: "No response received from server$response",
      );
    }

    try {
      return ApiErrorModel.fromJson(response.data);
    } catch (e) {
      return ApiErrorModel(
        status: response.statusCode.toString(),
        messege: response.statusMessage ?? 'خطأ في الخادم',
      );
    }
  }
}
