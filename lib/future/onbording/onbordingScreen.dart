import 'package:ecommerce_user/core/helpers/spacing.dart';
import 'package:ecommerce_user/future/onbording/widget/page_builder.dart';
import 'package:flutter/material.dart';

import '../../core/helpers/cache_helper.dart';
import '../../core/extensions/extention_navigator.dart';
import '../../core/get_it/get_it.dart';
import '../../model/onbording.dart';

import 'widget/BootmOnbording.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  int current = 0;

  late PageController pageController;
  onpagechanged(int index) {
    current = index;
    setState(() {});
  }

  @override
  void initState() {
    pageController = PageController(initialPage: current);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageBuilder(
                pagecontroller: pageController,
                onPageChanged: (int i) {
                  onpagechanged(i);
                },
              ),
            ),
            BootmOnbording(
              onPressed: () {
                if (current == onbordingData.length - 1) {
                  getIt<CacheHelper>().saveData(key: 'onbourding', value: true);
                  Navigation(context).pushpushReplacement('/Login');
                } else {
                  current++;
                  pageController.animateToPage(current,
                      duration: const Duration(milliseconds: 550),
                      curve: Curves.ease);
                }
              },
            ),
            verticalSpace(40),
          ],
        ),
      ),
    );
  }
}
