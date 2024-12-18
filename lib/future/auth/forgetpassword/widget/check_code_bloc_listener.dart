import 'package:ecommerce_user/core/extensions/extention_navigator.dart';
import 'package:ecommerce_user/core/theming/colors.dart';
import 'package:ecommerce_user/future/auth/forgetpassword/logic/cubit/forget_password_cubit.dart';
import 'package:ecommerce_user/future/auth/forgetpassword/logic/cubit/forget_password_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/function/alert_dialog.dart';
import '../../../../core/theming/styles.dart';

class CheckCodeBlocListener extends StatelessWidget {
  const CheckCodeBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgetPasswordCubit, ForgetPasswordState>(
      listenWhen: (previous, current) =>
          current is Loadingveryfycode ||
          current is Successveryfycode ||
          current is Errorveryfycode,
      listener: (context, state) {
        state.whenOrNull(
          loadingCheck: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: AppColor.mainBlue,
                ),
              ),
            );
          },
          successCheck: () {
            context.pop();
            showSuccessDialog(
                context, 'your password has been modified Successful');

            context.push(
              '/Login',
            );
          },
          errorCheck: (error) {
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
