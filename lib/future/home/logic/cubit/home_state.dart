import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../model/items_response/items_response.dart';
import '../../../../model/response_home/response_home.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loadingHome() = LoadingHome;
  const factory HomeState.successHome({required ResponseHome responseHome}) =
      SuccessHome;
  const factory HomeState.errorHome({required String erorr}) = ErrorHome;
  //:repassword
  const factory HomeState.loadingsearch() = Loadingsearch;
  const factory HomeState.successSearch(
      {required ItemsResponse itemsResponse}) = SuccessSearch;
  const factory HomeState.errorSearch({required String erorr}) = ErrorSearch;
  //:veryfycode
  const factory HomeState.loadingoffers() = Loadingoffers;
  const factory HomeState.successoffers(ItemsResponse itemsResponse) =
      Successoffers;
  const factory HomeState.erroroffers({required String erorr}) = Erroroffers;
}
