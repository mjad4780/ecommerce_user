import 'package:flutter/material.dart';

import '../../../core/constans/icons.dart';

class NoNetWorkScreen extends StatelessWidget {
  const NoNetWorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.noNetwork),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    ));
  }
}
