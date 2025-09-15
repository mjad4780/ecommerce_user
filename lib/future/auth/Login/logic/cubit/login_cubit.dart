import 'package:ecommerce_user/core/extensions/extention_navigator.dart';
import 'package:ecommerce_user/core/networking/api_result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/class/cache_helper.dart';
import '../../../../../core/get_it/get_it.dart';
import '../../data/data_login.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> login = GlobalKey<FormState>();

  final LoginRepo _loginRepo;
  void emitLoginStates(BuildContext context) async {
    if (login.currentState!.validate()) {
      emit(const LoginState.loading());
      final response =
          await _loginRepo.login(emailController.text, passwordController.text);
      response.when(success: (loginResponse) {
        if (loginResponse.data!.userImprove == 0) {
          context.push('/VerfyCodeScrean',
              arguments: {'email': loginResponse.data!.userEmail});
        } else {
          getIt<CacheHelper>()
              .saveData(key: 'id', value: loginResponse.data!.userId);
          getIt<CacheHelper>()
              .saveData(key: 'name', value: loginResponse.data!.userName);

          emit(const LoginState.success());
        }
      }, failure: (error) {
        emit(LoginState.error(error: error.messege ?? ''));
      });
    }
  }
}
