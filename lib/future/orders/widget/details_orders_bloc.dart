import 'package:ecommerce_user/core/widgets/failer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_user/future/orders/logic/cubit/orders_cubit.dart';
import 'package:ecommerce_user/future/orders/logic/cubit/orders_state.dart';

import '../../../core/widgets/loading.dart';
import '../../../model/response_detilas/datum.dart';
import 'track_orders.dart';

class DetailsBlocBuilder extends StatelessWidget {
  const DetailsBlocBuilder({super.key, required this.orderId});
  final int orderId;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersCubit, OrdersState>(
      buildWhen: (previous, current) =>
          current is LoadingDetails ||
          current is SuccessDetails ||
          current is ErorrDetails,
      builder: (context, state) {
        return state.maybeWhen(
          loadingDetails: () {
            return LoadingWidget(
              isloading: true,
              child: CustomBodyWidgetDetailasOrders(
                details: [
                  DataDetails(),
                  DataDetails(),
                  DataDetails(),
                  DataDetails(),
                ],
              ),
            );
          },
          successDetails: (products) {
            return CustomBodyWidgetDetailasOrders(
              details: products.data ?? [],
            );

            // TableDetails(
            //   details: products,
            // );
          },
          erorrDetails: (error) {
            return FailerWidget(
                messege: error,
                onPressed: () {
                  context.read<OrdersCubit>().emitGetDetails(orderId);
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
