import 'package:bloc/bloc.dart';
import 'package:ecommerce_user/future/auth/forgetpassword/data/ForgetPassword.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'forger_password_state.dart';

class ForgerPasswordCubit extends Cubit<ForgerPasswordState> {
  ForgerPasswordCubit(this.forgetPassword) : super(ForgerPasswordInitial());
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final ForgetPassword forgetPassword;

  checkEmail() async {
    if (formstate.currentState!.validate()) {
      emit(CheckemailLoading());
      final responsse = await forgetPassword.checkEmail();
      responsse.fold((l) => emit(CheckemailFailer(failer: l.errMessage)),
          (r) => emit(CheckemailSuccess()));
    } else {
      autovalidateMode = AutovalidateMode.always;
    }
  }
  // : repassword

  repassword(
    int verfycode,
  ) async {
    if (formstate.currentState!.validate()) {
      emit(RepasswordLoading());

      final responsse = await forgetPassword.repassword(password.text);
      responsse.fold((l) => emit(Repasswordfailer(failer: l.errMessage)),
          (r) => emit(Repasswordsuccess()));
    } else {
      autovalidateMode = AutovalidateMode.always;
    }
  }
  // :verfycode

  verfycode(int verfycode) async {
    emit(VeryFyCodeLoading());
    final responsse = await forgetPassword.verfyCodeForget(verfycode);
    responsse.fold((l) => emit(VeryFyCodefailer(failer: l.errMessage)),
        (r) => emit(VeryFyCodeSuccess()));
  }
}
