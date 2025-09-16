import 'package:ecommerce_user/core/get_it/get_it.dart';
import 'package:ecommerce_user/core/theme/colors.dart';
import 'package:ecommerce_user/future/auth/forgetpassword/logic/cubit/forget_password_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theme/styles.dart';
import 'widget/check_code_bloc_listener.dart';

class CheckCodeForgetPassword extends StatelessWidget {
  const CheckCodeForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (context) => getIt<ForgetPasswordCubit>(),
      child: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    verticalSpace(50),
                    Center(
                        child: Text(
                      'CHECK CODE ',
                      style: TextStyles.checkEmail,
                    )),
                    const Text(
                      'please Enter Your Email Address To Recive A verification code',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          height: 2, color: AppColor.grey, fontSize: 16),
                    ),
                    verticalSpace(50),
                    OtpTextField(
                      disabledBorderColor: AppColor.primaryColor,
                      enabled: true,
                      numberOfFields: 5,

                      borderColor: const Color(0xFF512DA8),
                      //set to true to show as box or false to show as dash
                      showFieldAsBox: true,
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      //runs when every textfield is filled
                      onSubmit: (String verificationCode) {
                        context
                            .read<ForgetPasswordCubit>()
                            .veryfycode(verificationCode);
                      }, // end onSubmit
                    ),
                    const CheckCodeBlocListener()
                  ],
                ),
              ))),
    ));
  }
}
