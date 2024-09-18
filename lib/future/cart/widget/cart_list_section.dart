import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_user/future/cart/logic/cubit/cart_cubit.dart';
import 'package:ecommerce_user/future/cart/logic/cubit/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/networking/api_constants.dart';
import '../data/response_cart/datacart.dart';
import '../data/response_cart/response_cart.dart';

class CartListSection extends StatelessWidget {
  final ResponseCart cartProducts;

  const CartListSection({
    super.key,
    required this.cartProducts,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartCubit, CartState>(
        listener: (context, state) {},
        builder: (context, state) {
          return name(cartProducts: cartProducts);
        });
  }
}

class name extends StatelessWidget {
  const name({super.key, required this.cartProducts});
  final ResponseCart cartProducts;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: ListView.builder(
          itemCount: cartProducts.datacart!.length,
          itemBuilder: (context, index) {
            Datacart cartItem = cartProducts.datacart![index];

            return Container(
                width: double.infinity,
                margin: const EdgeInsets.all(15),
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
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: CachedNetworkImage(
                              imageUrl:
                                  '${ApiConstants.imageItem}/${cartItem.itemImage}',
                              width: 100,
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
                              context.read<CartCubit>().delete(
                                    cartItem.cartItemid!,
                                  );
                              //TODO: should complete call updateCart decrement
                            },
                            icon: const Icon(
                              Icons.remove,
                              color: Color(0xFFEC6813),
                            ),
                          ),
                          Text(
                            '${context.read<CartCubit>().countitems = cartItem.countitems!}',
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
                              context.read<CartCubit>().selectSize =
                                  cartItem.cartSize;

                              context
                                  .read<CartCubit>()
                                  .add(cartItem.cartItemid!, context);
                              //TODO: should complete updateCart increment
                            },
                            icon:
                                const Icon(Icons.add, color: Color(0xFFEC6813)),
                          ),
                        ],
                      ),
                    )
                  ],
                ));
          }),
    );
  }
}
