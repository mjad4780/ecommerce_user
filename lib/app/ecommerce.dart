import 'package:ecommerce_user/core/class/cache_helper.dart';
import 'package:ecommerce_user/core/get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/Router/route.dart';
import '../core/class/connectivity_controller.dart';
import '../core/class/pref_keys.dart';
import '../core/theming/theme/app_theme.dart';
import '../future/home/widget/no_network_screen.dart';
import 'app_cubit/app_cubit.dart';

class Ecommerce extends StatefulWidget {
  const Ecommerce({super.key});

  @override
  State<Ecommerce> createState() => _EcommerceState();
}

class _EcommerceState extends State<Ecommerce> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AppCubit>()
        ..changeAppThemeMode(
            sharedMode: getIt<CacheHelper>().getData(key: PrefKeys.themeMode)),
      child: ValueListenableBuilder(
          valueListenable: ConnectivityController.instance.isConnected,
          builder: (_, value, __) {
            if (value) {
              return ScreenUtilInit(
                designSize: const Size(375, 812),
                minTextAdapt: true,
                child: BlocBuilder<AppCubit, AppState>(
                  buildWhen: (previous, current) {
                    return previous != current;
                  },
                  builder: (context, state) {
                    return MaterialApp.router(
                      routerConfig: router,
                      debugShowCheckedModeBanner: false,
                      title: 'Flutter e-ecommerce ',
                      theme: context.read<AppCubit>().isDark
                          ? themeLight()
                          : themeDark(),
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
                  },
                ),
              );
            } else {
              return const MaterialApp(
                title: 'No NetWork ',
                home: NoNetWorkScreen(),
              );
            }
          }),
    );
  }
}
