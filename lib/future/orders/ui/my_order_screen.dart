import 'package:ecommerce_user/core/get_it/get_it.dart';
import 'package:ecommerce_user/future/orders/logic/cubit/orders_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theming/colors.dart';
import '../widget/my_orders_bloc.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<OrdersCubit>()..emitGetOrders(),
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "My Orders",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColor.darkOrange),
            ),
          ),
          body: const OrdersBlocBuilder()),
    );
  }
}
