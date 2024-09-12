import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repo.dart';
import 'offers_state.dart';

class OffersCubit extends Cubit<OffersState> {
  OffersCubit(this._offersRepo) : super(const OffersState.initial());

  final OffersRepo _offersRepo;

  ///:emitOffers
  emitOffers() async {
    emit(const OffersState.loadingoffers());
    final response = await _offersRepo.offers();
    response.when(success: (loginResponse) {
      emit(OffersState.successoffers(responseItems: loginResponse));
    }, failure: (error) {
      emit(OffersState.erroroffers(erorr: error.apiErrorModel.messege ?? ''));
    });
  }
}
