import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/Router/route.dart';
import '../core/helpers/connectivity_controller.dart';
import '../core/theming/theme/app_theme.dart';
import '../future/home/widget/no_network_screen.dart';

class Ecommerce extends StatelessWidget {
  const Ecommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: ValueListenableBuilder(
            valueListenable: ConnectivityController.instance.isConnected,
            builder: (_, value, __) {
              if (value) {
                return MaterialApp.router(
                  routerConfig: router,
                  debugShowCheckedModeBanner: false,
                  title: 'Flutter e-ecommerce ',
                  theme: themeLight(),
                  builder: (context, widget) {
                    return GestureDetector(
                      onTap: () {
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      child: Scaffold(
                        body: Builder(
                          builder: (context) {
                            ConnectivityController.instance.init();
                            return widget!;
                          },
                        ),
                      ),
                    );
                  },
                );
              } else {
                return const MaterialApp(
                  title: 'No NetWork ',
                  home: NoNetWorkScreen(),
                );
              }
            }));
  }
}
