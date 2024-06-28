import 'package:bloc/bloc.dart';
import 'package:ecommerce_user/future/archive/data/repo.dart';
import 'package:flutter/material.dart';

import 'archive_state.dart';

class ArchiveCubit extends Cubit<ArchiveState> {
  ArchiveCubit(this._orderArchive) : super(const ArchiveState.initial());
  final OrderArchive _orderArchive;
  TextEditingController comment = TextEditingController();
//:Archive
  emitArchive() async {
    emit(const ArchiveState.loading());
    final response = await _orderArchive.orderArchive();
    response.when(success: (responsehome) {
      emit(ArchiveState.success(pendingResponse: responsehome));
    }, failure: (error) {
      emit(ArchiveState.erorr(erorr: error.apiErrorModel.messege ?? ''));
    });
  }

  //:Rating
  emitRating(int orderid, int rating) async {
    emit(const ArchiveState.loadingRating());
    final response = await _orderArchive.rating(orderid, rating, comment.text);
    response.when(success: (responsehome) {
      emit(const ArchiveState.successRating());
    }, failure: (error) {
      emit(ArchiveState.erorrRating(erorr: error.apiErrorModel.messege ?? ''));
    });
  }
}
