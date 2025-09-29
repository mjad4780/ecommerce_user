import 'package:ecommerce_user/future/item_categories/logic/cubit/item_categories_cubit.dart';
import 'package:ecommerce_user/future/item_categories/logic/cubit/item_categories_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../home/data/models/response_home/response_home.dart';
import '../../home/widget/product_grid_view.dart';

class ItemCategoriesBlocBuilder extends StatelessWidget {
  const ItemCategoriesBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemCategoriesCubit, ItemCategoriesState>(
      buildWhen: (previous, current) =>
          current is Loading || current is Success || current is Erorr,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            return Skeletonizer(
              enabled: true,
              child: ProductGridView(
                location: '/item',
                items: [
                  Item(),
                  Item(),
                  Item(),
                  Item(),
                  Item(),
                ],
              ),
            );
          },
          success: (products) {
            final items = products.data ?? [];

            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 400),
              child: items.isEmpty
                  ? Center(
                      key: const ValueKey('empty'),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TweenAnimationBuilder<double>(
                            tween: Tween(begin: 0.8, end: 1.2),
                            duration: const Duration(seconds: 1),
                            curve: Curves.easeInOut,
                            builder: (context, value, child) {
                              return Transform.scale(
                                scale: value,
                                child: child,
                              );
                            },
                            onEnd: () {
                              // إعادة تشغيل الأنيميشن بشكل مستمر
                            },
                            child: const Icon(
                              Icons.shopping_bag_outlined,
                              size: 100,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'لا توجد منتجات متاحة حالياً',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                    )
                  : ProductGridView(
                      key: const ValueKey('grid'),
                      location: '/item',
                      items: items,
                    ),
            );
          },
          erorr: (error) {
            return const Center(child: Text('Sorry! no Items......'));
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
