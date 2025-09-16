import 'package:ecommerce_user/core/extensions/extention_navigator.dart';
import 'package:ecommerce_user/future/check_cart_order/logic/cubit/check_cart_cubit.dart';
import 'package:ecommerce_user/future/check_cart_order/logic/cubit/check_cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theme/styles.dart';

class CheckCartBlocListener extends StatelessWidget {
  const CheckCartBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CheckCartCubit, CheckCartState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Erorr,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            // showDialog(
            //   context: context,
            //   builder: (context) => const Center(
            //     child: CircularProgressIndicator(
            //       color: AppColor.mainBlue,
            //     ),
            //   ),
            // );
          },
          success: () {
            // context.pop();
            context.pushpushReplacement('/HomeScrean');
          },
          erorr: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: TextStyles.font15DarkBlueMedium,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: TextStyles.font14BlueSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
