import 'package:ecommerce_user/core/get_it/get_it.dart';
import 'package:ecommerce_user/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/class/cache_helper.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/theming/styles.dart';
import 'logic/cubit/verfy_code_cubit.dart';
import 'widget/check_code_bloc_listener.dart';
import 'widget/send_code_bloc_listener.dart';

class VerfyCodeScrean extends StatelessWidget {
  const VerfyCodeScrean({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<dynamic, dynamic> hello =
        GoRouterState.of(context).extra! as Map<dynamic, dynamic>;
    return BlocProvider(
        create: (context) => getIt<VerfyCodeCubit>(),
        child: Scaffold(
          body: SafeArea(
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
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.w, vertical: 30.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text('Resend the verfication code'),
                            horizontalSpace(2),
                            GestureDetector(
                                onTap: () {
                                  context.read<VerfyCodeCubit>().sendverfycode(
                                      hello['email'] ??
                                          getIt<CacheHelper>()
                                              .getData(key: 'email'));
                                  // cubit.SendVerfiCode();
                                },
                                child: const Text(
                                  'press here',
                                  style:
                                      TextStyle(color: AppColor.primaryColor),
                                ))
                          ],
                        ),
                      ),
                      Builder(builder: (context) {
                        return OtpTextField(
                          disabledBorderColor: AppColor.primaryColor,
                          enabled: false,
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
                            context.read<VerfyCodeCubit>().verfycode(
                                verificationCode,
                                hello['email'] ??
                                    getIt<CacheHelper>().getData(key: 'email'));
                          }, // end onSubmit
                        );
                      }),
                      const CheckCodeBlocListener(),
                      const SendCodeBlocListener()
                    ],
                  ),
                )),
          ),
        ));
  }
}
