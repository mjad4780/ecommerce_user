import 'package:ecommerce_user/core/extensions/extention_navigator.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/colors.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Empty Cart"),
          centerTitle: true,
          elevation: 0,
          leading: GestureDetector(
            onTap: () => context.pop(),
            child: const Icon(Icons.arrow_back_ios,
                size: 25, color: AppColor.darkOrange),
          )),
      body: SafeArea(
        child: Center(
          child: Image.asset('assets/images/empty_cart.png'),
        ),
      ),
    );
  }
}
