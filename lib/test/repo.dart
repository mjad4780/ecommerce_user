import 'package:ecommerce_user/core/function/formDataPost.dart';

import '../core/networking/api_error_handler.dart';
import '../core/networking/api_result.dart';

import '../model/items_response/items_response.dart';
import 'networking/api_service_test.dart';

class LoginRepo {
  final ApiServiceTest _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<ItemsResponse>> search() async {
    Map<String, dynamic> ff = {"search": "z"};
    try {
      final response = await _apiService.search(formDataPost(ff));
      // List<Datum> data = response.data!;
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }

  Future<ApiResult<dynamic>> home() async {
    try {
      final response = await _apiService.home();
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}
