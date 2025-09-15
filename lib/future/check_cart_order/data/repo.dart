import 'package:ecommerce_user/core/helpers/cache_helper.dart';
import 'package:ecommerce_user/core/get_it/get_it.dart';

import '../../../core/function/send_form_map_post.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../../../core/networking/api_error_model.dart';
import '../../../model/coupon_response/coupon_response.dart';
import '../../../model/response_status/response_status.dart';

class CheckCartOrder {
  final ApiService _apiService;

  CheckCartOrder(this._apiService);

  /// :CheckCartOrder

  Future<ApiResult<ResponseStatus>> checkCartOrder(int adressid, int ordertype,
      int orderprice, int couponid, int paymentmethod, String playerId) async {
    try {
      Map<String, dynamic> map = {
        "userid": getIt<CacheHelper>().getData(key: 'id'),
        "adressid": adressid,
        "ordertype": ordertype,
        "pricedelivery": 0,
        "orderprice": orderprice,
        "couponid": couponid,
        "paymentmethod": paymentmethod,
        "playerId": playerId
      };

      final response = await _apiService.checkout(formDataPost(map));
      if (response.status == "fail") {
        return ApiResult.failure(
            ApiErrorModel(status: response.status, messege: response.messege));
      }
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<CouponResponse>> checkCoupon(
      String couponName, int orderprice) async {
    try {
      Map<String, dynamic> map = {
        "coupon": couponName,
        "orderprice": orderprice
      };

      final response = await _apiService.checkCoupon(formDataPost(map));

      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
