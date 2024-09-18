import 'package:flutter/material.dart';

import '../../../core/animation/animated_switcher_wrapper.dart';
import '../data/response_cart/response_cart.dart';
import 'cart_list_section.dart';
import 'empty_cart.dart';

class CustomBodyCart extends StatelessWidget {
  const CustomBodyCart({super.key, required this.responseCart});
  final ResponseCart responseCart;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //? total price section
        responseCart.datacart == []
            ? const EmptyCart()
            : CartListSection(cartProducts: responseCart),

        Container(
          margin: const EdgeInsets.only(bottom: 15),
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Total",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
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
      ],
    );
  }
}
