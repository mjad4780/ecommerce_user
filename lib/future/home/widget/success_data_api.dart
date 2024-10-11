import 'package:flutter/material.dart';

import '../data/models/response_home/response_home.dart';
import 'category_selector.dart';
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
