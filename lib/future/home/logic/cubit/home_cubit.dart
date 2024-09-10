import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../favorite/favorite.dart';
import '../../../offers/offers.dart';
import '../../../setting/setting.dart';
import '../../data/repo.dart';
import '../../home.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(const HomeState.initial());
  TextEditingController search = TextEditingController();

  final HomeRepo homeRepo;
//:bottomNavigationBar
  int currentPage = 0;
  List<Widget> buttompage = [
    const Home(),
    const Favorite(),
    const Offers(),
    const Setting(),
  ];

  emitCurrentPage(int index) {
    currentPage = index;

    emit(HomeState.stateBottomNavigationBar(page: index));
  }

//:home
  emitHome() async {
    emit(const HomeState.loadingoffers());
    final response = await homeRepo.homeData();
    response.when(success: (responsehome) {
      emit(HomeState.successHome(responseHome: responsehome));
    }, failure: (error) {
      emit(HomeState.errorHome(erorr: error.apiErrorModel.messege ?? ''));
    });
  }

  ///:search
  emitSearch() async {
    emit(const HomeState.loadingsearch());
    final response = await homeRepo.search(search.text);
    response.when(success: (loginResponse) {
      emit(HomeState.successSearch(responseItems: loginResponse));
    }, failure: (error) {
      emit(HomeState.errorSearch(erorr: error.apiErrorModel.messege ?? ''));
    });
  }

  ///:emitOffers
  emitOffers() async {
    emit(const HomeState.loadingoffers());
    final response = await homeRepo.offers();
    response.when(success: (loginResponse) {
      emit(HomeState.successoffers(responseItems: loginResponse));
    }, failure: (error) {
      emit(HomeState.erroroffers(erorr: error.apiErrorModel.messege ?? ''));
    });
  }
}
