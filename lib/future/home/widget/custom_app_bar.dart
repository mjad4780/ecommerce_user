import 'package:ecommerce_user/core/extensions/extention_navigator.dart';

import 'package:flutter/material.dart';

import '../../../core/animation/open_container_wrapper.dart';
import '../../../core/theming/theme/colors.dart';
import '../../item_categories/widget/app_bar_action_button.dart';
import 'view_notification.dart';

class CustomAppBar extends StatelessWidget {
  @override
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => context.push('/Search'),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200],
                ),
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: FocusScope(
                  node: FocusScopeNode(),
                  child: const Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 10),
                      Text('Search...')
                      // Expanded(
                      //   child: TextField(
                      //     focusNode: _focusNode,
                      //     controller: widget.controller,
                      //     decoration: const InputDecoration(
                      //       hintText: 'Search...',
                      //       border: InputBorder.none,
                      //     ),
                      //     autofocus: false,
                      //     onChanged: widget.onChanged,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ),

            //  CustomSearchBar(
            //   controller: context.read<HomeCubit>().search,
            //   onChanged: (val) {
            //     context.read<HomeCubit>().emitSearch();
            //   },
            // ),
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
    );
  }
}
