import 'package:bloc/bloc.dart';
import 'package:ecommerce_user/future/auth/sign_up/data/data_sigin_up.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../../../../core/extensions/extention_navigator.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.signUpDate) : super(SignUpInitial());
  TextEditingController username = TextEditingController();
  TextEditingController emailSignUp = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController passwordSignUp = TextEditingController();
  GlobalKey<FormState> formstateSignUp = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final SignUpDate signUpDate;

  signUp(BuildContext context) async {
    if (formstateSignUp.currentState!.validate()) {
      emit(SignUpLoading());
      final response = await signUpDate.signUpData(
        emailSignUp.text,
        passwordSignUp.text,
        username.text,
        phone.text,
      );
      response.fold((l) => emit(SignUpFailer(failer: l.errMessage)), (r) async {
        await Navigation(context).push(
          '/',
          arguments: emailSignUp.text,
        );

        emit(SignUpSuccess());
      });
    } else {
      autovalidateMode = AutovalidateMode.always;
    }
  }
}
