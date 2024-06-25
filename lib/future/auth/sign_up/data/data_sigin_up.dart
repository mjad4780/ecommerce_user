import 'package:ecommerce_user/model/response_status/response_status.dart';

import '../../../../core/function/formDataPost.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';

class SignUpDate {
  final ApiService _api;

  SignUpDate(this._api);

  Future<ApiResult<ResponseStatus>> signUp(
      String email, String password, String phone, String username) async {
    Map<String, dynamic> map = {
      "username": username,
      "email": email,
      "phone": phone,
      "password": password
    };
    try {
      final response = await _api.signUp(formDataPost(map));
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
