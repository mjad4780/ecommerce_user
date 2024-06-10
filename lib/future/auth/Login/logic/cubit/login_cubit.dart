import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import '../../data/data_login.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginData) : super(LoginInitial());
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  final LoginDate loginData;
  login(BuildContext context) async {
    if (formstate.currentState!.validate()) {
      emit(LoginLoading());
      final response =
          await loginData.loginData(email.text, password.text, context);
      response.fold((l) => emit(LoginFailer(error: l.errMessage)),
          (r) => emit(LoginSuccess()));
    } else {
      autovalidateMode = AutovalidateMode.always;
    }
  }

/////::obscureText
  bool obscureText = true;

  obscuretext() {
    obscureText = !obscureText;
    emit(ObscureText());
  }
}
