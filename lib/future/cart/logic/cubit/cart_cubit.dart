import 'package:ecommerce_user/future/cart/data/repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/function/alert_dialog.dart';
import 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit(
    this._cartRepo,
  ) : super(const CartState.initial());
  final CartRepo _cartRepo;

  //:AddCart
  String? selectColor;
  String? selectSize;

  emitAddCart(int itemid, BuildContext context) async {
    if (selectColor == null && selectSize == null) {
      return testAlert(context, "erorr", "please choose Size and Color");
    }
    emit(const CartState.loadingAdd());
    final response = await _cartRepo.addCart(itemid, selectColor!, selectSize!);
    response.when(success: (responsehome) {
      context.push('/Cart');

      emit(const CartState.successAdd());
    }, failure: (error) {
      emit(CartState.errorAdd(erorr: error.apiErrorModel.messege ?? ''));
    });
  }

  //:GetCart
  emitGetCart() async {
    emit(const CartState.loadingGet());
    final response = await _cartRepo.getCart();
    response.when(success: (responsehome) {
      emit(CartState.successGet(responsehome));
    }, failure: (error) {
      emit(CartState.erorrGet(erorr: error.apiErrorModel.messege ?? ''));
    });
  }

  //:deleteCart
  emitdeleteCart(int itemid) async {
    emit(const CartState.loadingDelete());
    final response = await _cartRepo.deleteCart(itemid);
    response.when(success: (responsehome) async {
      //    getadrees.removeWhere((element) => element.addressId == id);
      await emitGetCart();
      emit(const CartState.successdelete());
    }, failure: (error) {
      emit(CartState.erorrDelete(erorr: error.apiErrorModel.messege ?? ''));
    });
  }

  selectcolor(String color) {
    selectColor = color;
    emit(const CartState.selectColor());
  }

  selectsize(String size) {
    selectSize = size;
    emit(const CartState.selectsize());
  }
}
