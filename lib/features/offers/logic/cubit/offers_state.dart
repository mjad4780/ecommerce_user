import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../home/data/models/response_home/response_home.dart';

part 'offers_state.freezed.dart';

@freezed
class OffersState with _$OffersState {
  const factory OffersState.initial() = _Initial;

  //:Offers
  const factory OffersState.loadingoffers() = Loadingoffers;
  const factory OffersState.successoffers({required Item1view responseItems}) =
      Successoffers;
  const factory OffersState.erroroffers({required String erorr}) = Erroroffers;
}
