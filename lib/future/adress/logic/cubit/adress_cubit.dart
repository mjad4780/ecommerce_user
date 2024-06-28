import 'package:bloc/bloc.dart';
import 'package:ecommerce_user/future/adress/data/repo.dart';
import 'package:flutter/material.dart';
import '../../../../model/adress_response/datum.dart';
import 'adress_state.dart';

class AdressCubit extends Cubit<AdressState> {
  AdressCubit(this._adressRepo) : super(const AdressState.initial());
  TextEditingController name = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController street = TextEditingController();
  String lat = '';
  String long = '';

  final AdressRepo _adressRepo;
//:AddAdress
  emitAddAdress() async {
    emit(const AdressState.loadingAdd());
    final response = await _adressRepo.addAdress(
        name.text, city.text, street.text, lat, long);
    response.when(success: (responsehome) {
      emit(const AdressState.successAdd());
    }, failure: (error) {
      emit(AdressState.errorAdd(erorr: error.apiErrorModel.messege ?? ''));
    });
  }

  ///:getAdress
  emitgetAdress() async {
    emit(const AdressState.loadingGet());
    final response = await _adressRepo.getAdress();
    response.when(success: (loginResponse) {
      emit(AdressState.successGet(adressResponse: loginResponse));
    }, failure: (error) {
      emit(AdressState.errorget(erorr: error.apiErrorModel.messege ?? ''));
    });
  }

  ///:emit editAdress
  emiteditAdress(int id) async {
    emit(const AdressState.loadingedit());
    final response = await _adressRepo.editAdress(
        id, name.text, city.text, street.text, lat, long);
    response.when(success: (loginResponse) {
      emit(const AdressState.successedit());
    }, failure: (error) {
      emit(AdressState.erroredit(erorr: error.apiErrorModel.messege ?? ''));
    });
  }

  ///:deleteAdress
  emitdeleteAdress(int id) async {
    final response = await _adressRepo.deleteAdress(id);
    response.when(success: (loginResponse) {
      //    getadrees.removeWhere((element) => element.addressId == id);

      emit(const AdressState.successdelete());
    }, failure: (error) {
      emit(AdressState.errordelete(erorr: error.apiErrorModel.messege ?? ''));
    });
  }

  edit(AdressData data) {
    name.text = data.adressName ?? '';
    city.text = data.adressCity ?? '';
    street.text = data.adressStreet ?? '';
    lat = data.adressLat ?? '';
    long = data.adressLong ?? '';
  }
}
