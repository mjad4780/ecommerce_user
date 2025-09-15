import 'package:ecommerce_user/core/class/cache_helper.dart';
import 'package:ecommerce_user/core/get_it/get_it.dart';

import '../../../../core/function/formDataPost.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../../home/data/models/response_home/response_home.dart';
import '../../../model/response_status/response_status.dart';

class FavoriteRepo {
  final ApiService _apiService;

  FavoriteRepo(this._apiService);

  /// :GetFavorite

  Future<ApiResult<ResponseHome>> getFavorite() async {
    try {
      Map<String, dynamic> map = {
        "userid": getIt<CacheHelper>().getData(key: 'id')
      };

      final response = await _apiService.getFavorite(formDataPost(map));

      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  /// :addFavorite

  Future<ApiResult<ResponseStatus>> addFavorite(
    int itemid,
  ) async {
    Map<String, dynamic> map = {
      "id": itemid,
      "userid": getIt<CacheHelper>().getData(key: 'id'),
    };

    try {
      final response = await _apiService.addFavorite(formDataPost(map));

      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  /// :deleteFavorite
  Future<ApiResult<ResponseStatus>> deleteFavorite(
    int itemid,
  ) async {
    try {
      Map<String, dynamic> map = {
        "id": itemid,
        "userid": getIt<CacheHelper>().getData(key: 'id'),
      };
      final response = await _apiService.deletefavorite(formDataPost(map));

      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
