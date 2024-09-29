import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/function/AlertDialog.dart';
import '../../data/model/payment_body_tojson.dart';
import '../../data/repo.dart';
import '../../data/repo_payment.dart';
import 'check_cart_state.dart';

class CheckCartCubit extends Cubit<CheckCartState> {
  CheckCartCubit(this._checkCartOrder, this.repoPayment)
      : super(const CheckCartState.initial());
  final RepoPayment repoPayment;
  final CheckCartOrder _checkCartOrder;
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
    if (selectedPaymentOption == null &&
        selectadressId == null &&
        orderType == null) {
      return showmydialog(context, "erorr",
          "please choose Adress  and Orders Type and order Payment ");
    }

    emit(const CheckCartState.loading());
    final response = await _checkCartOrder.checkCartOrder(selectadressId!,
        orderType!, orderprice, couponId, selectedPaymentOption!, playerId);
    response.when(success: (responsehome) {
      emit(const CheckCartState.success());
    }, failure: (error) {
      emit(CheckCartState.erorr(erorr: error.apiErrorModel.messege ?? ''));
    });
  }

  selectAdress(int selectAdressId, String selectAdressIdS) {
    selectadressId = selectAdressId;
    selectadressIdS = selectAdressIdS;

    emit(const CheckCartState.selectAdress());
  }

  selectPyment(String selectPyments) {
    if (selectPyments == 'payment card') {
      selectedPaymentOption = 1;
    } else {
      selectedPaymentOption = 0;
    }

    selectedPaymentOptionS = selectPyments;

    emit(const CheckCartState.selectPayment());
  }

  selectType(String selectTypeS) {
    if (selectTypeS == 'recive') {
      orderType = 1;
    } else {
      orderType = 0;
    }
    orderTypeS = selectTypeS;
    emit(const CheckCartState.selectType());
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
      emit(
          CheckCartState.erorrCoupon(erorr: error.apiErrorModel.messege ?? ''));
    });
  }

  //:greatePayment
  greatePayment(PaymentBodyTojson data) async {
    emit(const CheckCartState.loadingPayment());
    final response = await repoPayment.greatePayment(data);
    response.when(success: (couponData) {
      emit(const CheckCartState.uccessPayment());
    }, failure: (error) {
      emit(CheckCartState.erorrpayment(
          erorr: error.apiErrorModel.messege ?? ''));
    });
  }
}
