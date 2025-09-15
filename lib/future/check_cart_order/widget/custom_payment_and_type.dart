import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widgets/custom_dropdown.dart';
import '../logic/cubit/check_cart_cubit.dart';
import '../logic/cubit/check_cart_state.dart';

class CustomTypeAndPyment extends StatelessWidget {
  const CustomTypeAndPyment({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CheckCartCubit, CheckCartState>(
      buildWhen: (previous, current) =>
          current is SelectPayment || current is SelectType,
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Enter Payment'),

            CustomDropdown<String>(
                bgColor: Colors.white,
                hintText:
                    context.read<CheckCartCubit>().selectedPaymentOptionS ??
                        'choose Payment Orders',
                items: const ['payment card', 'cash'],
                onChanged: (val) {
                  context.read<CheckCartCubit>().selectPyment(val!);
                },
                displayItem: (val) => val),
            const Text('Enter Type'),

            // // Payment Options

            CustomDropdown<String>(
                bgColor: Colors.white,
                hintText: context.read<CheckCartCubit>().orderTypeS ??
                    'choose Type Orders',
                items: const ['recive', 'delviry'],
                onChanged: (val) {
                  context.read<CheckCartCubit>().selectType(val ?? 'delviry');
                },
                displayItem: (val) => val),
          ],
        );
      },
    );
  }
}
