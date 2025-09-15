import 'package:ecommerce_user/future/home/data/models/response_home/response_home.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';

class OffersRepo {
  final ApiService _apiService;

  OffersRepo(this._apiService);

  /// :offers
  Future<ApiResult<Item1view>> offers() async {
    try {
      final response = await _apiService.offers();

      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
