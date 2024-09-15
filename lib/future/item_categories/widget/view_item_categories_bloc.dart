import 'package:ecommerce_user/future/item_categories/logic/cubit/item_categories_cubit.dart';
import 'package:ecommerce_user/future/item_categories/logic/cubit/item_categories_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theming/colors.dart';
import '../../../model/response_home/category.dart';
import 'custom_item_categories.dart';

class ItemCategoriesBlocBuilder extends StatelessWidget {
  const ItemCategoriesBlocBuilder(
      {super.key, required this.listCategories, required this.category});
  final Category category;

  final List<Category> listCategories;

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
            return CustomItemCategories(
              listCategories: listCategories,
              products: products,
              category: category,
            );
          },
          erorr: (error) {
            return const Center(child: Text('Sorry......'));
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
