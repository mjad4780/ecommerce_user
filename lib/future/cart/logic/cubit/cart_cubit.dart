import 'dart:convert';
import 'dart:developer';

import 'package:ecommerce_user/core/extensions/extention_navigator.dart';
import 'package:ecommerce_user/core/networking/api_result.dart';
import 'package:ecommerce_user/future/cart/data/repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/function/alert_dialog.dart';
import '../../data/response_cart.dart';
import 'cart_state.dart';

import 'package:bloc/bloc.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit(this._cartRepo) : super(const CartState.initial());

  final CartRepo _cartRepo;

  // المتغير الداخلي لتخزين بيانات السلة
  ResponseCart _cartData = ResponseCart(
    datacart: [],
    totalPriceOffers: 0,
    totalPrice: 0,
    totalCount: 0,
  );

  bool isUpdating = false;

  String? selectColor;
  String? selectSize;

  //:AddCart
  Future<void> emitAddCart(
      int itemid, BuildContext context, String location) async {
    if (selectColor == null || selectSize == null) {
      testAlert(context, "error", "please choose Size and Color");
      return;
    } else {
      if (!isClosed) emit(const CartState.loadingAdd());

      final response =
          await _cartRepo.addCart(itemid, selectColor!, selectSize!);

      response.when(success: (responsehome) {
        if (location != '/Cart') context.push('/Cart');
        if (!isClosed) emit(const CartState.successAdd());
        // Reload to get actual data from server
      }, failure: (error) {
        if (!isClosed) emit(CartState.errorAdd(erorr: error.messege ?? ''));
        // Revert local changes on error
      });
    }
  }

  //:GetCart
  Future<void> emitGetCart() async {
    if (!isClosed) emit(const CartState.loadingGet());

    final response = await _cartRepo.getCart();

    response.when(success: (cartResponse) {
      _cartData = cartResponse; // Update local data
      if (!isClosed) emit(CartState.successGet(cartResponse));
    }, failure: (error) {
      if (!isClosed) emit(CartState.erorrGet(erorr: error.messege ?? ''));
    });
  }

  //:deleteCart
  Future<void> emitdeleteCart(
    int itemid,
  ) async {
    emit(const CartState.loadingDelete());

    final response = await _cartRepo.deleteCart(itemid);

    response.when(success: (responsehome) async {
      emit(const CartState.successdelete());
    }, failure: (error) {
      emit(CartState.erorrDelete(erorr: error.messege ?? ''));
      // Revert local changes on error
    });
  }

  //:update cart quantity
  Future<void> updateQuantity(BuildContext context) async {
    emit(const CartState.loadingUpdate());
    List<Map<String, dynamic>> updates = [];
    for (var item in _cartData.datacart) {
      updates.add({
        'itemid': item.itemId,
        'quantity': item.cartQuantity,
      });
    }

    log('Sending updates: ${json.encode(updates)}'); // أضف هذا للتحقق

    final response = await _cartRepo.updateCart(updates);

    response.when(success: (_) {
      isUpdating = false;
      emit(const CartState.successUpdate());
      context.pop();

      // Success - data already updated locally
    }, failure: (error) {
      // Revert on error
      emit(CartState.errorUpdate(erorr: error.messege ?? ""));
    });
  }

  void selectcolor(String color) {
    selectColor = color;
    emit(CartState.colorSelected(selectColor!));
  }

  void selectsize(String size) {
    selectSize = size;
    emit(CartState.sizeSelected(selectSize!));
  }

  void _updateQuantityInLocalData(int cartId, int newQuantity) {
    final currentItems = List<Datacart>.from(_cartData.datacart);

    final itemIndex = currentItems.indexWhere((item) => item.cartId == cartId);

    if (itemIndex != -1) {
      final item = currentItems[itemIndex];

      if (newQuantity <= 0) {
        _sendUpdateToBackend(item.itemId, 0); // استخدام itemId وليس cartId

        currentItems.removeAt(itemIndex);
      } else {
        final updatedItem = item.copyWith(
          cartQuantity: newQuantity,
          itemTotalPrice:
              (item.itemPrice - (item.itemPrice * item.itemDiscount / 100)) *
                  newQuantity,
          itemOriginalTotal: item.itemPrice * newQuantity,
        );
        currentItems[itemIndex] = updatedItem;
      }

      _updateLocalData(currentItems);
    }
  }

  void _sendUpdateToBackend(int itemId, int quantity) async {
    try {
      final updates = [
        {
          'itemid': itemId,
          'quantity': quantity
        } // تأكد من أن المفتاح هو 'itemid'
      ];

      var response = await _cartRepo.updateCart(json.encode(updates));
      response.when(success: (_) {
        isUpdating = false;
        emit(const CartState.successUpdate());

        // Success - data already updated locally
      }, failure: (error) {
        // Revert on error
        emit(CartState.errorUpdate(erorr: error.messege ?? ""));
      });
    } catch (e) {
      print('Error updating backend: $e');
      // يمكنك إضافة logic للتعامل مع الخطأ إذا لزم الأمر
    }
  }

  void _updateLocalData(List<Datacart> items) {
    isUpdating = true;
    _cartData = _calculateTotals(items);

    if (!isClosed)
      emit(CartState.successGet(_cartData)); // إشعار الواجهة بالتحديث
  }

  ResponseCart _calculateTotals(List<Datacart> items) {
    double totalPrice = 0;
    double totalPriceOffers = 0;
    int totalCount = 0;

    for (final item in items) {
      totalPrice += item.itemOriginalTotal;
      totalPriceOffers += item.itemTotalPrice;
      totalCount += item.cartQuantity;
    }

    return ResponseCart(
      datacart: items,
      totalPriceOffers: totalPriceOffers,
      totalPrice: totalPrice,
      totalCount: totalCount,
    );
  }

  // Increment/Decrement helpers
  void incrementQuantity(int cartId) {
    try {
      final item =
          _cartData.datacart.firstWhere((item) => item.cartId == cartId);
      // updateQuantity(cartId, item.cartQuantity + 1);
      _updateQuantityInLocalData(cartId, item.cartQuantity + 1);
      // log('xxxxxxx$cartId dd${item.cartId} dfg${item.cartQuantity + 1}');
    } catch (e) {
      print('Item not found: $e ');
    }
  }

  void decrementQuantity(int cartId) {
    try {
      final item =
          _cartData.datacart.firstWhere((item) => item.cartId == cartId);
      _updateQuantityInLocalData(cartId, item.cartQuantity - 1);
    } catch (e) {
      print('Item not found: $e');
    }
  }
}
