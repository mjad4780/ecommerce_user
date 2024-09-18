import 'package:ecommerce_user/future/cart/logic/cubit/cart_cubit.dart';
import 'package:ecommerce_user/future/cart/logic/cubit/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theming/colors.dart';

import 'custom_body_cart.dart';

class GetCartBlocBuilder extends StatelessWidget {
  const GetCartBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      buildWhen: (previous, current) =>
          current is LoadingGet || current is SuccessGet || current is ErorrGet,
      builder: (context, state) {
        return state.maybeWhen(
          loadingGet: () {
            return const Center(
              child: CircularProgressIndicator(
                color: AppColor.mainBlue,
              ),
            );
          },
          successGet: (products) {
            return
                // ? const EmptyCart()
                // :
                CustomBodyCart(responseCart: products);
          },
          erorrGet: (error) {
            return const Center(child: Text('Sorry! no Items......'));
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
