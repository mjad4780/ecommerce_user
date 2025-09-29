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
            final items = products.data ?? [];

            return AnimatedSwitcher(
                duration: const Duration(milliseconds: 400),
                child: items.isEmpty
                    ? Center(
                        key: const ValueKey('empty'),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TweenAnimationBuilder<double>(
                              tween: Tween(begin: 0.8, end: 1.2),
                              duration: const Duration(seconds: 1),
                              curve: Curves.easeInOut,
                              builder: (context, value, child) {
                                return Transform.scale(
                                  scale: value,
                                  child: child,
                                );
                              },
                              onEnd: () {
                                // إعادة تشغيل الأنيميشن بشكل مستمر
                              },
                              child: const Icon(
                                Icons.shopping_bag_outlined,
                                size: 100,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'No Orders Yet',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      )
                    : CustomProductOrders(
                        data: products.data ?? [],
                      ));
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
