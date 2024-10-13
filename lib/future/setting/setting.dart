import 'package:ecommerce_user/core/extensions/extention_navigator.dart';
import 'package:ecommerce_user/future/orders/ui/my_order_screen.dart';
import 'package:flutter/material.dart';

import '../../core/animation/open_container_wrapper.dart';
import '../../core/class/cache_helper.dart';

import '../../core/get_it/get_it.dart';
import '../../core/theming/colors.dart';
import '../../core/widgets/navigation_tile.dart';
import '../adress/adress.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const SizedBox(
          height: 10,
        ),
        const Center(
          child: Text(
            "My Account",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColor.darkOrange),
          ),
        ),
        // const DarkModeChange(),

        const SizedBox(
          height: 200,
          child: CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage(
              'assets/images/profile_pic.png',
            ),
          ),
        ),
        const SizedBox(height: 20),
        Center(
          child: Text(
            "${getIt<CacheHelper>().getData(key: 'name') ?? 'Mohamed jad'}",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        const SizedBox(height: 40),
        const OpenContainerWrapper(
          nextScresan: MyOrderScreen(),
          child: NavigationTile(
            icon: Icons.list,
            title: 'My Orders',
          ),
        ),
        const SizedBox(height: 15),
        const OpenContainerWrapper(
          nextScresan: MyAddressPage(),
          child: NavigationTile(
            icon: Icons.location_on,
            title: 'My Addresses',
          ),
        ),
        const SizedBox(height: 20),
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.darkOrange,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
            ),
            onPressed: () async {
              getIt<CacheHelper>().clearData();
              context.pushpushReplacement('/OnbordingScreen');
            },
            child: const Text('Logout', style: TextStyle(fontSize: 18)),
          ),
        ),
      ],
    );
  }
}
