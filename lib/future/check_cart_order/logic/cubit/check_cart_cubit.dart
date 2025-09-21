import 'package:ecommerce_user/core/networking/api_result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/function/alert_dialog.dart';
import '../../data/model/payment_body_tojson.dart';
import '../../data/repo.dart';
import '../../data/repo_payment.dart';
import 'check_cart_state.dart';

class CheckCartCubit extends Cubit<CheckCartState> {
  CheckCartCubit(this._checkCartOrder, this.repoPayment)
      : super(const CheckCartState.initial());
  final RepoPayment repoPayment;
  final CheckCartOrderRepo _checkCartOrder;
  TextEditingController couponName = TextEditingController();

  int? selectadressId;
  int couponId = 0;
  int? orderType;
  int? selectedPaymentOption;
  String? selectadressIdS;

  String? orderTypeS;
  String? selectedPaymentOptionS;

//:CheckCart
  emitCheckCart(BuildContext context, int orderprice, String playerId) async {
    if (selectedPaymentOption == null ||
        selectadressId == null ||
        orderType == null) {
      return testAlert(context, "erorr",
          "please choose Adress  and Orders Type and order Payment ");
    }
    final request = CheckCartOrderRequest(
      adressid: selectadressId!,
      ordertype: orderType!,
      orderprice: orderprice,
      couponid: couponId,
      paymentmethod: selectedPaymentOption!,
      playerId: playerId,
    );

    emit(const CheckCartState.loading());
    // await Future.delayed(const Duration(seconds: 3));
    final response = await _checkCartOrder.checkCartOrder(request);
    response.when(success: (responsehome) {
      emit(const CheckCartState.success());
    }, failure: (error) {
      emit(CheckCartState.erorr(erorr: error.messege ?? ''));
    });
  }

  selectAdress(int selectAdressId, String selectAdressIdS) {
    selectadressId = selectAdressId;
    selectadressIdS = selectAdressIdS;

    emit(CheckCartState.selectAdress(selectAdressIdS));
  }

  selectPyment(String selectPyments) {
    if (selectPyments == 'payment card') {
      selectedPaymentOption = 1;
    } else {
      selectedPaymentOption = 0;
    }

    selectedPaymentOptionS = selectPyments;

    emit(CheckCartState.selectPayment(selectPyments));
  }

  selectType(String selectTypeS) {
    if (selectTypeS == 'recive') {
      orderType = 1;
    } else {
      orderType = 0;
    }
    orderTypeS = selectTypeS;
    emit(CheckCartState.selectType(selectTypeS));
  }

  int? grandTotalPrice;
  String? message;
  //:checkCoupon
  emitcheckCoupon(int orderprice) async {
    emit(const CheckCartState.loadingCoupon());
    final response =
        await _checkCartOrder.checkCoupon(couponName.text, orderprice);
    response.when(success: (couponData) {
      // message =couponData
      grandTotalPrice = couponData.totalprice;
      couponId = couponData.data?.couponId ?? 0;
      emit(CheckCartState.successCoupon(couponData));
    }, failure: (error) {
      emit(CheckCartState.erorrCoupon(erorr: error.messege ?? ''));
    });
  }

  //:greatePayment
  greatePayment(PaymentBodyTojson data, BuildContext context, int orderprice,
      String playerId) async {
    if (selectedPaymentOption == null ||
        selectadressId == null ||
        orderType == null) {
      return testAlert(context, "erorr",
          "please choose Adress  and Orders Type and order Payment ");
    }
    final request = CheckCartOrderRequest(
      adressid: selectadressId!,
      ordertype: orderType!,
      orderprice: orderprice,
      couponid: couponId,
      paymentmethod: selectedPaymentOption!,
      playerId: playerId,
    );
    emit(const CheckCartState.loadingPayment());
    final response = await repoPayment.greatePayment(data, request);
    response.when(success: (couponData) {
      emit(const CheckCartState.uccessPayment());
    }, failure: (error) {
      if (error.status?.toLowerCase() == 'canceled') {
        emit(const CheckCartState.initial());
      } else {
        emit(CheckCartState.erorrpayment(erorr: error.messege ?? ''));
      }
    });
  }
}
