import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../model/order_response/order_response.dart';
import '../../../../model/pending_response/pending_response.dart';
import '../../../../model/response_detilas/response_detilas.dart';
part 'orders_state.freezed.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState.initial() = _Initial;

  ///:getOrders
  const factory OrdersState.loadingGet() = LoadingGet;
  const factory OrdersState.successGet(OrderResponse orderResponse) =
      SuccessGet;
  const factory OrdersState.erorrGet({required String erorr}) = ErorrGet;

  ///:deleteOrders
  const factory OrdersState.loadingDelete() = LoadingDelete;
  const factory OrdersState.successdelete() = Successdelete;
  const factory OrdersState.erorrdelete({required String erorr}) = Erorrdelete;

  ///:detailsOrder
  const factory OrdersState.loadingDetails() = LoadingDetails;
  const factory OrdersState.successDetails(
      {required ResponseDetails responseDetails}) = SuccessDetails;
  const factory OrdersState.erorrDetails({required String erorr}) =
      ErorrDetails;

  ///:pending
  const factory OrdersState.loadingPeinding() = LoadingPeinding;
  const factory OrdersState.successPeinding(PendingResponse pendingResponse) =
      SuccessPeinding;
  const factory OrdersState.erorrPeinding({required String erorr}) =
      ErorrPeinding;
}
