import 'package:ecommerce_user/model/cart_response/cart_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../model/get_current_cart/get_current_cart.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _Initial;

  ///:AddCart
  const factory CartState.loadingAdd() = LoadingAdd;
  const factory CartState.successAdd() = SuccessAdd;
  const factory CartState.errorAdd({required String erorr}) = ErrorAdd;

  ///:getCart
  const factory CartState.loadingGet() = LoadingGet;
  const factory CartState.successGet(CartResponse cartResponse) = SuccessGet;
  const factory CartState.erorrGet({required String erorr}) = ErorrGet;

  ///:deleteCart
  const factory CartState.loadingDelete() = LoadingDelete;
  const factory CartState.successdelete() = Successdelete;
  const factory CartState.erorrDelete({required String erorr}) = ErorrDelete;

  ///:getCountCart
  const factory CartState.loadingCount() = LoadingCount;
  const factory CartState.successCount(GetCurrentCart getCurrentCart) =
      SuccessCount;
  const factory CartState.erorrCount({required String erorr}) = ErorrCount;

  ///:checkCoupon
  const factory CartState.loadingCoupon() = LoadingCoupon;
  const factory CartState.successCoupon() = SuccessCoupon;
  const factory CartState.erorrCoupon({required String erorr}) = ErorrCoupon;
}
