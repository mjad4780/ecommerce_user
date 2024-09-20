import 'package:ecommerce_user/core/get_it/get_it.dart';

import 'package:ecommerce_user/future/check_cart_order/logic/cubit/check_cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widget/custom_coupon_and_bybuttom.dart';
import '../widget/custom_payment_and_type.dart';
import '../widget/select_adress.dart';

void showCustomBottomSheet(BuildContext context, int total, int offers) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return BlocProvider(
          create: (BuildContext context) => getIt<CheckCartCubit>(),
          child: Builder(
            builder: (context) {
              return Padding(
                padding: EdgeInsets.only(
                    top: 20,
                    left: 10,
                    right: 10,
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Form(
                  // key: context.cartProvider.buyNowFormKey,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Toggle Address Fields

                        const Text('Enter Address'),
                        const SelectAdressCart(),
                        const CustomTypeAndPyment(),

                        //? Pay Button
                        CustomCouponAndPyBottom(
                          total: total,
                          offers: offers,
                        ),
                        const Divider(),
                      ],
                    ),
                  ),
                ),
              );
            },
          ));
    },
  );
}
