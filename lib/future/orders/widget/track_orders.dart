import 'package:ecommerce_user/core/extensions/extention_navigator.dart';
import 'package:ecommerce_user/core/theming/theme/colors.dart';
import 'package:flutter/material.dart';
import '../../../core/constans/icons.dart';
import '../../../core/networking/api_constants.dart';
import 'function_update_orders.dart';
import 'view_order_form.dart';

class TrackOrders extends StatelessWidget {
  const TrackOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            "My Detalias  ",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColor.darkOrange),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(shrinkWrap: true, slivers: [
          SliverToBoxAdapter(
            child: Image.asset(Assets.imagesIllustration3),
          ),
          const SliverToBoxAdapter(child: CustemSubmint()),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              child: Stepper(
                physics: const NeverScrollableScrollPhysics(),
                currentStep: context.argument()['step'],
                steps: List.generate(
                    itemStep.length,
                    (i) => Step(
                        state: StepState.complete,
                        isActive: itemStep[i] == selectedOrderStatus,
                        title: Text(
                          itemStep[i],
                          style: const TextStyle(
                              color: AppColor.gray, fontSize: 22),
                        ),
                        content: Text(
                          contentOrders[i],
                          style: const TextStyle(
                              color: AppColor.primaryColorblue, fontSize: 19),
                        ))),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
