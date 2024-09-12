import 'package:flutter/material.dart';

import '../../../core/networking/api_constants.dart';
import '../../../model/response_home/datum.dart';

import '../../item_categories/widget/calculator_discount.dart';
import '../../item_categories/widget/custom_network_image.dart';

class ProductGridTile extends StatelessWidget {
  final Datum product;
  final int index;
  final bool isPriceOff;

  const ProductGridTile({
    super.key,
    required this.product,
    required this.index,
    required this.isPriceOff,
  });

  @override
  Widget build(BuildContext context) {
    double discountPercentage = calculateDiscountPercentage(
        product.itemPrice ?? 0, product.itemDiscount ?? 0);
    return GridTile(
      header: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Visibility(
              visible: discountPercentage != 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                width: 80,
                height: 30,
                alignment: Alignment.center,
                child: Text(
                  "OFF ${discountPercentage.toInt()} %",
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ),
            IconButton(
              icon: const Icon(
                Icons.favorite,
                //TODO: should complete make color dynamic
                color: Color(0xFFA6A3A0),
              ),
              onPressed: () {
                //TODO: should complete make call updateToFavoriteList
              },
            )
          ],
        ),
      ),
      footer: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 70,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                child: Text(
                  product.itemName ?? '',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Flexible(
                    child: Text(
                      product.itemDiscount != 0
                          ? "\$${product.itemDiscount}"
                          : "\$${product.itemPrice}",
                      style: Theme.of(context).textTheme.headlineMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: 3),
                  if (product.itemDiscount != null &&
                      product.itemDiscount != product.itemPrice)
                    Flexible(
                      child: Text(
                        "\$${product.itemPrice}",
                        style: const TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                ],
              )
            ],
          ),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color(0xFFE5E6E8),
          borderRadius: BorderRadius.circular(20),
        ),
        child: CustomNetworkImage(
          imageUrl: '${ApiConstants.imageItem}/${product.itemImage}',
          fit: BoxFit.scaleDown,
          scale: 3.0,
        ),
      ),
    );
  }
}
