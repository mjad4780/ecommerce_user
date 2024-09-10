import '../../../../core/function/formDataPost.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../../../../model/response_status/response_status.dart';

class ForgetPassword {
  final ApiService _apiService;

  ForgetPassword(this._apiService);

  /// :check email

  Future<ApiResult<ResponseStatus>> checkEmail(
    String email,
  ) async {
    Map<String, dynamic> map = {
      "email": email,
    };

    try {
      final response = await _apiService.checkEmail(formDataPost(map));
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  /// :repassword

  Future<ApiResult<ResponseStatus>> repassword(
      String email, String password) async {
    Map<String, dynamic> map = {"email": email, 'password': password};

    try {
      final response = await _apiService.repassword(formDataPost(map));
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  /// :verfycode_forget
  Future<ApiResult<ResponseStatus>> verfyCodeForget(
      String email, String verfycode) async {
    Map<String, dynamic> map = {"email": email, 'verfycode': verfycode};

    try {
      final response =
          await _apiService.verfCodeForgertPassword(formDataPost(map));
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
