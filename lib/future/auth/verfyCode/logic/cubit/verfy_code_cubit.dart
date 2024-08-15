import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../data/data_verfycode.dart';
import 'verfy_code_state.dart';

class VerfyCodeCubit extends Cubit<VerfyCodeState> {
  VerfyCodeCubit(this._verfyCodeDate) : super(const VerfyCodeState.initial());

  final VerfyCodeDate _verfyCodeDate;

  ///:verfycode
  verfycode(String verfycode, String email) async {
    emit(const VerfyCodeState.loadingveryfyCode());
    final response = await _verfyCodeDate.verfycode(email, verfycode);
    response.when(success: (responseStatus) {
      emit(const VerfyCodeState.successVerfyCode());
    }, failure: (error) {
      emit(VerfyCodeState.erorrVerfycode(
          erorr: error.apiErrorModel.messege ?? ''));
    });
  }

  ///:sendverfycode
  sendverfycode(String email) async {
    emit(const VerfyCodeState.loadingSend());
    final response = await _verfyCodeDate.sendVerfyCode(
      email,
    );
    response.when(success: (responseStatus) {
      emit(const VerfyCodeState.successSend());
    }, failure: (error) {
      emit(VerfyCodeState.erorrSend(erorr: error.apiErrorModel.messege ?? ''));
    });
  }
}
