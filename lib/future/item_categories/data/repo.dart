import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../../home/data/models/response_home/response_home.dart';

class ItemCategoriesRepo {
  final ApiService _apiService;

  ItemCategoriesRepo(this._apiService);

  /// :itemCategories

  Future<ApiResult<Item1view>> itemCategories(int categoriesid) async {
    try {
      Map<String, dynamic> map =
          // {
          //   'id': categoriesid,
          //   'userid': getIt<CacheHelper>().getData(key: 'id')
          // };

          {"userid": 1, "categoriesid": categoriesid};
      final response = await _apiService.itemCategories(map);

      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
