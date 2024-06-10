import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../data/data_verfycode.dart';

part 'verfycode_state.dart';

class VerfycodeCubit extends Cubit<VerfycodeState> {
  VerfycodeCubit(this.verfyCodeDate) : super(VerfycodeInitial());
  final VerfyCodeDate verfyCodeDate;

  verfycode(int verfycode, BuildContext context) async {
    emit(VerfycodeLoading());
    final responsse = await verfyCodeDate.verfyCodeDate(verfycode, context);
    responsse.fold((l) => emit(VerfycodeFailer(failer: l.errMessage)),
        (r) => emit(VerfycodeSuccess()));
  }
  // : send agin

  sendverfycodeagin(int verfycode, BuildContext context) async {
    final responsse = await verfyCodeDate.sendverfyCodeagin(context);
    responsse.fold((l) => emit(SendAginFailer(failer: l.errMessage)),
        (r) => emit(SendAginSuccess()));
  }
}
