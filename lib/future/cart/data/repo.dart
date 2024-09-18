import 'package:ecommerce_user/core/class/cache_helper.dart';
import 'package:ecommerce_user/core/get_it/get_it.dart';
import 'package:ecommerce_user/model/cart_response/cart_response.dart';

import '../../../../core/function/formDataPost.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../../../model/coupon_response/coupon_response.dart';
import '../../../model/get_current_cart/get_current_cart.dart';
import '../../../model/response_status/response_status.dart';

class CartRepo {
  final ApiService _apiService;

  CartRepo(this._apiService);

  /// :Getcart

  Future<ApiResult<CartResponse>> getCart() async {
    try {
      Map<String, dynamic> map = {
        "userid": getIt<CacheHelper>().getData(key: 'id')
      };

      final response = await _apiService.getCart(formDataPost(map));
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  /// :addCart

  Future<ApiResult<ResponseStatus>> addCart(
      int itemid, String color, String size) async {
    Map<String, dynamic> map = {
      "color": color,
      "size": size,
      "cart_itemid": itemid,
      "cart_userid": getIt<CacheHelper>().getData(key: 'id'),
    };

    try {
      final response = await _apiService.addCart(formDataPost(map));
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  /// :deleteCart
  Future<ApiResult<ResponseStatus>> deleteCart(int itemid) async {
    try {
      Map<String, dynamic> map = {
        "cart_itemid": itemid,
        "cart_userid": getIt<CacheHelper>().getData(key: 'id'),
      };
      final response = await _apiService.deleteCart(formDataPost(map));
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  /// :getCountCart

  Future<ApiResult<GetCurrentCart>> getCountCart(
    int itemid,
  ) async {
    try {
      Map<String, dynamic> map = {
        "itemid": itemid,
        "userid": getIt<CacheHelper>().getData(key: 'id'),
      };

      final response = await _apiService.getCurrentCart(formDataPost(map));
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  /// :checkCoupon

  Future<ApiResult<CouponResponse>> checkCoupon(
    String couponName,
  ) async {
    try {
      Map<String, dynamic> map = {
        "coupon": couponName,
      };

      final response = await _apiService.checkCoupon(formDataPost(map));
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
