import 'package:ecommerce_user/future/orders/logic/cubit/orders_cubit.dart';
import 'package:ecommerce_user/future/orders/logic/cubit/orders_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../core/widgets/failer_widget.dart';
import '../data/response_orders/datum.dart';
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
            return const Skeletonizer(
                enabled: true,
                child: CustomProductOrders(
                  data: [Datum(), Datum(), Datum(), Datum()],
                ));
          },
          successGet: (products) {
            return CustomProductOrders(
              data: products.data ?? [],
            );
          },
          erorrGet: (error) {
            return FailerWidget(
                messege: error,
                onPressed: () {
                  context.read<OrdersCubit>().emitGetOrders();
                });
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
