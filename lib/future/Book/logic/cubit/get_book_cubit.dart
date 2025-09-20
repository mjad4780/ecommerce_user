import 'package:ecommerce_user/core/networking/api_result.dart';
import 'package:ecommerce_user/future/Book/data/repo/repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'get_book_state.dart';

class GetBooKCubit extends Cubit<GetBooKState> {
  GetBooKCubit(this._bookRepo) : super(const GetBooKState.initial());

  final GetBookRepo _bookRepo;
  emitgetBook(int pageNumber) async {
    if (pageNumber == 0) {
      emit(const GetBooKState.loading());
    } else {
      emit(const GetBooKState.fathloading());
    }
    final response = await _bookRepo.getBook(pageNumber);
    response.when(success: (book) {
      emit(GetBooKState.ucces(book: book));
    }, failure: (error) {
      emit(GetBooKState.erorr(erorr: error.messege ?? ''));
    });
  }
}
