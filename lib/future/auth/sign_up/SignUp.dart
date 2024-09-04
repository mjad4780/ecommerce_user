import 'package:animate_do/animate_do.dart';
import 'package:ecommerce_user/core/get_it/get_it.dart';
import 'package:ecommerce_user/future/auth/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_text_button.dart';
import 'widget/emailAndPassword.dart';
import 'widget/sign_up_bloc_listener.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignUpCubit>(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeInRight(
                    delay: const Duration(microseconds: 500),
                    child: Text(
                      'Create Account',
                      style: TextStyles.font24BlueBold,
                    ),
                  ),
                  verticalSpace(8),
                  FadeInRight(
                      delay: const Duration(microseconds: 750),
                      child: Text(
                        'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                        style: TextStyles.font14GrayRegular,
                      )),
                  verticalSpace(36),
                  Column(
                    children: [
                      FadeInRight(
                          delay: const Duration(microseconds: 1000),
                          child: const EmailAndPasswordSignUp()),
                      verticalSpace(40),
                      FadeInRight(
                          delay: const Duration(microseconds: 1200),
                          child: Builder(builder: (context) {
                            return AppTextButton(
                              buttonText: "Create Account",
                              textStyle: TextStyles.font16WhiteSemiBold,
                              onPressed: () {
                                context.read<SignUpCubit>().signUp();
                                // validateThenDoSignup(context);
                              },
                            );
                          })),
                      verticalSpace(16),
                      // const TermsAndConditionsText(),
                      verticalSpace(30),
                      // const AlreadyHaveAccountText(),
                      const SignUpBlocListener(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
