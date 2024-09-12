import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../model/response_home/item1view.dart';

part 'item_categories_state.freezed.dart';

@freezed
class ItemCategoriesState with _$ItemCategoriesState {
  const factory ItemCategoriesState.initial() = _Initial;

  const factory ItemCategoriesState.loading() = Loading;
  const factory ItemCategoriesState.success(
      {required Item1view responseItems}) = Success;
  const factory ItemCategoriesState.erorr({required String erorr}) = Erorr;
}
