import 'package:ecommerce_user/future/home/data/models/response_home/response_home.dart';
import 'package:flutter/material.dart';

import 'product_detail_screen.dart';
import 'product_grid_tile.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({
    super.key,
    required this.items,
    required this.location,
  });
  final String location;
  final List<Item> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11),
      child: GridView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
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
      ),
    );
  }
}
