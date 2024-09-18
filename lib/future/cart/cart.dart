import 'package:flutter/material.dart';

import '../../core/animation/animated_switcher_wrapper.dart';
import '../../core/theming/colors.dart';
import 'widget/buy_now_bottom_sheet.dart';
import 'widget/cart_list_section.dart';
import 'widget/empty_cart.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Cart",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColor.darkOrange),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // cartProvider.myCartItems.isEmpty
          //     ? const EmptyCart()
          //     :  CartListSection(cartProducts: cartProvider.myCartItems);

          //? total price section
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                ),
                AnimatedSwitcherWrapper(
                  child: Text(
                    "\$${100}", //TODO: should complete amount to CartSubTotal
                    // key: ValueKey<double>(cartProvider.getCartSubTotal()),
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFFEC6813),
                    ),
                  ),
                )
              ],
            ),
          ),
          //? buy now button
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
              child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(padding: const EdgeInsets.all(20)),
                // onPressed: context.cartProvider.myCartItems.isEmpty
                //     ? null
                //     : () {
                //         showCustomBottomSheet(context);
                //       },
                onPressed: null,
                child: const Text("Buy Now",
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
