import 'package:ecommerce_user/future/home/data/models/response_home/datum.dart';
import 'package:flutter/material.dart';

import '../../../core/animation/open_container_wrapper.dart';
import 'product_detail_screen.dart';
import 'product_grid_tile.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({
    super.key,
    required this.items,
  });

  final List<Datum> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
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
        itemBuilder: (context, index) {
          return
              // OpenContainerWrapper(
              //     nextScresan: ProductDetailScreen(items[index]),
              //     child:

              GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProductDetailScreen(items[index]))),
            child: ProductGridTile(
              product: items[index],
              index: index,
            ),
          );
        },
      ),
    );
  }
}
