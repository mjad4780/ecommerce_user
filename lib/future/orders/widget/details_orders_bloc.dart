import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_user/future/orders/logic/cubit/orders_cubit.dart';
import 'package:ecommerce_user/future/orders/logic/cubit/orders_state.dart';

import '../../../core/theme/colors.dart';
import 'itemsSection.dart';

class DetailsBlocBuilder extends StatelessWidget {
  const DetailsBlocBuilder({super.key, required this.tatalPrice});
  final int tatalPrice;
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
            return const Center(
              child: CircularProgressIndicator(
                color: AppColor.mainBlue,
              ),
            );
          },
          successDetails: (products) {
            return ItemSection(
              details: products.data ?? [],
              totalPrice: tatalPrice,
            );

            // TableDetails(
            //   details: products,
            // );
          },
          erorrDetails: (error) {
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
