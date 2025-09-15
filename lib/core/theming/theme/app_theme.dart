import 'package:ecommerce_user/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors_dark.dart';
import '../colors_light.dart';
import 'color_extension.dart';

ThemeData themeDark() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsDark.mainColor,
    extensions: const <ThemeExtension<dynamic>>[
      MyColors.dark,
    ],
    useMaterial3: true,
    textTheme: const TextTheme(
      displaySmall: TextStyle(
        fontSize: 14,
        color: ColorsDark.white,
      ),
    ),
  );
}

ThemeData themeLight() {
  return ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsLight.mainColor,
      iconTheme: const IconThemeData(color: ColorsLight.black),
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: AppColor.darkOrange,
        fontSize: 22.sp,
        fontWeight: FontWeight.bold,
      ),
    ),
    scaffoldBackgroundColor: ColorsLight.mainColor,
    extensions: const <ThemeExtension<dynamic>>[
      MyColors.light,
    ],
    useMaterial3: true,
    textTheme: const TextTheme(
      displaySmall: TextStyle(
        fontSize: 14,
        color: ColorsLight.black,
      ),
    ),
  );
}
