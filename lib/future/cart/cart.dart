import 'package:ecommerce_user/core/get_it/get_it.dart';
import 'package:ecommerce_user/future/cart/logic/cubit/cart_cubit.dart';
import 'package:ecommerce_user/future/cart/logic/cubit/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widget/get_cart_bloc.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<CartCubit>()..emitGetCart(),
        child: BlocConsumer<CartCubit, CartState>(
          buildWhen: (previous, current) =>
              current is SuccessGet || current is SuccessUpdate,
          listener: (context, state) {},
          builder: (context, state) {
            return PopScope(
              canPop: !context.read<CartCubit>().isUpdating,

              onPopInvokedWithResult: (didPop, result) {
                if (didPop) {
                } else {
                  _showUnsavedChangesDialog(context);
                }
              },
              // منع الخروج إذا كانت هناك تغييرات غير محفوظة

              child: const Scaffold(
                resizeToAvoidBottomInset: false,

                body: GetCartBlocBuilder(),

                //? buy now button
              ),
            );
          },
        ));
  }
}

void _showUnsavedChangesDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return const AlertDialog(
        title: Text('تغييرات غير محفوظة'),
        content:
            Text('لديك تغييرات غير محفوظة في السلة. هل تريد حفظها قبل الخروج؟'),
      );
    },
  );
}
