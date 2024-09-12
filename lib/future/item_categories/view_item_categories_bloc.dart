import 'package:ecommerce_user/future/item_categories/logic/cubit/item_categories_cubit.dart';
import 'package:ecommerce_user/future/item_categories/logic/cubit/item_categories_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theming/colors.dart';
import '../home/widget/product_grid_view.dart';

class ItemCategoriesBlocBuilder extends StatelessWidget {
  const ItemCategoriesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemCategoriesCubit, ItemCategoriesState>(
      buildWhen: (previous, current) =>
          current is Loading || current is Success || current is Erorr,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            return const Center(
              child: CircularProgressIndicator(
                color: AppColor.mainBlue,
              ),
            );
          },
          success: (products) {
            return ProductGridView(
              items: products.data ?? [],
            );
          },
          erorr: (error) {
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
