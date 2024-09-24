import 'package:ecommerce_user/future/orders/logic/cubit/orders_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theming/colors.dart';
import 'function_update_orders.dart';

class OrderTile extends StatelessWidget {
  final String items;
  final String date;
  final VoidCallback? onTap;
  final int ordersId;
  final int price;
  const OrderTile({
    super.key,
    required this.items,
    required this.price,
    required this.date,
    this.onTap,
    required this.ordersId,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              items,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColor.darkOrange,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Payment : $selectedOrderPayment',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              'Type : $selectedTypeOrders',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              'Total Price : \$$price',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              date,
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          color: _getStatusColor(selectedOrderStatus ?? ''),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: InkWell(
                          onTap: onTap,
                          borderRadius: BorderRadius.circular(12),
                          child: Center(
                            child: Text(
                              selectedOrderStatus ?? '',
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      if (selectedOrderStatus == 'pending')
                        const SizedBox(
                          height: 6,
                        ),
                      if (selectedOrderStatus == 'pending')
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: GestureDetector(
                              onTap: () => context
                                  .read<OrdersCubit>()
                                  .emitdeleteOrders(ordersId),
                              child: const Text(
                                'Delete',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'pending':
        return Colors.grey;
      case 'been approve':
        return Colors.orange;
      case 'prepare':
        return Colors.blue;
      case 'shipped':
        return Colors.green;
      case 'done':
        return Colors.red;
      case 'Cancelled':
        return Colors.deepPurple;
      default:
        return Colors.black;
    }
  }
}
