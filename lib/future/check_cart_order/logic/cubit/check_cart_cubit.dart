import 'package:bloc/bloc.dart';

import '../../data/repo.dart';
import 'check_cart_state.dart';

class CheckCartCubit extends Cubit<CheckCartState> {
  CheckCartCubit(this._checkCartOrder) : super(const CheckCartState.initial());

  final CheckCartOrder _checkCartOrder;
//:CheckCart
  emitCheckCart(
      int adressid,
      int ordertype,
      int pricedelivery,
      double orderprice,
      int couponid,
      int paymentmethod,
      int coupondiscount) async {
    emit(const CheckCartState.loading());
    final response = await _checkCartOrder.checkCartOrder(adressid, ordertype,
        pricedelivery, orderprice, couponid, paymentmethod, coupondiscount);
    response.when(success: (responsehome) {
      emit(const CheckCartState.success());
    }, failure: (error) {
      emit(CheckCartState.erorr(erorr: error.apiErrorModel.messege ?? ''));
    });
  }
}
