import 'package:ecommerce_user/core/extensions/extention_navigator.dart';
import 'package:ecommerce_user/core/theming/colors.dart';
import 'package:ecommerce_user/future/auth/verfyCode/logic/cubit/verfy_code_cubit.dart';
import 'package:ecommerce_user/future/auth/verfyCode/logic/cubit/verfy_code_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theming/styles.dart';

class CheckCodeBlocListener extends StatelessWidget {
  const CheckCodeBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerfyCodeCubit, VerfyCodeState>(
      listenWhen: (previous, current) =>
          current is LoadingveryfyCode ||
          current is SuccessVerfyCode ||
          current is ErorrVerfycode,
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

            context.push(
              '/Login',
            );
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
