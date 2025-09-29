import 'package:ecommerce_user/core/extensions/extention_navigator.dart';

import '../../../core/helpers/spacing.dart';

import 'package:flutter/material.dart';

import '../../../model/response_detilas/datum.dart';
import 'FormRow.dart';
import 'addressSection.dart';
import 'itemsSection.dart';
import 'paymentDetailsSection.dart';

class CustemSubmint extends StatelessWidget {
  const CustemSubmint({
    super.key,
    required this.details,
  });
  final List<DataDetails> details;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          // color: Colors.white,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FormRow(
                        text: 'Name:',
                        widget: Text(context
                            .argument()['data']
                            .ordersUserid
                            .toString())),
                    FormRow(
                        text: 'Order Id:',
                        widget: Text(
                          context.argument()['data'].ordersId.toString(),
                        )),
                  ],
                ),
              ),

              ItemSection(
                details: details,
                totalPrice: context.argument()['data'].orderToatalprice ?? 0.0,
              ),
              // DetailsBlocBuilder(
              //   orderId: context.argument()['data'].ordersUserid,
              //   tatalPrice: context.argument()['data'].orderToatalprice ?? 0.0,
              // ),
              AddressSection(order: context.argument()['data']),
              verticalSpace(10),
              PaymentDetailsSection(
                order: context.argument()['data'],
              ),
            ],
          )),
    );
  }
}
