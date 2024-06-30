import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../data/data_verfycode.dart';
import 'verfy_code_state.dart';

class VerfyCodeCubit extends Cubit<VerfyCodeState> {
  VerfyCodeCubit(this._verfyCodeDate) : super(const VerfyCodeState.initial());

  TextEditingController email = TextEditingController();
  final VerfyCodeDate _verfyCodeDate;

  ///:verfycode
  verfycode(int verfycode) async {
    emit(const VerfyCodeState.loadingveryfyCode());
    final response = await _verfyCodeDate.verfycode(email.text, verfycode);
    response.when(success: (responseStatus) {
      emit(const VerfyCodeState.successVerfyCode());
    }, failure: (error) {
      emit(VerfyCodeState.erorrVerfycode(
          erorr: error.apiErrorModel.messege ?? ''));
    });
  }

  ///:sendverfycode
  sendverfycode() async {
    emit(const VerfyCodeState.loadingSend());
    final response = await _verfyCodeDate.sendVerfyCode(
      email.text,
    );
    response.when(success: (responseStatus) {
      emit(const VerfyCodeState.successSend());
    }, failure: (error) {
      emit(VerfyCodeState.erorrSend(erorr: error.apiErrorModel.messege ?? ''));
    });
  }
}
