import 'package:ecommerce_user/core/class/cache_helper.dart';
import 'package:ecommerce_user/core/get_it/get_it.dart';

import '../../../../core/function/formDataPost.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../../../model/adress_response/adress_response.dart';
import '../../../model/response_status/response_status.dart';

class AdressRepo {
  final ApiService _apiService;

  AdressRepo(this._apiService);

  /// :GetAdress

  Future<ApiResult<AdressResponse>> getAdress() async {
    try {
      Map<String, dynamic> map = {
        "userid": getIt<CacheHelper>().getData(key: 'id')
      };

      final response = await _apiService.getAdress(formDataPost(map));
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  /// :addAdress

  Future<ApiResult<ResponseStatus>> addAdress(
    String name,
    String city,
    String street,
    String lat,
    String long,
  ) async {
    Map<String, dynamic> map = {
      "name": name,
      "city": city,
      "street": street,
      "lat": lat,
      "long": long,
      "userid": getIt<CacheHelper>().getData(key: 'id'),
    };

    try {
      final response = await _apiService.addAdress(formDataPost(map));
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  /// :deleteAdress
  Future<ApiResult<ResponseStatus>> deleteAdress(int id) async {
    try {
      Map<String, dynamic> map = {"id": id};

      final response = await _apiService.deleteAdress(formDataPost(map));
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  /// :editAdress

  Future<ApiResult<ResponseStatus>> editAdress(
    int id,
    String name,
    String city,
    String street,
    String lat,
    String long,
  ) async {
    try {
      Map<String, dynamic> map = {
        'id': id,
        "name": name,
        "city": city,
        "street": street,
        "lat": lat,
        "long": long,
        "userid": getIt<CacheHelper>().getData(key: 'id'),
      };

      final response = await _apiService.editAdress(formDataPost(map));
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
