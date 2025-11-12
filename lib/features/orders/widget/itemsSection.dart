import 'package:flutter/material.dart';

import '../../../model/response_detilas/datum.dart';

class ItemSection extends StatelessWidget {
  const ItemSection({
    super.key,
    required this.totalPrice,
    required this.details,
  });
  final List<DataDetails> details;

  final double totalPrice;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        // color: secondaryColor,
        border: Border.all(color: Colors.blueAccent),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Table(
        children: [
          const TableRow(children: [
            Text(
              "Item",
              textAlign: TextAlign.center,
            ),
            Text(
              "Count",
              textAlign: TextAlign.center,
            ),
            Text(
              "Size",
              textAlign: TextAlign.center,
            ),
            Text(
              "Color",
              textAlign: TextAlign.center,
            ),
            Text(
              "ItemPrice",
              textAlign: TextAlign.center,
            ),
          ]),
          ...List.generate(
              details.length,
              (index) => TableRow(children: [
                    Text('${details[index].itemName}',
                        textAlign: TextAlign.center),
                    Text('${details[index].countitems}',
                        textAlign: TextAlign.center),
                    Text('${details[index].cartSize}',
                        textAlign: TextAlign.center),
                    Text('${details[index].cartColor}',
                        textAlign: TextAlign.center),
                    Text('${details[index].itemPrice}',
                        textAlign: TextAlign.center),
                  ])),
        ],
      ),
    );
  }
}
