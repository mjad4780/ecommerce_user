import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../theming/colors.dart';

class CustomLoadingListOfLaunchPads extends StatelessWidget {
  const CustomLoadingListOfLaunchPads({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 6,
      itemBuilder: (context, index) {
        return Shimmer(
          gradient: const LinearGradient(
            colors: [
              AppColor.blueGray,
              AppColor.buttonBlue,
              Color.fromARGB(255, 23, 42, 63),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(vertical: 6),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 5.8,
                  child: AspectRatio(
                    aspectRatio: 1 / 1.2,
                    child: ClipRRect(
                      borderRadius: BorderRadiusDirectional.circular(16),
                      child: Container(
                        color: Colors.grey[200],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: AppColor.blueGray,
                          borderRadius: BorderRadiusDirectional.all(
                            Radius.circular(8),
                          ),
                        ),
                        width: double.infinity,
                        height: 18,
                      ),
                      const SizedBox(height: 10),
                      Container(
                        decoration: const BoxDecoration(
                          color: AppColor.blueGray,
                          borderRadius: BorderRadiusDirectional.all(
                            Radius.circular(8),
                          ),
                        ),
                        width: MediaQuery.sizeOf(context).width * 0.3,
                        height: 18,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
