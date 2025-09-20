import 'package:ecommerce_user/core/extensions/extention_navigator.dart';
import 'package:ecommerce_user/core/theme/colors.dart';
import 'package:ecommerce_user/future/orders/logic/cubit/orders_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/constans/icons.dart';
import '../../../core/networking/api_constants.dart';
import '../../../model/response_detilas/datum.dart';
import 'details_orders_bloc.dart';
import 'function_update_orders.dart';
import 'view_order_form.dart';

class TrackOrders extends StatelessWidget {
  const TrackOrders({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: (context.argument()['cubit']) as OrdersCubit,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: AppColor.lightGrey,
            title: const Text("My Detalias"),
            centerTitle: true,
            elevation: 0,
            leading: GestureDetector(
              onTap: () => context.pop(),
              child: const Icon(Icons.arrow_back_ios,
                  size: 25, color: AppColor.darkOrange),
            )),
        body: DetailsBlocBuilder(
          orderId: context.argument()['data'].ordersUserid,
        ),
      ),
    );
  }
}

class CustomBodyWidgetDetailasOrders extends StatelessWidget {
  const CustomBodyWidgetDetailasOrders({
    super.key,
    required this.details,
  });
  final List<DataDetails> details;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomScrollView(shrinkWrap: false, slivers: [
        SliverToBoxAdapter(
          child: Image.asset(Assets.imagesIllustration3),
        ),
        SliverToBoxAdapter(
            child: CustemSubmint(
          details: details,
        )),
        SliverToBoxAdapter(
          child: Container(
            color: AppColor.textWhite,
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
                        style:
                            const TextStyle(color: AppColor.gray, fontSize: 22),
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
    );
  }
}
