import 'package:ecommerce_user/core/extensions/extention_navigator.dart';
import 'package:ecommerce_user/core/theme/colors.dart';
import 'package:ecommerce_user/future/cart/logic/cubit/cart_cubit.dart';
import 'package:ecommerce_user/future/cart/logic/cubit/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/animation/animated_switcher_wrapper.dart';
import '../../../core/helpers/spacing.dart';
import '../data/response_cart.dart';
import '../../check_cart_order/ui/buy_now_bottom_sheet.dart';
import 'cart_list_section.dart';
import 'empty_cart.dart';
import 'get_cart_bloc.dart';

class CustomBodyCart extends StatelessWidget {
  const CustomBodyCart({super.key, required this.responseCart});
  final ResponseCart responseCart;
  @override
  Widget build(BuildContext context) {
    return responseCart.datacart.isEmpty
        ? const EmptyCart()
        : Column(
            children: [
              verticalSpace(30),
              Row(
                children: [
                  IconButton(
                      onPressed: () => context.pop(),
                      icon: const Icon(Icons.arrow_back_ios,
                          color: AppColor.darkOrange)),
                  const Spacer(),
                  const Center(
                    child: Text(
                      "My Cart    ",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColor.darkOrange),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              // ? total price section
              Expanded(child: CartListSection(cartProducts: responseCart)),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Total",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                    ),
                    AnimatedSwitcherWrapper(
                      child: Text(
                        "\$${responseCart.totalPriceOffers}",
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFFEC6813),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              BlocConsumer<CartCubit, CartState>(
                listener: (context, state) {},
                builder: (context, state) => SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, bottom: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(20),
                        backgroundColor: responseCart.datacart == []
                            ? Colors.white
                            : AppColor.primaryColor,
                      ),
                      onPressed: responseCart.datacart == []
                          ? null
                          : context.read<CartCubit>().isUpdating
                              ? () {
                                  context
                                      .read<CartCubit>()
                                      .updateQuantity(context);
                                }
                              : () {
                                  showCustomBottomSheet(
                                      context,
                                      responseCart.totalPrice.toInt(),
                                      responseCart.totalPriceOffers.toInt());
                                },
                      child: Text(
                          context.read<CartCubit>().isUpdating
                              ? "Update Cart"
                              : "Buy Now",
                          style: TextStyle(
                              color: responseCart.datacart == []
                                  ? AppColor.primaryColor
                                  : Colors.white)),
                    ),
                  ),
                ),
              ),
              const UpdateCartBlocListener()
            ],
          );
  }
}
