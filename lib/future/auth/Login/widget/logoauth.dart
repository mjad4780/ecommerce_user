import 'package:ecommerce_user/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constans/icons.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
          backgroundColor: AppColor.gray,
          radius: 70.sp,
          child: ClipOval(
            child: Image.asset(
              Assets.imagesAvatar,
              fit: BoxFit.fill,
            ),
          )),
    );
  }
}
