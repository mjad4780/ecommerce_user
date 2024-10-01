import 'package:ecommerce_user/future/Book/entities/book_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_book_state.freezed.dart';

@freezed
class GetBooKState with _$GetBooKState {
  const factory GetBooKState.initial() = _Initial;

  const factory GetBooKState.loading() = Loading;
  const factory GetBooKState.ucces({required List<BookEntity> book}) = Succes;
  const factory GetBooKState.erorr({required String erorr}) = Erorr;
  const factory GetBooKState.fathloading() = fath;
}
