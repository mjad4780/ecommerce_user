import 'package:ecommerce_user/future/home/data/models/response_home/response_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:ecommerce_user/core/networking/api_result.dart';

import '../../data/repo.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(const HomeState.initial());
  TextEditingController search = TextEditingController();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  final HomeRepo homeRepo;

//:home
  emitHome() async {
    if (!isClosed) emit(const HomeState.loadingHome());

    final response = await homeRepo.homeData();
    response.when(success: (responsehome) {
      if (!isClosed) emit(HomeState.successHome(responseHome: responsehome));
    }, failure: (error) {
      if (!isClosed) emit(HomeState.errorHome(erorr: error.messege ?? ''));
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
  emitSearch(String query) async {
    emit(const HomeState.loadingsearch());
    // Mock API Delay

    final response = await homeRepo.search(query);
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

  void clearSearchResults() {
    emit(HomeState.successSearch(responseItems: Item1view(data: [])));
  }
}
