import 'package:ecommerce_user/future/adress/data/repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

import '../../../../model/adress_response/datum.dart';
import 'adress_state.dart';

class AdressCubit extends Cubit<AdressState> {
  AdressCubit(this._adressRepo) : super(const AdressState.initial());
  TextEditingController name = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController street = TextEditingController();

  GlobalKey<FormState> formkeyadress = GlobalKey<FormState>();

  final AdressRepo _adressRepo;
//:AddAdress
  emitAddAdress() async {
    if (formkeyadress.currentState!.validate()) {
      emit(const AdressState.loadingAdd());
      final response = await _adressRepo.addAdress(
          name.text,
          city.text,
          street.text,
          latLng!.latitude.toString(),
          latLng!.longitude.toString());
      response.when(success: (responsehome) {
        emit(const AdressState.successAdd());
      }, failure: (error) {
        emit(AdressState.errorAdd(erorr: error.apiErrorModel.messege ?? ''));
      });
    }
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
    final response = await _adressRepo.editAdress(id, name.text, city.text,
        street.text, latLng!.latitude.toString(), latLng!.longitude.toString());
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
      //  getadrees.removeWhere((element) => element.addressId == id);

      emit(const AdressState.successdelete());
    }, failure: (error) {
      emit(AdressState.errordelete(erorr: error.apiErrorModel.messege ?? ''));
    });
  }

  edit(AdressData data) {
    name.text = data.adressName ?? '';
    city.text = data.adressCity ?? '';
    street.text = data.adressStreet ?? '';
    latLng =
        LatLng(double.parse(data.adressLat!), double.parse(data.adressLong!));
    emit(const AdressState.pushEdit());
  }

  MapController mapController = MapController();
  List<Marker> markers = [];

  addmarker(LatLng point) {
    markers.clear();
    markers.add(Marker(point: point, child: const Icon(Icons.pin_drop)));
    latLng = point;
    emit(AdressState.addMarker(markers: markers));
  }

  getLating() async {
    emit(const AdressState.loadingMaps());
    Position position;
    position = await Geolocator.getCurrentPosition();
    latLng = LatLng(position.latitude, position.longitude);
    markers
        .add(Marker(point: latLng!, child: const Icon(Icons.pin_drop_rounded)));
    emit(const AdressState.successMaps());
  }

  LatLng? latLng;

  updateLating(LatLng lating) {
    latLng = lating;
    emit(const AdressState.updateLatlng());
  }
}
