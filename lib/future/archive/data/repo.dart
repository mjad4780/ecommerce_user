import 'package:ecommerce_user/core/helpers/cache_helper.dart';
import 'package:ecommerce_user/core/get_it/get_it.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';

import '../../../core/networking/api_error_model.dart';
import '../../../model/pending_response/pending_response.dart';
import '../../../model/response_status/response_status.dart';

class OrderArchive {
  final ApiService _apiService;

  OrderArchive(this._apiService);

  /// :OrderArchive

  Future<ApiResult<PendingResponse>> orderArchive() async {
    try {
      Map<String, dynamic> map = {
        "id": getIt<CacheHelper>().getData(key: 'id')
      };

      final response = await _apiService.archive(map);

      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  /// :rating

  Future<ApiResult<ResponseStatus>> rating(
    int orderid,
    int rating,
    String comment,
  ) async {
    try {
      Map<String, dynamic> map = {
        'id': orderid,
        "rating": rating,
        "comment": comment,
      };

      final response = await _apiService.rating(map);
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
