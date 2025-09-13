import 'package:ecommerce_user/core/class/cache_helper.dart';
import 'package:ecommerce_user/core/get_it/get_it.dart';

import '../../../../core/function/formDataPost.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../../../core/networking/api_error_model.dart';
import '../../../model/pending_response/pending_response.dart';
import '../../../model/response_detilas/response_detilas.dart';
import '../../../model/response_status/response_status.dart';
import 'response_orders/response_orders.dart';

class OrdersRepo {
  final ApiService _apiService;

  OrdersRepo(this._apiService);

  /// :GetOrders

  Future<ApiResult<ResponseOrders>> getOrders() async {
    try {
      Map<String, dynamic> map = {
        "id": getIt<CacheHelper>().getData(key: 'id')
      };

      final response = await _apiService.getorder(formDataPost(map));
      if (response.status == "fail") {
        return ApiResult.failure(
            ApiErrorModel(status: response.status, messege: response.messege));
      }
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  /// :getDetailas

  Future<ApiResult<ResponseDetails>> getDetailas(
    int orderid,
  ) async {
    Map<String, dynamic> map = {
      "id": orderid,
    };

    try {
      final response = await _apiService.detailsOrders(formDataPost(map));
      if (response.status == "fail") {
        return ApiResult.failure(
            ApiErrorModel(status: response.status, messege: response.messege));
      }
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  /// :deleteOrders
  Future<ApiResult<ResponseStatus>> deleteOrders(int orderid) async {
    try {
      Map<String, dynamic> map = {
        "id": orderid,
        "userid": getIt<CacheHelper>().getData(key: 'id')
      };

      final response = await _apiService.deleteOrders(formDataPost(map));
      if (response.status == "fail") {
        return ApiResult.failure(
            ApiErrorModel(status: response.status, messege: response.messege));
      }
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  /// :pending

  Future<ApiResult<PendingResponse>> pending() async {
    try {
      Map<String, dynamic> map = {
        "id": getIt<CacheHelper>().getData(key: 'id')
      };

      final response = await _apiService.pending(formDataPost(map));
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
