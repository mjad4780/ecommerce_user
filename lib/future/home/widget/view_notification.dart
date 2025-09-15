import 'package:ecommerce_user/future/home/logic/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theming/theme/colors.dart';
import 'get_notification_bloc.dart';

class ViewNotification extends StatelessWidget {
  const ViewNotification({super.key, required this.contexter});
  final BuildContext contexter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => context.pop(),
          child: const Icon(Icons.arrow_back_ios,
              size: 25, color: AppColor.darkOrange),
        ),
        title: const Center(
          child: Text(
            "My Notification",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColor.darkOrange),
          ),
        ),
        forceMaterialTransparency: true,
      ),
      body: BlocProvider.value(
        value: contexter.read<HomeCubit>()..getNotification(),
        child: const Scaffold(body: GetNotificationBlocBuilder()),
      ),
    );
  }
}
