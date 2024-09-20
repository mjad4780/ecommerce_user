import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../logic/cubit/check_cart_cubit.dart';

class CustomTotalCart extends StatelessWidget {
  const CustomTotalCart({
    super.key,
    required this.total,
    required this.offers,
  });
  final int total, offers;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 5, left: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Total Amount             : \$$total',
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            Text(
                'Grand Total            : \$${context.read<CheckCartCubit>().grandTotalPrice ?? offers}',
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue)),
          ],
        ));
  }
}
