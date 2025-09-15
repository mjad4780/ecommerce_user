import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:ecommerce_user/core/networking/api_result.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/helpers/cache_helper.dart';
import '../../../../../core/get_it/get_it.dart';
import '../../data/data_sigin_up.dart';

part 'sign_up_state.dart';
part 'sign_up_cubit.freezed.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.signUpDate) : super(const SignUpState.initial());
  TextEditingController username = TextEditingController();
  TextEditingController emailSignUp = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController passwordSignUp = TextEditingController();
  GlobalKey<FormState> formstateSignUp = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final SignUpDate signUpDate;

  signUp() async {
    if (formstateSignUp.currentState!.validate()) {
      emit(const SignUpState.laoding());
      final response = await signUpDate.signUp(
        emailSignUp.text,
        passwordSignUp.text,
        phone.text,
        username.text,
      );
      response.when(success: (responseStatus) {
        getIt<CacheHelper>().saveData(key: 'email', value: emailSignUp.text);
        getIt<CacheHelper>()
            .saveData(key: 'password', value: passwordSignUp.text);
        log(emailSignUp.text);
        emit(const SignUpState.success());
      }, failure: (error) {
        emit(SignUpState.error(error: error.messege ?? ''));
      });
    } else {
      autovalidateMode = AutovalidateMode.always;
    }
  }

  bool obscureText = true;

  //////////////
  dispose3() {
    emailSignUp.clear();
    passwordSignUp.clear();
    username.clear();
    phone.clear();
  }
}
