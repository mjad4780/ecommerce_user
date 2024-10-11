import 'package:flutter/material.dart';

import 'widget/custom_app_bar.dart';

import 'widget/view_home_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              Text(
                "Hi ",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Text(
                "Lets gets somethings?",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const HomeBlocBuilder()
            ],
          ),
        ),
      ),
    );
  }
}
