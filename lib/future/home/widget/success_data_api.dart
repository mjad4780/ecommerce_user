import 'package:flutter/material.dart';

import '../data/models/response_home/response_home.dart';
import 'category_selector.dart';
import 'custom_app_bar.dart';
import 'poster_section.dart';
import 'product_grid_view.dart';

class SuccessDataApi extends StatelessWidget {
  const SuccessDataApi({
    super.key,
    required this.responseHome,
  });

  final ResponseHome responseHome;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
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

        const SliverToBoxAdapter(child: CustomAppBar()),
        // Poster Section
        PosterSection(
          posters: responseHome.setting?.data ?? [],
        ),

        // Top Categories
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Top Categories",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ),
        CategorySelector(
          categories: responseHome.categories?.data ?? [],
        ),

        // Top Products
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Top Products",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ),

        ProductGridView(
          items: responseHome.item1view?.data ?? [],
        ),
      ]),
    );
  }
}
