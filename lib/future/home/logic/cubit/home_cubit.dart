import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:ecommerce_user/core/networking/api_result.dart';

import '../../../Book/ui/book.dart';
import '../../../favorite/favorite.dart';
import '../../../setting/setting.dart';
import '../../data/repo.dart';
import '../../home.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(const HomeState.initial());
  TextEditingController search = TextEditingController();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  // ResponseHome? responseHome;

  final HomeRepo homeRepo;
//:bottomNavigationBar
  int currentPage = 0;
  List<Widget> buttompage = [
    const Home(),
    const Favorite(),
    const Book(),
    const Setting(),
  ];

  emitCurrentPage(int index) {
    currentPage = index;

    emit(HomeState.stateBottomNavigationBar(page: index));
  }

//:home
  emitHome() async {
    emit(const HomeState.loadingHome());
    await Future.delayed(const Duration(seconds: 3));
    final response = await homeRepo.homeData();
    response.when(success: (responsehome) {
      emit(HomeState.successHome(responseHome: responsehome));
    }, failure: (error) {
      emit(HomeState.errorHome(erorr: error.messege ?? ''));
    });
  }

//:getNotification
  getNotification() async {
    emit(const HomeState.loadinggetNotification());
    final response = await homeRepo.getNotification();
    response.when(success: (responsehome) {
      emit(HomeState.successgetNotification(responseItems: responsehome));
    }, failure: (error) {
      emit(HomeState.errorgetNotification(erorr: error.messege ?? ''));
    });
  }

  ///:search
  emitSearch() async {
    emit(const HomeState.loadingsearch());
    final response = await homeRepo.search(search.text);
    response.when(success: (loginResponse) {
      emit(HomeState.successSearch(responseItems: loginResponse));
    }, failure: (error) {
      emit(HomeState.errorSearch(erorr: error.messege ?? ''));
    });
  }

  Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (serviceEnabled == false) {}
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }
}
