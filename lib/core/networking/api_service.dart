import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ecommerce_user/future/check_cart_order/data/model/payment/payment.dart';
import 'package:ecommerce_user/model/pending_response/pending_response.dart';

import 'package:retrofit/retrofit.dart';

import '../../future/cart/data/response_cart/response_cart.dart';
import '../../future/check_cart_order/data/model/elphon/elphon.dart';
import '../../future/check_cart_order/data/model/payment_body_tojson.dart';
import '../../future/home/data/models/response_notification/response_notification.dart';
import '../../future/orders/data/response_orders/response_orders.dart';
import '../../model/adress_response/adress_response.dart';
import '../../model/coupon_response/coupon_response.dart';
import '../../model/get_current_cart/get_current_cart.dart';
import '../../model/response_detilas/response_detilas.dart';
import '../../future/home/data/models/response_home/item1view.dart';
import '../../future/home/data/models/response_home/response_home.dart';
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
  @POST(ApiConstants.home)
  Future<ResponseHome> home(@Body() dynamic body);

  @POST(ApiConstants.search)
  Future<Item1view> search(@Body() dynamic body);

  @POST(ApiConstants.categories)
  Future<Item1view> itemCategories(@Body() dynamic body);

  @GET(ApiConstants.offers)
  Future<Item1view> offers();
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
  Future<ResponseCart> getCart(@Body() dynamic body);

  ///Coupon
  @POST(ApiConstants.checkCoupon)
  Future<CouponResponse> checkCoupon(@Body() dynamic body);

  //// Favorite
  @POST(ApiConstants.addfavorite)
  Future<ResponseStatus> addFavorite(@Body() dynamic body);

  @POST(ApiConstants.removefavorite)
  Future<ResponseStatus> deletefavorite(@Body() dynamic body);

  @POST(ApiConstants.getfavorite)
  Future<ResponseHome> getFavorite(@Body() dynamic body);

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
  Future<ResponseOrders> getorder(@Body() dynamic body);

  @POST(ApiConstants.pending)
  Future<PendingResponse> pending(@Body() dynamic body);

  ///:GetNotification
  @POST(ApiConstants.getnotification)
  Future<ResponseNotification> getNotification(@Body() dynamic body);

  ///:add payment
  @POST(ApiConstants.payment)
  Future<Payment> greatePayment(@Body() PaymentBodyTojson body);

  ///:getBook

  @GET(
      'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=programming&startIndex={pageNumber}')
  Future<Map<String, dynamic>> getBook(@Path('pageNumber') int pageNumber);

  ///:add ephemeral
  @POST(ApiConstants.ephemeral)
  Future<Elphon> ephemeral(@Body() Map<String, dynamic> body);
}
