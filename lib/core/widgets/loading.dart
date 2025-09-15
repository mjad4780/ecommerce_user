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
