import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repo.dart';
import 'favorite_state.dart';
import 'package:ecommerce_user/core/networking/api_result.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit(this._favoriteRepo) : super(const FavoriteState.initial());
  final FavoriteRepo _favoriteRepo;
  List itemid = [];

//:AddFavorite
  emitAddFavorite(int id) async {
    emit(const FavoriteState.loadingAdd());
    final response = await _favoriteRepo.addFavorite(id);
    response.when(success: (responsehome) {
      emit(const FavoriteState.successAdd());
    }, failure: (error) {
      emit(FavoriteState.erorrAdd(erorr: error.messege ?? ''));
    });
  }

  //:getFavorite
  emitgetFavorite() async {
    emit(const FavoriteState.loadingGet());
    final response = await _favoriteRepo.getFavorite();
    response.when(success: (responsehome) {
      emit(FavoriteState.successGet(responsehome.item1view!));
    }, failure: (error) {
      emit(FavoriteState.erorrGet(erorr: error.messege ?? ''));
    });
  } //:deleteFavorite

  emitdeleteFavorite(int id) async {
    emit(const FavoriteState.loadingDelete());
    final response = await _favoriteRepo.deleteFavorite(id);

    response.when(success: (responsehome) async {
      emit(const FavoriteState.successDelete());
    }, failure: (error) {
      emit(FavoriteState.erorrDelete(erorr: error.messege ?? ''));
    });
  }
}
