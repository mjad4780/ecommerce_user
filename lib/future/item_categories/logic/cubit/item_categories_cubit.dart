import 'package:bloc/bloc.dart';
import 'package:ecommerce_user/model/response_home/category.dart';

import '../../data/repo.dart';
import 'item_categories_state.dart';

class ItemCategoriesCubit extends Cubit<ItemCategoriesState> {
  ItemCategoriesCubit(this.itemCategoriesRepo)
      : super(const ItemCategoriesState.initial());

  final ItemCategoriesRepo itemCategoriesRepo;
  Category? category;

//:ItemCategories
  emitItemCategories(int categoriesId, Category categorys) async {
    emit(const ItemCategoriesState.loading());
    final response = await itemCategoriesRepo.itemCategories(categoriesId);
    response.when(success: (responsehome) {
      category = categorys;
      emit(ItemCategoriesState.success(responseItems: responsehome));
    }, failure: (error) {
      emit(ItemCategoriesState.erorr(erorr: error.apiErrorModel.messege ?? ''));
    });
  }
}
