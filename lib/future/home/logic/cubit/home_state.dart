import 'package:ecommerce_user/future/home/data/models/response_notification/response_notification.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/response_home/item1view.dart';
import '../../data/models/response_home/response_home.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loadingHome() = LoadingHome;
  const factory HomeState.successHome({required ResponseHome responseHome}) =
      SuccessHome;
  const factory HomeState.errorHome({required String erorr}) = ErrorHome;
  //:search
  const factory HomeState.loadingsearch() = Loadingsearch;
  const factory HomeState.successSearch({required Item1view responseItems}) =
      SuccessSearch;
  const factory HomeState.errorSearch({required String erorr}) = ErrorSearch;

  //:StateBottomNavigationBar
  const factory HomeState.stateBottomNavigationBar({required int page}) =
      StateBottomNavigationBar;

  //:getNotification
  const factory HomeState.loadinggetNotification() = LoadinggetNotification;
  const factory HomeState.successgetNotification(
      {required ResponseNotification responseItems}) = SuccessgetNotification;
  const factory HomeState.errorgetNotification({required String erorr}) =
      ErrorgetNotification;
}
