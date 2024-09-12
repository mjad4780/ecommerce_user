import 'package:ecommerce_user/future/home/logic/cubit/home_cubit.dart';
import 'package:ecommerce_user/future/home/logic/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theming/colors.dart';

class CategoriesBlocBuilder extends StatelessWidget {
  const CategoriesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is Loadingsearch ||
          current is SuccessSearch ||
          current is ErrorSearch,
      builder: (context, state) {
        return state.maybeWhen(
          loadingsearch: () {
            return const Center(
              child: CircularProgressIndicator(
                color: AppColor.mainBlue,
              ),
            );
          },
          // successSearch: (products) {
          //   return

          // },
          errorHome: (error) {
            return Text(error);
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
