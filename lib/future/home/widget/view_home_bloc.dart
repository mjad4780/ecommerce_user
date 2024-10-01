import 'package:ecommerce_user/future/home/logic/cubit/home_cubit.dart';
import 'package:ecommerce_user/future/home/logic/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theming/colors.dart';
import '../data/models/response_home/response_home.dart';
import 'CardSearch.dart';
import 'category_selector.dart';
import 'poster_section.dart';
import 'product_grid_view.dart';

class HomeBlocBuilder extends StatelessWidget {
  const HomeBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is LoadingHome) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColor.mainBlue,
            ),
          );
        } else if (state is ErrorHome) {
          return Text(state.erorr);
        } else if (state is SuccessSearch &&
            context.read<HomeCubit>().search.text.isNotEmpty) {
          return ListItemsSearch(
            listdatamodel: state.responseItems.data ?? [],
          );
        } else if (state is SuccessHome &&
            context.read<HomeCubit>().search.text.isEmpty) {
          return Success(
            responseHome: state.responseHome,
          );
        } else if (context.read<HomeCubit>().search.text.isEmpty) {
          return Success(responseHome: context.read<HomeCubit>().responseHome!);
        } else if (state is ErrorSearch) {
          return const Center(child: Text('No Items.......................'));
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}

class Success extends StatelessWidget {
  const Success({
    super.key,
    required this.responseHome,
  });
  final ResponseHome responseHome;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PosterSection(
          posters: responseHome.setting ?? [],
        ),
        Text(
          "Top categories",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 5),
        CategorySelector(
          categories: responseHome.categories!,
        ),
        const SizedBox(height: 5),
        Text(
          "Top Products",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        ProductGridView(items: responseHome.item1view!.data!),
      ],
    );
  }
}
