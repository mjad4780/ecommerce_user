import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/Router/route.dart';
import '../core/theming/colors.dart';

class Ecommerce extends StatelessWidget {
  const Ecommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        title: 'Flutter e-ecommerce ',
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: AppColor.lightGrey,
          // textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
          //     .apply(bodyColor: Colors.white),
          canvasColor: AppColor.secondaryColor,
        ),
      ),
    );
  }
}
