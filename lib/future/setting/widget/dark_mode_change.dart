import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/app_cubit/app_cubit.dart';

class DarkModeChange extends StatelessWidget {
  const DarkModeChange({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // SvgPicture.asset(
        //   AppImages.darkMode,
        //   color: context.color.textColor,
        // ),
        // SizedBox(width: 10.w),
        // TextApp(
        //   text: context.translate(LangKeys.darkMode),
        //   theme: context.textStyle.copyWith(
        //     fontSize: 18.sp,
        //     fontWeight: FontWeightHelper.regular,
        //   ),
        // ),
        const Spacer(),

        // radio buttons
        Transform.scale(
          scale: 0.75,
          child: Switch.adaptive(
            value: context.read<AppCubit>().isDark,
            inactiveTrackColor: const Color(0xff262626),
            activeColor: Colors.green,
            onChanged: (value) {
              context.read<AppCubit>().changeAppThemeMode(sharedMode: value);
            },
          ),
        ),
      ],
    );
  }
}
