import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_user/core/theming/theme/colors.dart';
import 'package:ecommerce_user/future/favorite/logic/cubit/favorite_cubit.dart';
import 'package:ecommerce_user/future/favorite/logic/cubit/favorite_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/networking/api_constants.dart';
import '../data/models/response_home/response_home.dart';

class ProductGridTile extends StatelessWidget {
  final Item product;
  final int index;

  const ProductGridTile({
    super.key,
    required this.product,
    required this.index,
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
            IconFavorite(
              product: product,
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
                  // const RewmoveFavoriteBlocListener()
                ],
              ),
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
        child: product.itemImage != null
            ? CachedNetworkImage(
                imageUrl: '${ApiConstants.imageItem}/${product.itemImage}',
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}

class IconFavorite extends StatelessWidget {
  const IconFavorite({super.key, required this.product});
  final Item product;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FavoriteCubit, FavoriteState>(
      listenWhen: (previous, current) =>
          current is SuccessDelete ||
          current is SuccessAdd ||
          current is ErorrAdd ||
          current is ErorrDelete,
      listener: (context, state) {
        if (state is ErorrDelete || state is ErorrAdd) {
          // لو حصل فشل رجّع التغيير
          product.favorite = product.favorite == 1 ? 0 : 1;

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("حدث خطأ، حاول مرة أخرى")),
          );
        }
      },
      buildWhen: (previous, current) =>
          current is SuccessDelete || current is SuccessAdd,
      builder: (context, state) {
        return IconButton(
          icon: Icon(
            Icons.favorite,
            color:
                product.favorite == 1 ? AppColor.red : const Color(0xFFA6A3A0),
          ),
          onPressed: () {
            _toggleFavorite(context);
          },
        );
      },
    );
  }

  void _toggleFavorite(BuildContext context) {
    if (product.favorite == 1) {
      // Optimistic update
      product.favorite = 0;
      context.read<FavoriteCubit>().emitdeleteFavorite(product.itemId!);
    } else {
      // Optimistic update
      product.favorite = 1;
      context.read<FavoriteCubit>().emitAddFavorite(product.itemId!);
    }
  }
}
