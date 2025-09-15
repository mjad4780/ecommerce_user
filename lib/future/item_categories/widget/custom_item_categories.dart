import 'package:ecommerce_user/future/item_categories/logic/cubit/item_categories_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theming/styles.dart';
import '../../../widget/horizondal_list.dart';
import '../../home/data/models/response_home/response_home.dart';
import '../logic/cubit/item_categories_cubit.dart';
import 'view_item_categories_bloc.dart';

class CustomItemCategories extends StatelessWidget {
  const CustomItemCategories({
    super.key,
    required this.listCategories,
    required this.category,
  });
  final Category category;

  final List<Category> listCategories;

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
                  'Item Categories',
                  style: TextStyles.textItemCategories,
                )),
            BlocConsumer<ItemCategoriesCubit, ItemCategoriesState>(
              buildWhen: (previous, current) => current is SelectCategories,
              listener: (context, state) {},
              builder: (context, state) {
                return SliverPadding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    sliver: SliverToBoxAdapter(
                      child: HorizontalList(
                        items: listCategories,
                        itemToString: (Category? val) =>
                            val?.categoriesName ?? '',
                        selected: context.read<ItemCategoriesCubit>().category,
                        onSelect: (val) {
                          context
                              .read<ItemCategoriesCubit>()
                              .selectitemCategories(val!);
                          context
                              .read<ItemCategoriesCubit>()
                              .emitItemCategories(
                                val.categoriesId!,
                              );
                        },
                      ),
                    ));
              },
            ),
            const SliverPadding(
              padding: EdgeInsets.only(left: 20, right: 20),
              sliver: SliverToBoxAdapter(child: ItemCategoriesBlocBuilder()),
            ),
          ],
        ),
      ),
    );
  }
}
