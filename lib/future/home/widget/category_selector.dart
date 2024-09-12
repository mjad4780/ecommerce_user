import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../core/animation/open_container_wrapper.dart';
import '../../../core/networking/api_constants.dart';
import '../../../model/response_home/category.dart';
import '../../item_categories/product_by_category_screen.dart';

class CategorySelector extends StatelessWidget {
  final List<Category> categories;

  const CategorySelector({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Container(
              margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
              child: OpenContainerWrapper(
                  nextScresan: ProductByCategoryScreen(
                      selectedCategory: categories[index]),
                  child: Container(
                    width: 80,
                    height: 80,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFf16b26),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: CachedNetworkImage(
                            imageUrl:
                                '${ApiConstants.imageCat}/${category.categoriesImage}',
                            width: 90,
                            height: 90,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          category.categoriesName ?? '',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  )));
        },
      ),
    );
  }
}
