import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key, required this.child, this.isloading = false});
  final Widget child;
  final bool isloading;

  @override
  Widget build(BuildContext context) {
    return isloading ? Skeletonizer(enabled: true, child: child) : child;
  }
}

class LoadingWidget2 extends StatelessWidget {
  const LoadingWidget2({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Skeletonizer(child: Skeleton.shade(shade: true, child: child));
  }
}
