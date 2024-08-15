import 'package:bloc/bloc.dart';

import '../../data/repo.dart';
import 'orders_state.dart';

class OrdersCubit extends Cubit<OrdersState> {
  // OrdersCubit(super.initialState);
  OrdersCubit(this._checkCartOrder) : super(const OrdersState.initial());

  final OrdersRepo _checkCartOrder;
//:GetOrders
  emitGetOrders(int id) async {
    emit(const OrdersState.loadingGet());
    final response = await _checkCartOrder.getOrders();
    response.when(success: (responsehome) {
      emit(OrdersState.successGet(responsehome));
    }, failure: (error) {
      emit(OrdersState.erorrGet(erorr: error.apiErrorModel.messege ?? ''));
    });
  }

  //:Details
  emitGetDetails(int id) async {
    emit(const OrdersState.loadingDetails());
    final response = await _checkCartOrder.getDetailas(id);
    response.when(success: (responsehome) {
      emit(OrdersState.successDetails(responseDetails: responsehome));
    }, failure: (error) {
      emit(OrdersState.erorrDetails(erorr: error.apiErrorModel.messege ?? ''));
    });
  } //:deleteOrders

  emitdeleteOrders(int id) async {
    emit(const OrdersState.loadingDelete());
    final response = await _checkCartOrder.deleteOrders(id);
    response.when(success: (responsehome) {
      emit(const OrdersState.successdelete());
    }, failure: (error) {
      emit(OrdersState.erorrdelete(erorr: error.apiErrorModel.messege ?? ''));
    });
  } //:GetPeinding

  emitGetPeinding() async {
    emit(const OrdersState.loadingPeinding());
    final response = await _checkCartOrder.pending();
    response.when(success: (responsehome) {
      emit(OrdersState.successPeinding(responsehome));
    }, failure: (error) {
      emit(OrdersState.erorrPeinding(erorr: error.apiErrorModel.messege ?? ''));
    });
  }
}
