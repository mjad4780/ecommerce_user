import 'package:ecommerce_user/core/extensions/utility_extention.dart';
import 'package:flutter/material.dart';

import '../../../model/cart_response/cart_response.dart';
import '../../../model/cart_response/datum.dart';

class CartListSection extends StatelessWidget {
  final CartResponse cartProducts;

  const CartListSection({
    super.key,
    required this.cartProducts,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: cartProducts.datacart!.data!.mapWithIndex((index, _) {
            Datum cartItem = cartProducts.datacart!.data![index];
            return Container(
              width: double.infinity,
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey[200]?.withOpacity(0.6),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.primaries[index],
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.network(
                            cartItem.itemImage ?? '',
                            width: 100,
                            height: 90,
                            loadingBuilder: (BuildContext context, Widget child,
                                ImageChunkEvent? loadingProgress) {
                              if (loadingProgress == null) return child;
                              return Center(
                                child: CircularProgressIndicator(
                                  value: loadingProgress.expectedTotalBytes !=
                                          null
                                      ? loadingProgress.cumulativeBytesLoaded /
                                          loadingProgress.expectedTotalBytes!
                                      : null, // Progress indicator.
                                ),
                              );
                            },
                            errorBuilder: (BuildContext context,
                                Object exception, StackTrace? stackTrace) {
                              return const Icon(Icons.error, color: Colors.red);
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cartItem.itemName ?? '',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '${cartItem.itemCount}',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "\$${cartItem.itemPrice}",
                        style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 23,
                        ),
                      ),
                    ],
                  ),
                  // Add and remove cart item
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          splashRadius: 10.0,
                          onPressed: () {
                            //TODO: should complete call updateCart decrement
                          },
                          icon: const Icon(
                            Icons.remove,
                            color: Color(0xFFEC6813),
                          ),
                        ),
                        Text(
                          '${cartItem.itemCount}',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        IconButton(
                          splashRadius: 10.0,
                          onPressed: () {
                            //TODO: should complete updateCart increment
                          },
                          icon: const Icon(Icons.add, color: Color(0xFFEC6813)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
