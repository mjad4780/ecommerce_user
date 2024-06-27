import 'package:ecommerce_user/core/class/cache_helper.dart';
import 'package:ecommerce_user/core/get_it/get_it.dart';

import '../../../../core/function/formDataPost.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../../../model/response_status/response_status.dart';

class CheckCartOrder {
  final ApiService _apiService;

  CheckCartOrder(this._apiService);

  /// :CheckCartOrder

  Future<ApiResult<ResponseStatus>> checkCartOrder(
    int adressid,
    int ordertype,
    int pricedelivery,
    double orderprice,
    int couponid,
    int paymentmethod,
    int coupondiscount,
  ) async {
    try {
      Map<String, dynamic> map = {
        "userid": getIt<CacheHelper>().getData(key: 'id'),
        "adressid": adressid,
        "ordertype": ordertype,
        "pricedelivery": pricedelivery,
        "orderprice": orderprice,
        "couponid": couponid,
        "paymentmethod": paymentmethod,
        "coupondiscount": coupondiscount,
      };

      final response = await _apiService.checkout(formDataPost(map));
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
