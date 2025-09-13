import '../../../../core/function/formDataPost.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../../../../model/response_login/response_login.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<ResponseLogin>> login(String email, String password) async {
    Map<String, dynamic> ff = {"email": email, "password": password};

    try {
      final response = await _apiService.login(formDataPost(ff));

      if (response.status == "fail") {
        return ApiResult.failure(
            ApiErrorModel(status: response.status, messege: response.messege));
      }

      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
