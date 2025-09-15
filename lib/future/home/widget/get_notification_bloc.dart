import 'package:ecommerce_user/future/home/logic/cubit/home_cubit.dart';
import 'package:ecommerce_user/future/home/logic/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theming/theme/colors.dart';
import 'date_notification.dart';

class GetNotificationBlocBuilder extends StatelessWidget {
  const GetNotificationBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is LoadinggetNotification ||
          current is SuccessgetNotification ||
          current is ErrorgetNotification,
      builder: (context, state) {
        return state.maybeWhen(
          loadinggetNotification: () {
            return const Center(
              child: CircularProgressIndicator(
                color: AppColor.mainBlue,
              ),
            );
          },
          successgetNotification: (products) {
            return DataNotification(
              response: products,
            );

            // CustomBodyCart(responseCart: products);
          },
          errorgetNotification: (error) {
            return Center(child: Text(error));
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
