import 'package:ecommerce_user/core/widgets/failer_widget.dart';
import 'package:ecommerce_user/future/cart/logic/cubit/cart_cubit.dart';
import 'package:ecommerce_user/future/cart/logic/cubit/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/function/setuo_erorr_state.dart';
import '../../../core/theme/colors.dart';

import 'custom_body_cart.dart';

class GetCartBlocBuilder extends StatelessWidget {
  const GetCartBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      buildWhen: (previous, current) =>
          current is LoadingGet || current is SuccessGet || current is ErorrGet,
      builder: (context, state) {
        return state.maybeWhen(
          loadingGet: () {
            return
                // CartListSection(cartProducts: responseCart),

                const Center(
              child: CircularProgressIndicator(
                color: AppColor.mainBlue,
              ),
            );
          },
          successGet: (products) {
            return CustomBodyCart(responseCart: products);
          },
          erorrGet: (error) {
            return FailerWidget(
                messege: error,
                onPressed: () {
                  context.read<CartCubit>().emitGetCart();
                });
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}

class UpdateCartBlocListener extends StatelessWidget {
  const UpdateCartBlocListener({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<CartCubit, CartState>(
      listenWhen: (previous, current) =>
          current is LoadingUpdate ||
          current is SuccessUpdate ||
          current is ErrorUpdate,
      listener: (context, state) {
        state.maybeWhen(
          loadingUpdate: () {
            // CartListSection(cartProducts: responseCart),

            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: AppColor.mainBlue,
                ),
              ),
            );
          },
          successUpdate: () {},
          errorUpdate: (error) {
            setupErrorState(context, error);
            Future.delayed(const Duration(microseconds: 555), () {
              if (context.mounted) {
                context.read<CartCubit>().emitGetCart();
              }
            });
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
