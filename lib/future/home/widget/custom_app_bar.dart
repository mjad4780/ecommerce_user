import 'package:ecommerce_user/core/extensions/extention_navigator.dart';
import 'package:ecommerce_user/future/home/logic/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../item_categories/widget/app_bar_action_button.dart';
import 'custom_search_bar.dart';

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
            // AppBarActionButton(
            //   icon: Icons.menu,
            //   onPressed: () {
            //     Scaffold.of(context).openDrawer();
            //   },
            // ),
            Expanded(
              child: CustomSearchBar(
                controller: context.read<HomeCubit>().search,
                onChanged: (val) {
                  context.read<HomeCubit>().emitSearch();
                },
              ),
            ),
            AppBarActionButton(
              icon: Icons.notifications,
              onPressed: () {
                context.push('/ViewNotification');
              },
            ),
          ],
        ),
      ),
    );
  }
}
