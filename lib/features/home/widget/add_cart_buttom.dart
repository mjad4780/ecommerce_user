import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/function/setuo_erorr_state.dart';
import '../../../core/theme/colors.dart';
import '../../cart/logic/cubit/cart_cubit.dart';
import '../../cart/logic/cubit/cart_state.dart';

class AddToCartButton extends StatelessWidget {
  final int itemCount;
  final int itemId;

  const AddToCartButton({
    super.key,
    required this.itemCount,
    required this.itemId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartCubit, CartState>(
      listenWhen: (previous, current) => current is ErrorAdd,
      listener: (context, state) {
        if (state is ErrorAdd) {
          setupErrorState(context, state.erorr, false); // << عرض الـ Dialog
        }
      },
      buildWhen: (previous, current) =>
          current is LoadingAdd || current is SuccessAdd || current is ErrorAdd,
      builder: (context, state) {
        final bool isLoading = state is LoadingAdd;

        return SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(20),
              backgroundColor: AppColor.primaryColor,
            ),
            onPressed: (itemCount != 0 && !isLoading)
                ? () {
                    context.read<CartCubit>().emitAddCart(
                          itemId,
                          context,
                          '/ProductDetailScreen',
                        );
                  }
                : null,
            child: _buildChild(isLoading),
          ),
        );
      },
    );
  }

  Widget _buildChild(bool isLoading) {
    if (isLoading) {
      return const SizedBox(
        height: 22,
        width: 22,
        child: CircularProgressIndicator(
          strokeWidth: 2.5,
          color: Colors.white,
        ),
      );
    }

    return const Text(
      "Add to cart",
      style: TextStyle(color: Colors.white),
    );
  }
}
