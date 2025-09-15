import 'package:animate_do/animate_do.dart';
import 'package:ecommerce_user/core/get_it/get_it.dart';
import 'package:ecommerce_user/core/theming/theme/colors.dart';
import 'package:ecommerce_user/core/theming/theme/styles.dart';
import 'package:ecommerce_user/future/auth/forgetpassword/logic/cubit/forget_password_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/app_regex.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/widgets/app_text_button.dart';
import '../../../core/widgets/app_text_form_field.dart';
import 'widget/check_email_bloc_listener.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ForgetPasswordCubit>(),
      child: Scaffold(
          body: SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: Builder(builder: (context) {
              return Form(
                key: context.read<ForgetPasswordCubit>().formstatecheck,
                child: FadeInRight(
                    delay: const Duration(microseconds: 1200),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Check Email',
                                style: TextStyles.checkEmail,
                              )),
                          verticalSpace(100),
                          Builder(builder: (context) {
                            return AppTextFormField(
                              hintText: 'Email',
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty ||
                                    !AppRegex.isEmailValid(value)) {
                                  return 'Please enter a valid email';
                                }
                              },
                              controller:
                                  context.read<ForgetPasswordCubit>().email,
                            );
                          }),
                          verticalSpace(80),
                          Builder(builder: (context) {
                            return AppTextButton(
                              buttonText: "Check Email",
                              backgroundColor: AppColor.secondColor,
                              textStyle: TextStyles.font16WhiteSemiBold,
                              onPressed: () {
                                context
                                    .read<ForgetPasswordCubit>()
                                    .checkEmail();
                              },
                            );
                          }),
                          const CheckEmailBlocListener()
                        ],
                      ),
                    )),
              );
            })),
      )),
    );
  }
}
