part of 'forger_password_cubit.dart';

@immutable
sealed class ForgerPasswordState {}

final class ForgerPasswordInitial extends ForgerPasswordState {}

final class CheckemailLoading extends ForgerPasswordState {}

final class CheckemailSuccess extends ForgerPasswordState {}

final class CheckemailFailer extends ForgerPasswordState {
  final String failer;

  CheckemailFailer({required this.failer});
}

final class RepasswordLoading extends ForgerPasswordState {}

final class Repasswordsuccess extends ForgerPasswordState {}

final class Repasswordfailer extends ForgerPasswordState {
  final String failer;

  Repasswordfailer({required this.failer});
}

final class VeryFyCodeLoading extends ForgerPasswordState {}

final class VeryFyCodeSuccess extends ForgerPasswordState {}

final class VeryFyCodefailer extends ForgerPasswordState {
  final String failer;

  VeryFyCodefailer({required this.failer});
}
