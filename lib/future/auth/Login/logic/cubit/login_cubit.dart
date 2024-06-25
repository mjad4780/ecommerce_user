import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/data_login.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  final LoginRepo _loginRepo;
  void emitLoginStates() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(email.text, password.text);
    response.when(success: (loginResponse) {
      emit(const LoginState.success());
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.messege ?? ''));
    });
  }
}
