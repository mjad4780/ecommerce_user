import 'package:ecommerce_user/future/home/logic/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../home/logic/cubit/home_cubit.dart';
import '../model/modelBottomNavigation.dart';
import 'CostemBottomNavigation.dart';

class CustemAppbarNavigationBottom extends StatelessWidget {
  const CustemAppbarNavigationBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 70,
      shape: const CircularNotchedRectangle(),
      notchMargin: 11,
      surfaceTintColor: Colors.red,
      child: Row(
        children: [
          ...List.generate(context.read<HomeCubit>().buttompage.length + 1,
              (index) {
            int i = index > 2 ? index - 1 : index;
            return index == 2
                ? const Spacer()
                : BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
                    return state is StateBottomNavigationBar
                        ? custembutom(
                            i, context, context.read<HomeCubit>().currentPage)
                        : custembutom(i, context, 0);
                  });
          })
        ],
      ),
    );
  }

  CostemBottomNavigation custembutom(int i, BuildContext context, int page) {
    return CostemBottomNavigation(
        iconData: bottomNavigation[i].iconData,
        text: bottomNavigation[i].title,
        onPressed: () {
          context.read<HomeCubit>().emitCurrentPage(i);
        },
        active: page == i ? true : false);
  }
}
