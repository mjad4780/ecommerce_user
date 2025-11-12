import 'package:flutter/material.dart';

import '../../home/data/models/response_home/response_home.dart';
import '../../home/widget/product_detail_screen.dart';
import '../../home/widget/product_grid_tile.dart';

class ProductGridViewFavorite extends StatelessWidget {
  const ProductGridViewFavorite({
    super.key,
    required this.items,
    required this.location,
  });

  final List<Item> items;
  final String location;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 10 / 16,
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (__, index) {
        return GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProductDetailScreen(items[index]))),
            child: ProductGridTile(
              location: location,
              product: items[index],
              index: index,
            ));
      },
    );
  }
}
