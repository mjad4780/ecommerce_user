import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/response_items/response_items.dart';

part 'test_state.freezed.dart';

@freezed
class TestState with _$TestState {
  const factory TestState.initial() = _Initial;
  const factory TestState.loading() = Loading;
  const factory TestState.success(ResponseItems data) = Success;
  const factory TestState.error({required String error}) = Error;

  const factory TestState.loadingHome() = loadingHome;
  const factory TestState.successHome() = SuccessHome;
  const factory TestState.errorHome({required String error}) = ErrorHome;
}
