import 'dart:developer';

import 'package:ecommerce_user/core/helpers/cache_helper.dart';
import 'package:ecommerce_user/core/get_it/get_it.dart';

import '../../../core/function/send_form_map_post.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../../../core/networking/api_error_model.dart';
import '../../../model/coupon_response/coupon_response.dart';
import '../../../model/response_status/response_status.dart';

class CheckCartOrderRepo {
  final ApiService _apiService;

  CheckCartOrderRepo(this._apiService);

  /// :CheckCartOrder
  ///
  ///
  Future<ApiResult<ResponseStatus>> checkCartOrder(
      CheckCartOrderRequest request) async {
    try {
      Map<String, dynamic> map = {
        "userid": getIt<CacheHelper>().getData(key: 'id'),
        "adressid": request.adressid,
        "ordertype": request.ordertype,
        "pricedelivery": 0,
        "orderprice": request.orderprice,
        "couponid": request.couponid,
        "paymentmethod": request.paymentmethod,
        "playerId": request.playerId
      };

      final response = await _apiService.checkout(
        formDataPost(map),
      );

      log('response status: ${response.status}, message: ${response.messege}');
      if (response.status == "fail") {
        return ApiResult.failure(
          ApiErrorModel(status: response.status, messege: response.messege),
        );
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

class CheckCartOrderRequest {
  final int adressid;
  final int ordertype;
  final int orderprice;
  final int couponid;
  final int paymentmethod;
  final String playerId;

  CheckCartOrderRequest({
    required this.adressid,
    required this.ordertype,
    required this.orderprice,
    required this.couponid,
    required this.paymentmethod,
    required this.playerId,
  });

  Map<String, dynamic> toJson(String userId) {
    return {
      "userid": userId,
      "adressid": adressid,
      "ordertype": ordertype,
      "pricedelivery": 0,
      "orderprice": orderprice,
      "couponid": couponid,
      "paymentmethod": paymentmethod,
      "playerId": playerId,
    };
  }
}
