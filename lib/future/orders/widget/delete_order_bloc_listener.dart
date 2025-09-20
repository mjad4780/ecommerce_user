import 'package:ecommerce_user/core/extensions/extention_navigator.dart';
import 'package:ecommerce_user/future/orders/logic/cubit/orders_cubit.dart';
import 'package:ecommerce_user/future/orders/logic/cubit/orders_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/function/setuo_erorr_state.dart';
import '../../../core/theme/colors.dart';

class DeleteOrderBlocListener extends StatelessWidget {
  const DeleteOrderBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<OrdersCubit, OrdersState>(
      listenWhen: (previous, current) =>
          current is LoadingDelete ||
          current is Successdelete ||
          current is Erorrdelete,
      listener: (context, state) {
        state.whenOrNull(
          loadingDelete: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: AppColor.mainBlue,
                ),
              ),
            );
          },
          successdelete: () {
            context.pop();
          },
          erorrdelete: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
