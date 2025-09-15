import '../../../../core/function/send_form_map_post.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../../../../model/response_status/response_status.dart';

class VerfyCodeDate {
  final ApiService _api;

  VerfyCodeDate(this._api);

  ///:verfycode
  Future<ApiResult<ResponseStatus>> verfycode(
      String email, String veryfycode) async {
    Map<String, dynamic> map = {
      "email": email,
      "verfycode": veryfycode,
    };
    try {
      final response = await _api.verfCode(formDataPost(map));
      if (response.status == "fail") {
        return ApiResult.failure(
            ApiErrorModel(status: response.status, messege: response.messege));
      }
      return ApiResult.success(response);
    } catch (e) {
      var error = ErrorHandler.handle(e);
      return ApiResult.failure(error);
    }
  }

  ///: Sendverfycode
  Future<ApiResult<ResponseStatus>> sendVerfyCode(
    String email,
  ) async {
    Map<String, dynamic> map = {
      "email": email,
    };
    try {
      final response = await _api.sendVerfCode(formDataPost(map));
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
