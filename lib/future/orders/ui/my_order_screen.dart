import 'package:ecommerce_user/core/extensions/extention_navigator.dart';
import 'package:ecommerce_user/core/get_it/get_it.dart';
import 'package:ecommerce_user/future/orders/logic/cubit/orders_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theme/colors.dart';
import '../widget/my_orders_bloc.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<OrdersCubit>()..emitGetOrders(),
      child: Scaffold(
          appBar: AppBar(
              backgroundColor: AppColor.lightGrey,
              title: const Text("My Orders"),
              centerTitle: true,
              elevation: 0,
              leading: GestureDetector(
                onTap: () => context.pop(),
                child: const Icon(Icons.arrow_back_ios,
                    size: 25, color: AppColor.darkOrange),
              )),
          body: const OrdersBlocBuilder()),
    );
  }
}
