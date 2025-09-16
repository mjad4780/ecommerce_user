import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';
import '../../../../../core/networking/api_error_model.dart';

class ErrorHandler {
  static ApiErrorModel handle(dynamic error) {
    print('Error occurred: ${error.toString()}');

    // معالجة أخطاء Firebase
    if (error is FirebaseException) {
      return _handleFirebaseError(error);
    }

    // معالجة أخطاء الشبكة والنظام
    if (error is SocketException) {
      return ApiErrorModel(
        messege: "No internet connection. Please check your network.",
      );
    }
    if (error is HttpException) {
      return ApiErrorModel(
        messege: "HTTP protocol error: ${error.message}",
      );
    }
    if (error is HandshakeException) {
      return ApiErrorModel(
        messege: "SSL handshake failed. Please check your connection.",
      );
    }
    if (error is TimeoutException) {
      return ApiErrorModel(
        messege: "Connection timeout. Please try again later.",
      );
    }
    if (error is FormatException) {
      return ApiErrorModel(
        messege: "Data format error. Please try again.",
      );
    }
    if (error is TlsException) {
      return ApiErrorModel(
        messege: "TLS/SSL communication error.",
      );
    }

    // الخطأ العام
    return ApiErrorModel(
      messege: "Unexpected error: ${error.toString()}",
    );
  }

  static ApiErrorModel _handleFirebaseError(FirebaseException error) {
    switch (error.code) {
      case 'permission-denied':
        return ApiErrorModel(
          status: '403',
          messege: "You don't have permission to perform this action.",
        );
      case 'unavailable':
        return ApiErrorModel(
          status: '503',
          messege:
              "Firebase service is currently unavailable. Please try again later.",
        );
      case 'network-error':
        return ApiErrorModel(
          status: 'network-error',
          messege:
              "Network error occurred. Please check your internet connection.",
        );
      case 'quota-exceeded':
        return ApiErrorModel(
          status: '429',
          messege: "Quota exceeded. Please try again later.",
        );
      default:
        return ApiErrorModel(
          status: error.code,
          messege: error.message ?? 'Firebase error occurred',
        );
    }
  }

  // دالة مساعدة للتحقق من خطأ الشبكة
  static bool isNetworkError(ApiErrorModel error) {
    return error.messege!.toLowerCase().contains('network') ||
        error.messege!.toLowerCase().contains('internet') ||
        error.messege!.toLowerCase().contains('connection') ||
        error.status == 'network-error';
  }

  // دالة مساعدة للتحقق من إمكانية إعادة المحاولة
  static bool shouldRetry(ApiErrorModel error) {
    return isNetworkError(error) ||
        error.status == '503' || // unavailable
        error.status == '429' || // too many requests
        error.status == '500'; // internal error
  }
}
