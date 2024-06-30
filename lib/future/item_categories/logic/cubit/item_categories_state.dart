import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../model/items_response/items_response.dart';

part 'item_categories_state.freezed.dart';

@freezed
class ItemCategoriesState with _$ItemCategoriesState {
  const factory ItemCategoriesState.initial() = _Initial;

  const factory ItemCategoriesState.loading() = Loading;
  const factory ItemCategoriesState.success(ItemsResponse itemsResponse) =
      Success;
  const factory ItemCategoriesState.erorr({required String erorr}) = Erorr;
}
