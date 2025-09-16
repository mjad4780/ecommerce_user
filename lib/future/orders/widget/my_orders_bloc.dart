import 'package:ecommerce_user/future/orders/logic/cubit/orders_cubit.dart';
import 'package:ecommerce_user/future/orders/logic/cubit/orders_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theme/colors.dart';
import 'custom_product_orders.dart';

class OrdersBlocBuilder extends StatelessWidget {
  const OrdersBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersCubit, OrdersState>(
      buildWhen: (previous, current) =>
          current is LoadingGet || current is SuccessGet || current is ErorrGet,
      builder: (context, state) {
        return state.maybeWhen(
          loadingGet: () {
            return const Center(
              child: CircularProgressIndicator(
                color: AppColor.mainBlue,
              ),
            );
          },
          successGet: (products) {
            return CustomProductOrders(
              data: products.data ?? [],
            );
          },
          erorrGet: (error) {
            return Text(error);
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
