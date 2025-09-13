import 'package:freezed_annotation/freezed_annotation.dart';

part 'forget_password_state.freezed.dart';

@freezed
class ForgetPasswordState with _$ForgetPasswordState {
  const factory ForgetPasswordState.initial() = _Initial;
  //:checkEmail
  const factory ForgetPasswordState.loadingCheck() = LoadingCheck;
  const factory ForgetPasswordState.successCheck() = SuccessCheck;
  const factory ForgetPasswordState.errorCheck({required String erorr}) =
      ErrorCheck;
  //:repassword
  const factory ForgetPasswordState.loadingrepassword() = Loadingrepassword;
  const factory ForgetPasswordState.successrepassword() = Successrepassword;
  const factory ForgetPasswordState.errorrepassword({required String erorr}) =
      Errorrepassword;
  //:veryfycode
  const factory ForgetPasswordState.loadingveryfycode() = Loadingveryfycode;
  const factory ForgetPasswordState.successveryfycode() = Successveryfycode;
  const factory ForgetPasswordState.errorveryfycode({required String erorr}) =
      Errorveryfycode;
}
