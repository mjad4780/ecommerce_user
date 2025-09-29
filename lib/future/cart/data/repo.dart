import 'package:ecommerce_user/core/networking/api_error_model.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../../../core/get_it/get_it.dart';
import '../../../core/helpers/cache_helper.dart';
import '../../../model/response_status/response_status.dart';
import 'response_cart.dart';

class CartRepo {
  final ApiService _apiService;

  CartRepo(this._apiService);

  /// :Getcart

  Future<ApiResult<ResponseCart>> getCart() async {
    try {
      Map<String, dynamic> map = {
        "userid": getIt<CacheHelper>().getData(key: 'id')
      };

      final response = await _apiService.getCart(map);

      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  /// :addCart

  Future<ApiResult<ResponseStatus>> addCart(
      int itemid, String color, String size) async {
    // log('itemid: $itemid, color: $color, size: $size, userid: ${1//getIt<CacheHelper>().getData(key: 'id')}');
    Map<String, dynamic> map = {
      "color": color,
      "size": size,
      "itemid": itemid,
      "userid": getIt<CacheHelper>().getData(key: 'id'),
    };

    try {
      final response = await _apiService.addCart(map);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  /// :deleteCart
  Future<ApiResult<ResponseStatus>> deleteCart(int itemid) async {
    try {
      Map<String, dynamic> map = {
        "itemid": itemid,
        "userid": getIt<CacheHelper>().getData(key: 'id'),
      };
      final response = await _apiService.deleteCart(map);

      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  /// :getCountCart

  Future<ApiResult<ResponseStatus>> updateCart(
    updates,
  ) async {
    try {
      Map<String, dynamic> map = {
        "updates": updates,
        "userid": getIt<CacheHelper>().getData(key: 'id'),
      };

      final response = await _apiService.updateCart(map);
      if (response.status == "error") {
        return ApiResult.failure(ApiErrorModel(messege: response.messege));
      } else {
        return ApiResult.success(response);
      }
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  /// :checkCoupon
}
