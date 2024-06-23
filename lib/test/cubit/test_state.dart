import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/items_response/items_response.dart';

part 'test_state.freezed.dart';

@freezed
class TestState with _$TestState {
  const factory TestState.initial() = _Initial;
  const factory TestState.loading() = Loading;
  const factory TestState.success(ItemsResponse data) = Success;
  const factory TestState.error({required String error}) = Error;

  const factory TestState.loadingHome() = loadingHome;
  const factory TestState.successHome() = SuccessHome;
  const factory TestState.errorHome({required String error}) = ErrorHome;
}
