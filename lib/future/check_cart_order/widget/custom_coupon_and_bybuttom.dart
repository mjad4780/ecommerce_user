import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widget/compleate_order_button.dart';
import '../../../widget/custom_text_field.dart';
import '../logic/cubit/check_cart_cubit.dart';
import '../logic/cubit/check_cart_state.dart';
import 'applay_coupon_btn.dart';
import 'check_cart_bloc.dart';
import 'custom_total_cart.dart';

class CustomCouponAndPyBottom extends StatelessWidget {
  const CustomCouponAndPyBottom({
    super.key,
    required this.total,
    required this.offers,
  });
  final int total, offers;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CheckCartCubit, CheckCartState>(
      listener: (context, state) {},
      buildWhen: (previous, current) => current is SuccessCoupon,
      builder: (context, state) {
        return Column(
          children: [
            const Divider(),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    height: 60,
                    labelText: 'Enter Coupon code',
                    onSave: (value) {},
                    controller: context.read<CheckCartCubit>().couponName,
                  ),
                ),
                ApplyCouponButton(onPressed: () {
                  context.read<CheckCartCubit>().emitcheckCoupon(offers);
                })
              ],
            ),

            const Divider(),

            //? Text for Total Amount, Total Offer Applied, and Grand Total
            CustomTotalCart(
              offers: offers,
              total: total,
            ),
            CompleteOrderButton(
                labelText:
                    'Complete Order  \$${context.read<CheckCartCubit>().grandTotalPrice ?? offers}',
                onPressed: () {
                  context.read<CheckCartCubit>().emitCheckCart(context,
                      context.read<CheckCartCubit>().grandTotalPrice ?? offers);
                }),
            const CheckCartBlocListener()
          ],
        );
      },
    );
  }
}
