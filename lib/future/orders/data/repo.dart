import 'package:ecommerce_user/core/class/cache_helper.dart';
import 'package:ecommerce_user/core/get_it/get_it.dart';

import '../../../../core/function/formDataPost.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../../../model/order_response/order_response.dart';
import '../../../model/orders_details/orders_details.dart';
import '../../../model/pending_response/pending_response.dart';
import '../../../model/response_status/response_status.dart';

class CheckCartOrder {
  final ApiService _apiService;

  CheckCartOrder(this._apiService);

  /// :GetOrders

  Future<ApiResult<OrderResponse>> getOrders() async {
    try {
      Map<String, dynamic> map = {
        "userid": getIt<CacheHelper>().getData(key: 'id')
      };

      final response = await _apiService.getorder(formDataPost(map));
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  /// :getDetailas

  Future<ApiResult<OrdersDetails>> getDetailas(
    int orderid,
  ) async {
    Map<String, dynamic> map = {
      "id": orderid,
    };

    try {
      final response = await _apiService.detailsOrders(formDataPost(map));
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  /// :deleteOrders
  Future<ApiResult<ResponseStatus>> deleteOrders(int orderid) async {
    try {
      Map<String, dynamic> map = {"id": orderid};

      final response = await _apiService.deleteOrders(formDataPost(map));
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  /// :rating

  Future<ApiResult<ResponseStatus>> rating(
    int orderid,
    String rating,
    String comment,
  ) async {
    try {
      Map<String, dynamic> map = {
        'id': orderid,
        "rating": rating,
        "comment": comment,
      };

      final response = await _apiService.rating(formDataPost(map));
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  /// :pending

  Future<ApiResult<PendingResponse>> pending(
    int orderid,
    String rating,
    String comment,
  ) async {
    try {
      Map<String, dynamic> map = {
        "id": getIt<CacheHelper>().getData(key: 'id')
      };

      final response = await _apiService.pending(formDataPost(map));
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
