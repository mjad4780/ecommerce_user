import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../model/response_items/response_items.dart';

part 'item_categories_state.freezed.dart';

@freezed
class ItemCategoriesState with _$ItemCategoriesState {
  const factory ItemCategoriesState.initial() = _Initial;

  const factory ItemCategoriesState.loading() = Loading;
  const factory ItemCategoriesState.success(
      {required ResponseItems responseItems}) = Success;
  const factory ItemCategoriesState.erorr({required String erorr}) = Erorr;
}
