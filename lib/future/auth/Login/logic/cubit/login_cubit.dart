import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import '../../data/data_login.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginData) : super(LoginInitial());
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  final LoginDate loginData;
  login() async {
    emit(LoginLoading());
    final response = await loginData.loginData(email.text, password.text);
    response.fold((l) => emit(LoginFailer(error: l.errMessage)),
        (r) => emit(LoginSuccess()));
  }
}
