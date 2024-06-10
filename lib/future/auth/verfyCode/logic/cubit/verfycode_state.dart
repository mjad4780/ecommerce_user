part of 'verfycode_cubit.dart';

@immutable
sealed class VerfycodeState {}

final class VerfycodeInitial extends VerfycodeState {}

final class VerfycodeLoading extends VerfycodeState {}

final class VerfycodeSuccess extends VerfycodeState {}

final class VerfycodeFailer extends VerfycodeState {
  final String failer;

  VerfycodeFailer({required this.failer});
}

final class SendAginSuccess extends VerfycodeState {}

final class SendAginFailer extends VerfycodeState {
  final String failer;

  SendAginFailer({required this.failer});
}
