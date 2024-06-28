import 'package:freezed_annotation/freezed_annotation.dart';
part 'check_cart_state.freezed.dart';

@freezed
class CheckCartState with _$CheckCartState {
  const factory CheckCartState.initial() = _Initial;

  const factory CheckCartState.loading() = Loading;
  const factory CheckCartState.success() = Success;
  const factory CheckCartState.erorr({required String erorr}) = Erorr;
}
