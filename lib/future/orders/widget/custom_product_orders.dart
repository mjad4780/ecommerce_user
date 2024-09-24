import 'package:ecommerce_user/core/extensions/extention_navigator.dart';
import 'package:flutter/material.dart';

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
          price: data[index].orderToatalprice!,
          ordersId: data[index].ordersId!,
          items: ' Items',
          date: data[index].ordersDatetime ?? '',
          onTap: () {
            orderStatus(data[index].ordersStatus ?? 0);

            context.push('/TrackOrders', arguments: {
              'step': data[index].ordersStatus ?? 0,
              'data': data[index]
            });
          },
        );
      },
    );
  }
}
