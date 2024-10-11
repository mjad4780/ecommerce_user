import 'package:animations/animations.dart';
import 'package:ecommerce_user/core/get_it/get_it.dart';
import 'package:ecommerce_user/future/favorite/logic/cubit/favorite_cubit.dart';

import 'package:ecommerce_user/future/home/logic/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_user/core/extensions/extention_navigator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/function/alert_dialog.dart';
import '../../core/theming/colors.dart';
import '../home/logic/cubit/home_state.dart';
import 'widget/costemappbarnavigationbottom.dart';

class HomeScrean extends StatelessWidget {
  const HomeScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => getIt<HomeCubit>()
            ..emitHome()
            ..determinePosition(),
        ),
        BlocProvider(
          create: (context) => getIt<FavoriteCubit>(),
        ),
      ],
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
              drawer: const Drawer(),
              extendBodyBehindAppBar: true,
              bottomNavigationBar: const CustemAppbarNavigationBottom(),
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
                    testAlert(
                        context, 'warning', "Do you went to exit the app");
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
                    child: context
                        .read<HomeCubit>()
                        .buttompage
                        .elementAt(context.read<HomeCubit>().currentPage),
                  )));
        },
      ),
    );
  }
}
