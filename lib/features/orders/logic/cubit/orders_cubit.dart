import 'package:ecommerce_user/core/networking/api_result.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repo.dart';
import 'orders_state.dart';

class OrdersCubit extends Cubit<OrdersState> {
  // OrdersCubit(super.initialState);
  OrdersCubit(this._checkCartOrder) : super(const OrdersState.initial());

  final OrdersRepo _checkCartOrder;

  // String? updateStatus;

//:GetOrders
  emitGetOrders() async {
    if (!isClosed) emit(const OrdersState.loadingGet());

    final response = await _checkCartOrder.getOrders();
    response.when(success: (responsehome) {
      if (!isClosed) emit(OrdersState.successGet(responsehome));
    }, failure: (error) {
      if (!isClosed) emit(OrdersState.erorrGet(erorr: error.messege ?? ''));
    });
  }

  //:Details
  emitGetDetails(int id) async {
    if (!isClosed) emit(const OrdersState.loadingDetails());

    final response = await _checkCartOrder.getDetailas(id);
    response.when(success: (responsehome) {
      // emit(const OrdersState.loadingDetails());

      if (!isClosed)
        emit(OrdersState.successDetails(responseDetails: responsehome));
    }, failure: (error) {
      if (!isClosed) emit(OrdersState.erorrDetails(erorr: error.messege ?? ''));
    });
  } //:deleteOrders

  emitdeleteOrders(int id) async {
    if (!isClosed) emit(const OrdersState.loadingDelete());

    final response = await _checkCartOrder.deleteOrders(id);
    response.when(success: (responsehome) async {
      emit(const OrdersState.successdelete());

      await emitGetOrders();
    }, failure: (error) {
      if (!isClosed) emit(OrdersState.erorrdelete(erorr: error.messege ?? ''));
    });
  } //:GetPeinding

  // emitGetPeinding() async {
  //   emit(const OrdersState.loadingPeinding());
  //   Future.delayed(const Duration(seconds: 3));

  //   final response = await _checkCartOrder.pending();
  //   response.when(success: (responsehome) {
  //     emit(OrdersState.successPeinding(responsehome));
  //   }, failure: (error) {
  //     emit(OrdersState.erorrPeinding(erorr: error.messege ?? ''));
  //   });
  // }
}
