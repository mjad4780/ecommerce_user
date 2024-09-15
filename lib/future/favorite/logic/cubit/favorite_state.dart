import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../model/response_home/item1view.dart';

part 'favorite_state.freezed.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState.initial() = _Initial;

  ///:AddFavorite
  const factory FavoriteState.loadingAdd() = LoadingAdd;
  const factory FavoriteState.successAdd() = SuccessAdd;
  const factory FavoriteState.erorrAdd({required String erorr}) = ErorrAdd;

  ///:GetFavorite
  const factory FavoriteState.loadingGet() = LoadingGet;
  const factory FavoriteState.successGet(Item1view favoriteResponse) =
      SuccessGet;
  const factory FavoriteState.erorrGet({required String erorr}) = ErorrGet;

  ///:deleteFavorite
  const factory FavoriteState.loadingDelete() = LoadingDelete;
  const factory FavoriteState.successDelete() = SuccessDelete;
  const factory FavoriteState.erorrDelete({required String erorr}) =
      ErorrDelete;
}
