import 'package:bloc/bloc.dart';
import 'package:ecommerce_user/future/cart/data/repo.dart';
import 'package:flutter/material.dart';

import 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit(this._cartRepo) : super(const CartState.initial());
  final CartRepo _cartRepo;
  TextEditingController couponName = TextEditingController();
  //:AddCart

  emitAddCart(int itemid) async {
    emit(const CartState.loadingAdd());
    final response = await _cartRepo.addCart(itemid);
    response.when(success: (responsehome) {
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
    response.when(success: (responsehome) {
      //    getadrees.removeWhere((element) => element.addressId == id);

      emit(const CartState.successdelete());
    }, failure: (error) {
      emit(CartState.erorrDelete(erorr: error.apiErrorModel.messege ?? ''));
    });
  }

  //:getCountCart
  emitArchive(int itemid) async {
    emit(const CartState.loadingCount());
    final response = await _cartRepo.getCountCart(itemid);
    response.when(success: (responsehome) {
      emit(CartState.successCount(responsehome));
    }, failure: (error) {
      emit(CartState.erorrCount(erorr: error.apiErrorModel.messege ?? ''));
    });
  }

  //:checkCoupon
  emitcheckCoupon() async {
    emit(const CartState.loadingCoupon());
    final response = await _cartRepo.checkCoupon(couponName.text);
    response.when(success: (responsehome) {
      emit(const CartState.successCoupon());
    }, failure: (error) {
      emit(CartState.erorrCoupon(erorr: error.apiErrorModel.messege ?? ''));
    });
  }
}
