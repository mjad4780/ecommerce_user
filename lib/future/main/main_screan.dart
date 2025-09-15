import 'package:animations/animations.dart';
import 'package:ecommerce_user/core/get_it/get_it.dart';
import 'package:ecommerce_user/future/favorite/logic/cubit/favorite_cubit.dart';

import 'package:ecommerce_user/future/home/logic/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_user/core/extensions/extention_navigator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/function/alert_dialog.dart';
import '../../core/theming/theme/colors.dart';
import 'widget/costemappbarnavigationbottom.dart';
import 'widget/main_view_body.dart';

class MainScrean extends StatefulWidget {
  const MainScrean({super.key});

  @override
  State<MainScrean> createState() => _MainScreanState();
}

class _MainScreanState extends State<MainScrean> {
  int currentViewIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<HomeCubit>()
              ..emitHome()
              ..determinePosition(),
          ),
          BlocProvider(
            create: (context) => getIt<FavoriteCubit>(),
          ),
        ],
        child: Scaffold(
            extendBodyBehindAppBar: true,
            bottomNavigationBar: CustemAppbarNavigationBottom(
              onItemTapped: (index) {
                currentViewIndex = index;
                setState(() {});
              },
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
              backgroundColor: AppColor.primaryColor,
              onPressed: () {
                context.push('/Cart');
              },
              child: const Icon(
                Icons.shopping_basket_outlined,
                color: Colors.white,
              ),
            ),
            body: PopScope(
                canPop: false,
                onPopInvoked: (didPop) {
                  testAlert(context, 'warning', "Do you went to exit the app");
                },
                child: PageTransitionSwitcher(
                  duration: const Duration(seconds: 1),
                  transitionBuilder: (
                    Widget child,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                  ) {
                    return FadeThroughTransition(
                      animation: animation,
                      secondaryAnimation: secondaryAnimation,
                      child: child,
                    );
                  },
                  child: MainViewBody(currentViewIndex: currentViewIndex),
                ))));
  }
}
