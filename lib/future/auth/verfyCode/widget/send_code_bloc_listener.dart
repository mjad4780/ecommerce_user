import 'package:ecommerce_user/core/extensions/extention_navigator.dart';
import 'package:ecommerce_user/core/theming/colors.dart';
import 'package:ecommerce_user/future/auth/verfyCode/logic/cubit/verfy_code_cubit.dart';
import 'package:ecommerce_user/future/auth/verfyCode/logic/cubit/verfy_code_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/function/alert_dialog.dart';
import '../../../../core/theming/styles.dart';

class SendCodeBlocListener extends StatelessWidget {
  const SendCodeBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerfyCodeCubit, VerfyCodeState>(
      listenWhen: (previous, current) =>
          current is LoadingSend ||
          current is SuccessSend ||
          current is ErorrSend,
      listener: (context, state) {
        state.whenOrNull(
          loadingveryfyCode: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: AppColor.mainBlue,
                ),
              ),
            );
          },
          successVerfyCode: () {
            context.pop();
            showSuccessDialog(context, 'code has been sent');
          },
          erorrVerfycode: (error) {
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
