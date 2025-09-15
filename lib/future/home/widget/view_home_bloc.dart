import 'package:ecommerce_user/core/widgets/failer_widget.dart';
import 'package:ecommerce_user/core/widgets/loading.dart';
import 'package:ecommerce_user/future/home/logic/cubit/home_cubit.dart';
import 'package:ecommerce_user/future/home/logic/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/models/response_home/response_home.dart';
import 'success_data_api.dart';

class HomeBlocBuilder extends StatelessWidget {
  const HomeBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is LoadingHome ||
          current is ErrorHome ||
          current is SuccessHome,
      builder: (context, state) {
        if (state is LoadingHome) {
          return _buildSkeleton();
        } else if (state is ErrorHome) {
          return FailerWidget(
              messege: state.erorr,
              onPressed: () {
                context.read<HomeCubit>().emitHome();
              });
        } else if (state is SuccessHome) {
          return SuccessDataApi(
            responseHome: state.responseHome,
          );
        }

        return const SizedBox.shrink();
      },
    );
  }

  // Helper methods for cleaner widget building

  Widget _buildSkeleton() {
    return LoadingWidget(
      child: SuccessDataApi(
          isloading: true,
          responseHome: ResponseHome(
              item1view: Item1view(data: [Item(), Item(), Item(), Item()]),
              setting: SettingResponse(data: [
                Setting(),
                Setting(),
                Setting(),
              ]),
              categories: CategoriesResponse(
                  data: [Category(), Category(), Category()]))),
    );
  }
}
