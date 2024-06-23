import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ecommerce_user/my%20core/databases/api/end_ponits.dart';

import 'package:retrofit/retrofit.dart';

import '../../model/items_response/items_response.dart';

part 'api_service_test.g.dart';

@RestApi(baseUrl: EndPoint.baseUrl)
abstract class ApiServiceTest {
  factory ApiServiceTest(Dio dio, {String baseUrl}) = _ApiServiceTest;

  @POST(EndPoint.search)
  Future<ItemsResponse> search(@Body() dynamic body);

  @GET(EndPoint.home)
  Future<dynamic> home();

  @GET(EndPoint.home)
  Future<dynamic> test();
}
