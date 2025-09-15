import 'package:ecommerce_user/core/extensions/extention_navigator.dart';
import 'package:ecommerce_user/future/adress/logic/cubit/adress_cubit.dart';
import 'package:ecommerce_user/future/adress/logic/cubit/adress_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theming/theme/styles.dart';

class EditAdressBlocListener extends StatelessWidget {
  const EditAdressBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AdressCubit, AdressState>(
      listenWhen: (previous, current) =>
          current is LoadingEdit ||
          current is SuccessEdit ||
          current is ErrorEdit,
      listener: (context, state) {
        state.whenOrNull(
          successedit: () async {
            context.pop();

            context.read<AdressCubit>().emitgetAdress();

            // ignore: use_build_context_synchronously
            // context.push('/MyAddressPage');
          },
          erroredit: (error) {
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
