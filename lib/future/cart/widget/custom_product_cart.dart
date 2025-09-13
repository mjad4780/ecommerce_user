import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/networking/api_constants.dart';
import '../../../widget/custom_network_image.dart';
import '../data/response_cart/datacart.dart';
import '../logic/cubit/cart_cubit.dart';

class CustomProductCart extends StatelessWidget {
  const CustomProductCart(
      {super.key, required this.cartItem, required this.index});
  final Datacart cartItem;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(7),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.grey[200]?.withOpacity(0.6),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    child: CustomNetworkImage(
                      width: MediaQuery.of(context).size.width / 4.5,
                      height: MediaQuery.of(context).size.height / 10.5,
                      imageUrl:
                          '${ApiConstants.imageItem}/${cartItem.itemImage}',
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
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 5),
                const SizedBox(height: 5),
                Text(
                  "\$${cartItem.itempriceDiscount}",
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
                      context.read<CartCubit>().emitdeleteCart(
                            cartItem.cartItemid!,
                          );
                    },
                    icon: const Icon(
                      Icons.remove,
                      color: Color(0xFFEC6813),
                    ),
                  ),
                  Text(
                    '${cartItem.countitems!}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  IconButton(
                    splashRadius: 10.0,
                    onPressed: () {
                      context.read<CartCubit>().selectColor =
                          cartItem.cartColor;
                      context.read<CartCubit>().selectSize = cartItem.cartSize;

                      context
                          .read<CartCubit>()
                          .emitAddCart(cartItem.cartItemid!, context);
                    },
                    icon: const Icon(Icons.add, color: Color(0xFFEC6813)),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
