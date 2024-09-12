import 'package:ecommerce_user/core/class/cache_helper.dart';
import 'package:ecommerce_user/core/get_it/get_it.dart';

import '../../../../core/function/formDataPost.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../../../model/response_home/item1view.dart';

class ItemCategoriesRepo {
  final ApiService _apiService;

  ItemCategoriesRepo(this._apiService);

  /// :itemCategories

  Future<ApiResult<Item1view>> itemCategories(int categoriesid) async {
    try {
      Map<String, dynamic> map = {
        'id': categoriesid,
        'userid': getIt<CacheHelper>().getData(key: 'id')
      };
      final response = await _apiService.itemCategories(formDataPost(map));
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
