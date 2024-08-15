import 'package:ecommerce_user/future/auth/forgetpassword/logic/cubit/forget_password_cubit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../Login/widget/password_validations.dart';

class RePassword extends StatefulWidget {
  const RePassword({super.key});

  @override
  State<RePassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<RePassword> {
  bool isObscureText = true;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController password;
  late TextEditingController rePassword;

  @override
  void initState() {
    super.initState();
    password = context.read<ForgetPasswordCubit>().password;
    rePassword = context.read<ForgetPasswordCubit>().rePassword;

    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    password.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(password.text);
        hasUppercase = AppRegex.hasUpperCase(password.text);
        hasSpecialCharacters = AppRegex.hasSpecialCharacter(password.text);
        hasNumber = AppRegex.hasNumber(password.text);
        hasMinLength = AppRegex.hasMinLength(password.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<ForgetPasswordCubit>().formstaterepassword,
      child: Column(
        children: [
          AppTextFormField(
            controller: password,
            hintText: 'New Password',
            isObscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
          ),
          verticalSpace(18),
          AppTextFormField(
            controller: rePassword,
            hintText: 'New Password',
            isObscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
          ),
          verticalSpace(24),
          PasswordValidations(
            hasLowerCase: hasLowercase,
            hasUpperCase: hasUppercase,
            hasSpecialCharacters: hasSpecialCharacters,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    rePassword.dispose();
    password.dispose();
    super.dispose();
  }
}
