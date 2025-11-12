import 'package:flutter_map/flutter_map.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../model/adress_response/adress_response.dart';

part 'adress_state.freezed.dart';

@freezed
class AdressState with _$AdressState {
  const factory AdressState.initial() = _Initial;

  /// addAdress
  const factory AdressState.loadingAdd() = LoadingAdd;
  const factory AdressState.successAdd() = SuccessAdd;
  const factory AdressState.errorAdd({required String erorr}) = ErrorAdd;

  /// getAdress
  const factory AdressState.loadingGet() = LoadingGet;
  const factory AdressState.successGet(
      {required AdressResponse adressResponse}) = SuccessGet;
  const factory AdressState.errorget({required String erorr}) = ErrorGet;

  /// editAdress
  const factory AdressState.loadingedit() = LoadingEdit;
  const factory AdressState.successedit() = SuccessEdit;
  const factory AdressState.erroredit({required String erorr}) = ErrorEdit;

  /// deleteAdress
  const factory AdressState.loadingdelete() = Loadingdelete;
  const factory AdressState.successdelete() = Successdelete;
  const factory AdressState.errordelete({required String erorr}) = Errordelete;

  ///

  const factory AdressState.loadingMaps() = LoadingMaps;
  const factory AdressState.successMaps() = SuccessMaps;
  const factory AdressState.addMarker({required List<Marker> markers}) =
      AddMarker;

  const factory AdressState.pushEdit() = PushEdit;

  ///:update latlng
  const factory AdressState.updateLatlng() = UpdateLatlng;
}
