import '../logic/cubit/cart_cubit.dart';
import 'package:ecommerce_user/future/cart/logic/cubit/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/response_cart.dart';
import 'custom_product_cart.dart';

class CartListSection extends StatelessWidget {
  final ResponseCart cartProducts;

  const CartListSection({
    super.key,
    required this.cartProducts,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartCubit, CartState>(
        listener: (context, state) {},
        builder: (context, state) {
          return ListView.builder(
              itemCount: cartProducts.datacart.length,
              itemBuilder: (context, index) => CustomProductCart(
                    cartItem: cartProducts.datacart[index],
                    index: index,
                  ));
        });
  }
}
