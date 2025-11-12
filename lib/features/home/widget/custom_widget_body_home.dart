import 'package:ecommerce_user/core/extensions/extention_navigator.dart';
import 'package:ecommerce_user/core/widgets/loading.dart';
import 'package:flutter/material.dart';

import '../../../core/helpers/inherted_data.dart';
import '../data/models/response_home/response_home.dart';
import 'category_selector.dart';
import 'custom_app_bar.dart';
import 'poster_section.dart';
import 'product_grid_view.dart';

class CustomWidgetBodyHome extends StatelessWidget {
  const CustomWidgetBodyHome({
    super.key,
    required this.responseHome,
    this.isloading = false,
  });
  final bool isloading;
  final ResponseHome responseHome;

  @override
  Widget build(BuildContext context) {
    return DataProviderScope(
      data: responseHome,
      builder: (context) {
        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: LoadingWidget(
                isloading: isloading,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi",
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Let’s get something?",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SliverToBoxAdapter(
                child: LoadingWidget(
                    isloading: isloading, child: const CustomAppBar())),
            // Poster Section
            SliverToBoxAdapter(
              child: LoadingWidget(
                  isloading: isloading,
                  child: PosterSection(
                    isloading: isloading,
                    posters: responseHome.setting?.data ?? [],
                  )),
            ),

            // Top Categories
            SliverToBoxAdapter(
              child: LoadingWidget(
                  isloading: isloading,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Top Categories",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  )),
            ),
            SliverToBoxAdapter(
              child: LoadingWidget(
                  isloading: isloading,
                  child: CategorySelector(
                    categories: responseHome.categories?.data ?? [],
                  )),
            ),

            // Top Products
            SliverToBoxAdapter(
              child: LoadingWidget(
                  isloading: isloading,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Top Products",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  )),
            ),

            SliverToBoxAdapter(
                child: LoadingWidget(
                    isloading: isloading,
                    child: ProductGridView(
                      location: context.currentRoute,
                      items: responseHome.item1view?.data ?? [],
                    ))),
          ],
        );
      },
    );
  }
}
