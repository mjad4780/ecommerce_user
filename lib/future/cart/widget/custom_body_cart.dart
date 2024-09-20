import 'package:ecommerce_user/core/theming/colors.dart';
import 'package:flutter/material.dart';

import '../../../core/animation/animated_switcher_wrapper.dart';
import '../../../core/helpers/spacing.dart';
import '../data/response_cart/response_cart.dart';
import '../../check_cart_order/ui/buy_now_bottom_sheet.dart';
import 'cart_list_section.dart';
import 'empty_cart.dart';

class CustomBodyCart extends StatelessWidget {
  const CustomBodyCart({super.key, required this.responseCart});
  final ResponseCart responseCart;
  @override
  Widget build(BuildContext context) {
    return responseCart.datacart!.isEmpty
        ? const EmptyCart()
        : Column(
            children: [
              verticalSpace(38),
              const Center(
                child: Text(
                  "My Cart",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColor.darkOrange),
                ),
              ),
              //? total price section
              CartListSection(cartProducts: responseCart),

              Container(
                margin: const EdgeInsets.only(bottom: 15),
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
                        "\$${responseCart.totapriceOffers}", //TODO: should complete amount to CartSubTotal
                        // key: ValueKey<double>(cartProvider.getCartSubTotal()),
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

              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(20),
                      backgroundColor: responseCart.datacart == []
                          ? Colors.white
                          : AppColor.primaryColor,
                    ),
                    onPressed: responseCart.datacart == []
                        ? null
                        : () {
                            showCustomBottomSheet(
                                context,
                                responseCart.totaprice ?? 0,
                                responseCart.totapriceOffers ?? 0);
                          },
                    child: Text("Buy Now",
                        style: TextStyle(
                            color: responseCart.datacart == []
                                ? AppColor.primaryColor
                                : Colors.white)),
                  ),
                ),
              )
            ],
          );
  }
}
