import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theming/styles.dart';
import '../../../model/response_home/category.dart';
import '../../../model/response_home/item1view.dart';
import '../../../widget/horizondal_list.dart';
import '../../home/widget/product_grid_view.dart';
import '../logic/cubit/item_categories_cubit.dart';

class CustomItemCategories extends StatelessWidget {
  const CustomItemCategories({
    super.key,
    required this.listCategories,
    required this.products,
    required this.category,
  });
  final Category category;

  final List<Category> listCategories;
  final Item1view products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
                floating: true,
                snap: true,
                title: Text(
                  context
                          .read<ItemCategoriesCubit>()
                          .category!
                          .categoriesName ??
                      '',
                  style: TextStyles.textItemCategories,
                )),
            SliverPadding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                sliver: SliverToBoxAdapter(
                  child: HorizontalList(
                    items: listCategories,
                    itemToString: (Category? val) => val?.categoriesName ?? '',
                    selected: context.read<ItemCategoriesCubit>().category,
                    onSelect: (val) {
                      context
                          .read<ItemCategoriesCubit>()
                          .emitItemCategories(val!.categoriesId!, val);
                    },
                  ),
                )),
            SliverPadding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              sliver: SliverToBoxAdapter(
                  child: ProductGridView(
                items: products.data ?? [],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
