part of 'sign_up_cubit.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = _Initial;
  const factory SignUpState.laoding() = Laoding;
  const factory SignUpState.success() = Success;
  const factory SignUpState.error({required String error}) = Error;

  const factory SignUpState.obscureText() = ObscureText;
}
