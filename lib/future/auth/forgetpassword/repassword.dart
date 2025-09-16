import 'package:animate_do/animate_do.dart';
import 'package:ecommerce_user/core/theme/colors.dart';
import 'package:ecommerce_user/core/theme/styles.dart';
import 'package:ecommerce_user/future/auth/forgetpassword/logic/cubit/forget_password_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/get_it/get_it.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/widgets/app_text_button.dart';
import 'widget/emailAndPassword.dart';
import 'widget/repassword_bloc_listener copy.dart';

class RepasswordScrean extends StatelessWidget {
  const RepasswordScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ForgetPasswordCubit>(),
      child: Scaffold(
          body: SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: Form(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                          'ResetPassword',
                          style: TextStyles.checkEmail,
                        )),
                    verticalSpace(100),
                    FadeInRight(
                        delay: const Duration(milliseconds: 950),
                        child: const RePassword()),
                    verticalSpace(80),
                    FadeInRight(
                      delay: const Duration(milliseconds: 1000),
                      child: Builder(builder: (context) {
                        return AppTextButton(
                          buttonText: "ResetPassword",
                          backgroundColor: AppColor.secondColor,
                          textStyle: TextStyles.font16WhiteSemiBold,
                          onPressed: () {
                            // print('object');
                            context
                                .read<ForgetPasswordCubit>()
                                .repasswords(context);
                            // validateThenDoSignup(context);
                          },
                        );
                      }),
                    ),
                    const RepasswordBlocListener()
                  ],
                ),
              ),
            )),
      )),
    );
  }
}
