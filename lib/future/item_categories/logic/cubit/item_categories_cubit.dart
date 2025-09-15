import 'package:ecommerce_user/future/home/data/models/response_home/response_home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_user/core/networking/api_result.dart';

import '../../data/repo.dart';
import 'item_categories_state.dart';

class ItemCategoriesCubit extends Cubit<ItemCategoriesState> {
  ItemCategoriesCubit(this.itemCategoriesRepo)
      : super(const ItemCategoriesState.initial());

  final ItemCategoriesRepo itemCategoriesRepo;
  Category? category;

//:ItemCategories
  emitItemCategories(
    int categoriesId,
  ) async {
    emit(const ItemCategoriesState.loading());
    final response = await itemCategoriesRepo.itemCategories(categoriesId);
    response.when(success: (responsehome) {
      emit(ItemCategoriesState.success(responseItems: responsehome));
    }, failure: (error) {
      emit(ItemCategoriesState.erorr(erorr: error.messege ?? ''));
    });
  }

  selectitemCategories(Category categories) {
    category = categories;
    emit(ItemCategoriesState.selectCategories(categories: category!));
  }
}
