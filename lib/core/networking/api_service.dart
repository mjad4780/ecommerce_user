import 'package:dio/dio.dart';
import 'package:ecommerce_user/my%20core/databases/api/end_ponits.dart';

import 'package:retrofit/retrofit.dart';

import '../../model/Item.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: EndPoint.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(EndPoint.search)
  Future<ItemsModel> search(@Body() dynamic body);
}
