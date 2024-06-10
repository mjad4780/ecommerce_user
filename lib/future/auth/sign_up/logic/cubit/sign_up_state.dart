part of 'sign_up_cubit.dart';

@immutable
sealed class SignUpState {}

final class SignUpInitial extends SignUpState {}

final class SignUpLoading extends SignUpState {}

final class SignUpSuccess extends SignUpState {}

final class SignUpFailer extends SignUpState {
  final String failer;

  SignUpFailer({required this.failer});
}

final class SignImage extends SignUpState {}
