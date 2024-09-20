import 'package:ecommerce_user/core/get_it/get_it.dart';
import 'package:ecommerce_user/future/cart/logic/cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widget/get_cart_bloc.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CartCubit>()..emitGetCart(),
      child: const Scaffold(
        resizeToAvoidBottomInset: false,

        body: GetCartBlocBuilder(),

        //? buy now button
      ),
    );
  }
}
