import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theming/styles.dart';
import '../../data/for_get_password.dart';
import 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit(this.forgetPassword)
      : super(const ForgetPasswordState.initial());

  TextEditingController password = TextEditingController();
  TextEditingController rePassword = TextEditingController();

  TextEditingController email = TextEditingController();

  GlobalKey<FormState> formstatecheck = GlobalKey<FormState>();

  GlobalKey<FormState> formstaterepassword = GlobalKey<FormState>();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final ForgetPassword forgetPassword;

  checkEmail() async {
    if (formstatecheck.currentState!.validate()) {
      emit(const ForgetPasswordState.loadingCheck());
      final response = await forgetPassword.checkEmail(email.text);
      response.when(success: (loginResponse) {
        emit(const ForgetPasswordState.successCheck());
      }, failure: (error) {
        emit(ForgetPasswordState.errorCheck(
            erorr: error.apiErrorModel.messege ?? ''));
      });
    } else {
      autovalidateMode = AutovalidateMode.always;
    }
  }

  ///:repassword
  repassword() async {
    if (formstaterepassword.currentState!.validate()) {
      emit(const ForgetPasswordState.loadingrepassword());

      final response =
          await forgetPassword.repassword(email.text, password.text);
      print(
          ',mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm${email.text}');
      response.when(success: (loginResponse) {
        emit(const ForgetPasswordState.successrepassword());
      }, failure: (error) {
        emit(ForgetPasswordState.errorrepassword(
            erorr: error.apiErrorModel.messege ?? ''));
      });
    } else {
      autovalidateMode = AutovalidateMode.always;
    }
  }

  ///:veryfycode
  veryfycode(String veryfycode) async {
    emit(const ForgetPasswordState.loadingveryfycode());
    final response =
        await forgetPassword.verfyCodeForget(email.text, veryfycode);
    response.when(success: (loginResponse) {
      emit(const ForgetPasswordState.successveryfycode());
    }, failure: (error) {
      emit(ForgetPasswordState.errorveryfycode(
          erorr: error.apiErrorModel.messege ?? ''));
    });
  }

  repasswords(BuildContext context) {
    if (password.text != rePassword.text) {
      return showDialog(
          context: context,
          builder: (context) => AlertDialog(
              icon: const Icon(
                Icons.error,
                color: Colors.red,
                size: 32,
              ),
              content: Text(
                'الكلمتان غير متطابقتان',
                style: TextStyles.font15DarkBlueMedium,
              )));
    } else {
      repassword();
    }
  }
}
