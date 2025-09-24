import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_user/core/helpers/spacing.dart';
import 'package:flutter/material.dart';

import '../../../core/animation/open_container_wrapper.dart';
import '../data/models/response_home/response_home.dart';
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
      height: MediaQuery.of(context).size.height * 0.11,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];

          return AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeOut,
            margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
            child: OpenContainerWrapper(
              nextScresan: ProductByCategoryScreen(
                category: category,
                listCategories: categories,
              ),
              child: Container(
                width: width(context) / 6,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.2),
                      blurRadius: 6,
                      offset: const Offset(2, 4),
                    ),
                  ],
                ),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (category.categoriesImage != null)
                      Expanded(
                        child: Hero(
                          tag: "cat_${category.categoriesId}",
                          child: CachedNetworkImage(
                            imageUrl: category.categoriesImage!,
                            width: 60,
                            height: 60,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    const SizedBox(height: 4),
                    Text(
                      category.categoriesName ?? '',
                      style: const TextStyle(
                        color: Colors.black87,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
