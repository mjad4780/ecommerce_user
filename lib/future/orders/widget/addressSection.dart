import 'package:flutter/material.dart';

import '../../../core/theming/theme/styles.dart';
import '../data/response_orders/datum.dart';
import 'FormRow.dart';

class AddressSection extends StatelessWidget {
  const AddressSection({super.key, required this.order});
  final Datum order;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
        // color: secondaryColor, // Light grey background to stand out
        borderRadius: BorderRadius.circular(8.0),
        border:
            Border.all(color: Colors.blueAccent), // Blue border for emphasis
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text('Shipping Address', style: TextStyles.adress(context)),
          ),
          FormRow(
              text: 'Street:',
              widget: Text(order.adressStreet ?? 'N/A',
                  style: TextStyles.stylesectionreqler(context))),
          FormRow(
              text: 'City:',
              widget: Text(order.adressCity ?? 'N/A',
                  style: TextStyles.stylesectionreqler(context))),
          FormRow(
              text: 'Country:',
              widget: Text(order.adressName ?? 'N/A',
                  style: TextStyles.stylesectionreqler(context))),
        ],
      ),
    );
  }
}
