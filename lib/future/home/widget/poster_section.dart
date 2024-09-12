import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../core/networking/api_constants.dart';
import '../../../model/response_home/setting.dart';
import '../../../utility/app_data.dart';

class PosterSection extends StatelessWidget {
  const PosterSection({super.key, required this.posters});
  final List<Setting> posters;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    return SizedBox(
        height: size * 0.2,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 10),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: posters.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                  color: AppData.randomPosterBgColors[index],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${posters[index].settingTitle}',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(color: Colors.white),
                          ),
                          const SizedBox(height: 8),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              elevation: 0,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                            child: const Text(
                              "Get Now",
                              style: TextStyle(color: Colors.black),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    CachedNetworkImage(
                        width: MediaQuery.of(context).size.width / 3,
                        imageUrl:
                            '${ApiConstants.imagePoster}/${posters[index].settingImage}')
                  ],
                ),
              ),
            );
          },
        ));
  }
}
