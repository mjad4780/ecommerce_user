import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_user/core/theming/colors.dart';
import 'package:flutter/material.dart';

import '../../../core/networking/api_constants.dart';
import '../../../model/response_home/datum.dart';

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
    return GridTile(
      header: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Visibility(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                width: 80,
                height: 30,
                alignment: Alignment.center,
                child: Text(
                  "OFF ${product.itemDiscount} %",
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.favorite,
                //TODO: should complete make color dynamic
                color: product.favorite == 1
                    ? AppColor.red
                    : const Color(0xFFA6A3A0),
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
              Row(
                children: [
                  Text(
                    product.itemDiscount != 0
                        ? "\$${product.itempriceDiscount}"
                        : "\$${product.itemPrice}",
                    style: const TextStyle(fontSize: 16),
                    // style: Theme.of(context).textTheme.headlineMedium,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  if (product.itemDiscount != 0)
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
        height: MediaQuery.of(context).size.height * 0.5,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color(0xFFE5E6E8),
          borderRadius: BorderRadius.circular(20),
        ),
        child: CachedNetworkImage(
          imageUrl: '${ApiConstants.imageItem}/${product.itemImage}',
        ),
      ),
    );
  }
}
