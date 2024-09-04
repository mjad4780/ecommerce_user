import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ecommerce_user/model/pending_response/pending_response.dart';

import 'package:retrofit/retrofit.dart';

import '../../model/adress_response/adress_response.dart';
import '../../model/cart_response/cart_response.dart';
import '../../model/coupon_response/coupon_response.dart';
import '../../model/favorite_response/favorite_response.dart';
import '../../model/get_current_cart/get_current_cart.dart';
import '../../model/order_response/order_response.dart';
import '../../model/response_detilas/response_detilas.dart';
import '../../model/response_home/response_home.dart';
import '../../model/response_items/response_items.dart';
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
  Future<ResponseItems> search(@Body() dynamic body);

  @POST(ApiConstants.categories)
  Future<ResponseItems> itemCategories(@Body() dynamic body);

  @GET(ApiConstants.offers)
  Future<ResponseItems> offers();
  //// Address
  @POST(ApiConstants.adressAdd)
  Future<ResponseStatus> addAdress(@Body() dynamic body);

  @POST(ApiConstants.adressDelete)
  Future<ResponseStatus> deleteAdress(@Body() dynamic body);

  @POST(ApiConstants.adressEdit)
  Future<ResponseStatus> editAdress(@Body() dynamic body);
  @POST(ApiConstants.adressGet)
  Future<AdressResponse> getAdress(@Body() dynamic body);
  //// Cart
  @POST(ApiConstants.addCart)
  Future<ResponseStatus> addCart(@Body() dynamic body);

  @POST(ApiConstants.deleteCart)
  Future<ResponseStatus> deleteCart(@Body() dynamic body);

  @POST(ApiConstants.getCurrentCart)
  Future<GetCurrentCart> getCurrentCart(@Body() dynamic body);
  @POST(ApiConstants.getcart)
  Future<CartResponse> getCart(@Body() dynamic body);

  ///Coupon
  @POST(ApiConstants.checkCoupon)
  Future<CouponResponse> checkCoupon(@Body() dynamic body);

  //// Favorite
  @POST(ApiConstants.addfavorite)
  Future<ResponseStatus> addFavorite(@Body() dynamic body);

  @POST(ApiConstants.removefavorite)
  Future<ResponseStatus> deletefavorite(@Body() dynamic body);

  @POST(ApiConstants.getfavorite)
  Future<FavoriteResponse> getFavorite(@Body() dynamic body);

  /// rating
  @POST(ApiConstants.rating)
  Future<ResponseStatus> rating(@Body() dynamic body);

  ////orders
  @POST(ApiConstants.archive)
  Future<PendingResponse> archive(@Body() dynamic body);

  @POST(ApiConstants.checkout)
  Future<ResponseStatus> checkout(@Body() dynamic body);

  @POST(ApiConstants.delete)
  Future<ResponseStatus> deleteOrders(@Body() dynamic body);

  @POST(ApiConstants.details)
  Future<ResponseDetails> detailsOrders(@Body() dynamic body);

  @POST(ApiConstants.getorder)
  Future<OrderResponse> getorder(@Body() dynamic body);

  @POST(ApiConstants.pending)
  Future<PendingResponse> pending(@Body() dynamic body);
}
