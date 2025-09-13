import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../model/onbording.dart';

class PageBuilder extends StatelessWidget {
  const PageBuilder({
    super.key,
    required this.pagecontroller,
    required this.onPageChanged,
  });

  final PageController pagecontroller;
  final void Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: pagecontroller,
        onPageChanged: (value) {
          onPageChanged!(value);
        },
        itemCount: onbordingData.length,
        itemBuilder: (context, index) {
          return Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(spacing: 15, children: [
                const Spacer(),
                Center(
                  child: FadeInDown(
                    child: Lottie.asset(
                      onbordingData[index].path,
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      height: MediaQuery.sizeOf(context).width * 0.8,
                    ),
                  ),
                ),
                const Spacer(),
                FadeInDown(
                    delay: const Duration(milliseconds: 500),
                    child: Text(onbordingData[index].title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.sizeOf(context).width * 0.09,
                        ))),
                const SizedBox(
                  height: 10,
                ),
                FadeInRight(
                    delay: const Duration(milliseconds: 750),
                    child: Text(
                      onbordingData[index].des,
                      style: TextStyle(
                        fontSize: MediaQuery.sizeOf(context).width * 0.05,
                      ),
                    )),
              ]));
        });
  }
}
