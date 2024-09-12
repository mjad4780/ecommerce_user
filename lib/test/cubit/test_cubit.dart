// import 'package:bloc/bloc.dart';
// import 'package:ecommerce_user/test/repo.dart';

// import 'test_state.dart';

// class TestCubit extends Cubit<TestState> {
//   TestCubit() : super(const TestState.initial());
//   // final LoginRepo _loginRepo;
//   // List<CategoriesModel> dataCategories233 = [];
//   // void emitLoginStates() async {
//   //   emit(const TestState.loading());
//   //   final response = await _loginRepo.search();
//   //   response.when(success: (loginResponse) {
//   //     emit(TestState.success(loginResponse));
//   //   }, failure: (error) {
//   //     emit(TestState.error(error: error.apiErrorModel.message ?? ''));
//   //   });
//   // }

//   // ////home
//   // void emitHomeStates() async {
//   //   emit(const TestState.loadingHome());
//   //   final response = await _loginRepo.home();
//   //   response.when(success: (loginResponse) {
//   //     List listdata = loginResponse['categories']['data'];
//   //     dataCategories233
//   //         .addAll(listdata.map((e) => CategoriesModel.fromJson(e)));
//   //     emit(const TestState.successHome());
//   //   }, failure: (error) {
//   //     print('objectjjjjjjjjjjjjjjjjjjjjjjjjj${error.apiErrorModel.message}');
//   //     emit(TestState.errorHome(error: error.apiErrorModel.message ?? '9'));
//   //   });
//   // }
// }
