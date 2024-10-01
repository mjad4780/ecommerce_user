import '../../../../core/constants.dart';
import '../../../../core/function/save_books.dart';
import '../../entities/book_entity.dart';
import '../local/home_local_data_source.dart';
import '../models/book_model/book_model.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';

class GetBookRepo {
  final ApiService _apiService;

  GetBookRepo(
    this._apiService,
  );

  Future<ApiResult<List<BookEntity>>> getBook(int pageNumber) async {
    try {
      // List<BookEntity> books;
      // books = homeLocalDataSource.fetchFeaturedBooks();
      // if (books.isNotEmpty) {
      //   return ApiResult.success(books);
      // }
      final response = await _apiService.getBook(pageNumber);
      // books = getBooksList(response);
      // saveBooksData(books, kFeaturedBox);
      return ApiResult.success(getBooksList(response));
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}

List<BookEntity> getBooksList(Map<String, dynamic> data) {
  List<BookEntity> books = [];
  for (var bookMap in data['items']) {
    books.add(BookModel.fromJson(bookMap));
  }
  return books;
}
