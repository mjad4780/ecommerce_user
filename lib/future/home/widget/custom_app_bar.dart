import 'package:ecommerce_user/core/extensions/extention_navigator.dart';

import 'package:ecommerce_user/future/home/logic/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/animation/open_container_wrapper.dart';
import '../../../core/theming/colors.dart';
import '../../item_categories/widget/app_bar_action_button.dart';
import 'custom_search_bar.dart';
import 'view_notification.dart';

class CustomAppBar extends StatelessWidget {
  @override
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: CustomSearchBar(
                controller: context.read<HomeCubit>().search,
                onChanged: (val) {
                  context.read<HomeCubit>().emitSearch();
                },
              ),
            ),
            AppBarActionButton(
              icon: Icons.chat,
              onPressed: () {
                context.push('/HomePage');
              },
            ),
            OpenContainerWrapper(
                nextScresan: ViewNotification(
                  contexter: context,
                ),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: AppColor.lightGrey,
                  ),
                  child: const Icon(
                    Icons.notifications,
                    color: Colors.black,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
