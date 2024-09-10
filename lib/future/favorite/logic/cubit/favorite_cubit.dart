import 'package:bloc/bloc.dart';

import '../../data/repo.dart';
import 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit(this._favoriteRepo) : super(const FavoriteState.initial());
  final FavoriteRepo _favoriteRepo;
//:AddFavorite
  emitAddFavorite(int id) async {
    emit(const FavoriteState.loadingAdd());
    final response = await _favoriteRepo.addFavorite(id);
    response.when(success: (responsehome) {
      emit(const FavoriteState.successAdd());
    }, failure: (error) {
      emit(FavoriteState.erorrAdd(erorr: error.apiErrorModel.messege ?? ''));
    });
  }

  //:getFavorite
  emitgetFavorite() async {
    emit(const FavoriteState.loadingGet());
    final response = await _favoriteRepo.getFavorite();
    response.when(success: (responsehome) {
      emit(FavoriteState.successGet(responsehome));
    }, failure: (error) {
      emit(FavoriteState.erorrGet(erorr: error.apiErrorModel.messege ?? ''));
    });
  } //:deleteFavorite

  emitdeleteFavorite(int id) async {
    emit(const FavoriteState.loadingDelete());
    final response = await _favoriteRepo.deleteFavorite(id);
    response.when(success: (responsehome) {
      emit(const FavoriteState.successDelete());
    }, failure: (error) {
      emit(FavoriteState.erorrDelete(erorr: error.apiErrorModel.messege ?? ''));
    });
  }
}
