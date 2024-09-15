import 'package:ecommerce_user/future/home/logic/cubit/home_cubit.dart';
import 'package:ecommerce_user/future/home/logic/cubit/home_state.dart';
import 'package:ecommerce_user/model/response_home/response_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theming/colors.dart';
import 'category_selector.dart';
import 'poster_section.dart';
import 'product_grid_view.dart';

class HomeBlocBuilder extends StatelessWidget {
  const HomeBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      // buildWhen: (previous, current) =>
      //     current is LoadingHome ||
      //     current is SuccessHome ||
      //     current is ErrorHome,
      builder: (context, state) {
        return state.maybeWhen(
          loadingHome: () {
            return const Center(
              child: CircularProgressIndicator(
                color: AppColor.mainBlue,
              ),
            );
          },
          successHome: (products) {
            return SuccessHome(products: products);
          },
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

class SuccessHome extends StatelessWidget {
  const SuccessHome({super.key, required this.products});
  final ResponseHome products;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PosterSection(
          posters: products.setting ?? [],
        ),
        Text(
          "Top categories",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 5),
        CategorySelector(
          categories: products.categories!,
        ),
        const SizedBox(height: 5),
        Text(
          "Top Products",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        ProductGridView(items: products.item1view!.data!),
      ],
    );
  }
}
