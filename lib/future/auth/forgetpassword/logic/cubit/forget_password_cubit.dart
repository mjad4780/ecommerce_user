import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/ForgetPassword.dart';
import 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit(this.forgetPassword)
      : super(const ForgetPasswordState.initial());

  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();

  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final ForgetPassword forgetPassword;

  checkEmail() async {
    if (formstate.currentState!.validate()) {
      emit(ForgetPasswordState.loadingCheck());
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
    if (formstate.currentState!.validate()) {
      emit(ForgetPasswordState.loadingrepassword());
      final response =
          await forgetPassword.repassword(email.text, password.text);
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
  veryfycode(int veryfycode) async {
    if (formstate.currentState!.validate()) {
      emit(ForgetPasswordState.loadingveryfycode());
      final response =
          await forgetPassword.verfyCodeForget(email.text, veryfycode);
      response.when(success: (loginResponse) {
        emit(const ForgetPasswordState.successveryfycode());
      }, failure: (error) {
        emit(ForgetPasswordState.errorveryfycode(
            erorr: error.apiErrorModel.messege ?? ''));
      });
    } else {
      autovalidateMode = AutovalidateMode.always;
    }
  }
}
