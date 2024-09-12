import 'package:ecommerce_user/core/extensions/utility_extention.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../core/networking/api_constants.dart';
import '../core/theming/colors.dart';
import '../future/item_categories/widget/custom_network_image.dart';

class CarouselSlider extends StatefulWidget {
  const CarouselSlider({
    super.key,
    required this.items,
  });

  final List<String> items;

  @override
  State<CarouselSlider> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<CarouselSlider> {
  int newIndex = 0;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: height * 0.32,
          child: PageView.builder(
            itemCount: widget.items.length,
            onPageChanged: (int currentIndex) {
              newIndex = currentIndex;
              setState(() {});
            },
            itemBuilder: (_, index) {
              return FittedBox(
                fit: BoxFit.none,
                child: CustomNetworkImage(
                  imageUrl:
                      '${ApiConstants.imageItem}/${widget.items.safeElementAt(index)}',
                  fit: BoxFit.contain,
                  scale: 3.0,
                ),
              );
            },
          ),
        ),
        AnimatedSmoothIndicator(
          effect: const WormEffect(
            dotColor: Colors.white,
            activeDotColor: AppColor.darkOrange,
          ),
          count: widget.items.length,
          activeIndex: newIndex,
        )
      ],
    );
  }
}