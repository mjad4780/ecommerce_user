import 'package:ecommerce_user/future/home/logic/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theming/theme/colors.dart';
import 'get_notification_bloc.dart';

class ViewNotification extends StatelessWidget {
  const ViewNotification({super.key, required this.contexter});
  final BuildContext contexter;
  @override
  Widget build(BuildContext context) {
    var value = contexter.read<HomeCubit>()..getNotification();
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "My Notification",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColor.darkOrange),
          ),
        ),
      ),
      body: BlocProvider.value(
        value: value,
        child: const Scaffold(body: GetNotificationBlocBuilder()),
      ),
    );
  }
}
