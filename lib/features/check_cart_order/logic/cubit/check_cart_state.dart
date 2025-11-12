import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../model/coupon_response/coupon_response.dart';
part 'check_cart_state.freezed.dart';

@freezed
class CheckCartState with _$CheckCartState {
  const factory CheckCartState.initial() = _Initial;

  const factory CheckCartState.loading() = Loading;
  const factory CheckCartState.success() = Success;
  const factory CheckCartState.erorr({required String erorr}) = Erorr;

  ///:checkCoupon
  const factory CheckCartState.loadingCoupon() = LoadingCoupon;
  const factory CheckCartState.successCoupon(CouponResponse coupon) =
      SuccessCoupon;
  const factory CheckCartState.erorrCoupon({required String erorr}) =
      ErorrCoupon;

  factory CheckCartState.selectAdress(String selectAdressIdS) = SelectAdress;
  factory CheckCartState.selectType(String orderTypeS) = SelectType;
  factory CheckCartState.selectPayment(String selectedPaymentOptionS) =
      SelectPayment;

  const factory CheckCartState.loadingPayment() = LoadingPayment;
  const factory CheckCartState.uccessPayment() = SuccessPayment;
  const factory CheckCartState.erorrpayment({required String erorr}) =
      Erorrpayment;
}
