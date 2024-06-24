import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';

import '../../model/items_response/items_response.dart';
import '../../model/response_home/response_home.dart';
import '../../model/response_login/response_login.dart';
import '../../model/response_status/response_status.dart';
import 'api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  ///auth
  @POST(ApiConstants.linklogin)
  Future<ResponseLogin> login(@Body() dynamic body);

  @POST(ApiConstants.signUp)
  Future<ResponseStatus> signUp(@Body() dynamic body);

  @POST(ApiConstants.verfycode)
  Future<ResponseStatus> verfCode(@Body() dynamic body);

  @POST(ApiConstants.sendverfycode)
  Future<ResponseStatus> sendVerfCode(@Body() dynamic body);

//forgetPassword
  @POST(ApiConstants.checkEmail)
  Future<ResponseStatus> checkEmail(@Body() dynamic body);

  @POST(ApiConstants.repassword)
  Future<ResponseStatus> repassword(@Body() dynamic body);

  @POST(ApiConstants.verfyCodeForget)
  Future<ResponseStatus> verfCodeForgertPassword(@Body() dynamic body);

  ///home
  @GET(ApiConstants.home)
  Future<ResponseHome> home();

  @POST(ApiConstants.search)
  Future<ItemsResponse> search(@Body() dynamic body);

  @POST(ApiConstants.categories)
  Future<ItemsResponse> itemCategories(@Body() dynamic body);

  @GET(ApiConstants.offers)
  Future<ItemsResponse> offers();
}
