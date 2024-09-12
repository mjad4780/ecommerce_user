import 'package:flutter/material.dart';

import '../../../core/function/function_api/ssend_list_api.dart';
import '../../../model/response_home/datum.dart';
import '../../../widget/carousel_slider.dart';
import '../../../widget/product_rating_section.dart';
import '../../item_categories/widget/page_wrapper.dart';

class ProductDetailScreen extends StatelessWidget {
  final Datum product;

  const ProductDetailScreen(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back, color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: PageWrapper(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //? product image section
                Container(
                  height: height * 0.42,
                  width: width,
                  decoration: const BoxDecoration(
                    color: Color(0xFFE5E6E8),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(200),
                      bottomLeft: Radius.circular(200),
                    ),
                  ),
                  child: CarouselSlider(
                      items: replacListIsEnpty(product.images ?? [])),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //? product nam e
                      Text(
                        '${product.itemName}',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      const SizedBox(height: 10),
                      //? product rating section
                      const ProductRatingSection(),
                      const SizedBox(height: 10),
                      //? product rate , offer , stock section
                      Row(
                        children: [
                          Text(
                            product.itemDiscount != null
                                ? "\$${product.itemDiscount}"
                                : "\$${product.itemPrice}",
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                          const SizedBox(width: 3),
                          Visibility(
                            visible: product.itemDiscount != product.itemPrice,
                            child: Text(
                              "\$${product.itemPrice}",
                              style: const TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            product.itemCount != 0
                                ? "Available stock : ${product.itemCount}"
                                : "Not available",
                            style: const TextStyle(fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                      // product.proVariantId!.isNotEmpty
                      //     ? Text(
                      //         'Available ${product.proVariantTypeId?.type}',
                      //         style: const TextStyle(
                      //             color: Colors.red, fontSize: 16),
                      //       )
                      //     : const SizedBox(),
                      // Consumer<ProductDetailProvider>(
                      //   builder: (context, proDetailProvider, child) {
                      //     return HorizontalList(
                      //       items: product.proVariantId ?? [],
                      //       itemToString: (val) => val,
                      //       selected: proDetailProvider.selectedVariant,
                      //       onSelect: (val) {
                      //         proDetailProvider.selectedVariant = val;
                      //         proDetailProvider.updateUI();
                      //       },
                      //     );
                      //   },
                      // ),
                      //? product description
                      Text(
                        "About",
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      const SizedBox(height: 10),
                      Text("${product.itemDecs}"),
                      const SizedBox(height: 40),
                      //? add to cart button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: product.itemCount != 0
                              ? () {
                                  //TODO: should complete call addToCart
                                }
                              : null,
                          child: const Text("Add to cart",
                              style: TextStyle(color: Colors.white)),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
