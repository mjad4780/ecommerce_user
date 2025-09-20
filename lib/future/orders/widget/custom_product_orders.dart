import 'package:ecommerce_user/core/extensions/extention_navigator.dart';
import 'package:ecommerce_user/future/orders/logic/cubit/orders_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/response_orders/datum.dart';
import 'function_update_orders.dart';
import 'order_tile.dart';

class CustomProductOrders extends StatelessWidget {
  const CustomProductOrders({super.key, required this.data});
  final List<Datum> data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        typeOrders(data[index].ordersType ?? 0);
        paymentOrders(data[index].ordersPaymentmets ?? 0);
        orderStatus(data[index].ordersStatus ?? 0);

        return OrderTile(
          price: data[index].orderToatalprice ?? 0.0,
          ordersId: data[index].ordersId ?? 0,
          items: ' Items',
          date: data[index].ordersDatetime ?? '',
          onTap: () {
            orderStatus(data[index].ordersStatus ?? 0);
            if (data[index].ordersStatus != 5) {
              final cubit = context.read<OrdersCubit>();

              cubit.emitGetDetails(data[index].ordersId ?? 0); // استدعاء هنا
              context.push('/TrackOrders', arguments: {
                'cubit': cubit,
                'step': data[index].ordersStatus ?? 0,
                'data': data[index]
              });
            }
          },
        );
      },
    );
  }
}
