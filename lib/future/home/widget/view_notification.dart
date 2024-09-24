import 'package:ecommerce_user/future/home/logic/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theming/colors.dart';
import 'get_notification_bloc.dart';

class ViewNotification extends StatelessWidget {
  const ViewNotification({super.key});
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return BlocProvider.value(
        value: context.read<HomeCubit>()..getNotification(),
        child: Scaffold(
          body: Column(
            children: [
              verticalSpace(38),
              const Center(
                child: Text(
                  "My Notification",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColor.darkOrange),
                ),
              ),
              const GetNotificationBlocBuilder()
            ],
          ),
        ),
      );
    });
  }
}
