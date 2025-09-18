import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/response_cart.dart';

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
  factory CartState.successGet(ResponseCart cartResponse) = SuccessGet;
  const factory CartState.erorrGet({required String erorr}) = ErorrGet;

  ///:deleteCart
  const factory CartState.loadingDelete() = LoadingDelete;
  const factory CartState.successdelete() = Successdelete;
  const factory CartState.erorrDelete({required String erorr}) = ErorrDelete;

  ///:select

  factory CartState.colorSelected(String color) = ColorSelected;
  factory CartState.sizeSelected(String size) = SizeSelected;

  ///:updateCart
  const factory CartState.loadingUpdate() = LoadingUpdate;
  const factory CartState.successUpdate() = SuccessUpdate;
  const factory CartState.errorUpdate({required String erorr}) = ErrorUpdate;
}
