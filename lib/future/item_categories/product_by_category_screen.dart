import 'package:ecommerce_user/core/get_it/get_it.dart';
import 'package:ecommerce_user/future/item_categories/logic/cubit/item_categories_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../model/response_home/category.dart';

import 'package:flutter/material.dart';

import 'widget/custom_item_categories.dart';

class ProductByCategoryScreen extends StatelessWidget {
  final List<Category> listCategories;
  final Category category;

  const ProductByCategoryScreen(
      {super.key, required this.listCategories, required this.category});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ItemCategoriesCubit>()
        ..emitItemCategories(category.categoriesId!)
        ..selectitemCategories(category),
      child: CustomItemCategories(
          category: category, listCategories: listCategories),
    );
  }
}
