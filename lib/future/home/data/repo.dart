import 'package:ecommerce_user/future/home/data/models/response_home/item1view.dart';
import 'package:ecommerce_user/future/home/data/models/response_notification/response_notification.dart';

import '../../../../core/function/formDataPost.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../../../core/class/cache_helper.dart';
import '../../../core/get_it/get_it.dart';
import 'models/response_home/response_home.dart';

class HomeRepo {
  final ApiService _apiService;

  HomeRepo(this._apiService);

  /// :homeData

  Future<ApiResult<ResponseHome>> homeData() async {
    try {
      Map<String, dynamic> map = {
        "id": getIt<CacheHelper>().getData(key: 'id'),
      };
      final response = await _apiService.home(formDataPost(map));
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  /// :search

  Future<ApiResult<Item1view>> search(
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

  ///:getNotification
  Future<ApiResult<ResponseNotification>> getNotification() async {
    Map<String, dynamic> map = {
      "id": getIt<CacheHelper>().getData(key: 'id'),
    };

    try {
      final response = await _apiService.getNotification(formDataPost(map));
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

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
