import '../../../../core/function/formDataPost.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../../../model/items_response/items_response.dart';
import '../../../model/response_home/response_home.dart';

class HomeRepo {
  final ApiService _apiService;

  HomeRepo(this._apiService);

  /// :homeData

  Future<ApiResult<ResponseHome>> homeData() async {
    try {
      final response = await _apiService.home();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  /// :search

  Future<ApiResult<ItemsResponse>> search(
    String search,
  ) async {
    Map<String, dynamic> map = {
      "search": search,
    };

    try {
      final response = await _apiService.search(formDataPost(map));
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  /// :offers
  Future<ApiResult<ItemsResponse>> offers() async {
    try {
      final response = await _apiService.offers();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
