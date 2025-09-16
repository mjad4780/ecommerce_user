import 'package:ecommerce_user/core/extensions/extention_navigator.dart';
import 'package:ecommerce_user/core/get_it/get_it.dart';
import 'package:ecommerce_user/core/theme/colors.dart';
import 'package:ecommerce_user/future/auth/Login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theme/styles.dart';
import '../../../core/widgets/app_text_button.dart';

import 'widget/emailAndPassword.dart';
import 'widget/login_bloc_listener.dart';
import 'widget/logoauth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginCubit>(),
      child: Scaffold(
          body: SafeArea(
              child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SingleChildScrollView(
            child: Column(children: [
          const LogoAuth(),
          verticalSpace(36),
          const EmailAndPassword(),
          verticalSpace(15),
          Align(
              alignment: AlignmentDirectional.centerEnd,
              child: GestureDetector(
                onTap: () => context.push('/CheckEmail'),
                child: Text(
                  'Forgot Password?',
                  style: TextStyles.font13BlueRegular,
                ),
              )),
          verticalSpace(10),
          Builder(builder: (context) {
            return AppTextButton(
                backgroundColor: AppColor.primaryColor,
                buttonText: "Login",
                textStyle: TextStyles.font16WhiteSemiBold,
                onPressed: () {
                  context.read<LoginCubit>().emitLoginStates(context);
                });
          }),
          verticalSpace(30),
          Row(
            children: [
              const Text('Dont Have An Account ?'),
              GestureDetector(
                onTap: () => context.push('/SignUp'),
                child: Text(
                  'SignUp',
                  style: TextStyles.signUp,
                ),
              ),
            ],
          ),
          const LoginBlocListener()
        ])),
      ))),
    );
  }
}
