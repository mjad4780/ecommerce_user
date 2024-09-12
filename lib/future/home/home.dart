import 'package:ecommerce_user/future/home/logic/cubit/home_cubit.dart';
import 'package:flutter/material.dart';

import 'widget/custom_app_bar.dart';

import 'widget/view_home_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    // super.initState();
    // context.read<HomeCubit>().emitHome();
  }

  @override
  Widget build(BuildContext context) {
    return
        // Scaffold(
        // extendBodyBehindAppBar: true,
        // appBar: const CustomAppBar(),
        // body:
        SafeArea(
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
      // ),
    );
  }
}
