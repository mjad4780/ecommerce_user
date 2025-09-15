import 'package:ecommerce_user/core/extensions/extention_navigator.dart';
import 'package:ecommerce_user/core/get_it/get_it.dart';
import 'package:ecommerce_user/future/orders/logic/cubit/orders_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/helpers/spacing.dart';

import 'package:flutter/material.dart';

import 'FormRow.dart';
import 'addressSection.dart';
import 'details_orders_bloc.dart';
import 'paymentDetailsSection.dart';

class CustemSubmint extends StatelessWidget {
  const CustemSubmint({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          color: Colors.white,
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
              BlocProvider(
                  create: (contextt) => getIt<OrdersCubit>()
                    ..emitGetDetails(context.argument()['data'].ordersId),
                  child: DetailsBlocBuilder(
                    tatalPrice:
                        context.argument()['data'].orderToatalprice ?? 0,
                  )),
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
