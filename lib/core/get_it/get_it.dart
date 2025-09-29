import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:ecommerce_user/future/Book/data/repo/repo.dart';
import 'package:ecommerce_user/future/archive/logic/cubit/archive_cubit.dart';
import 'package:ecommerce_user/future/auth/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:ecommerce_user/future/auth/verfyCode/data/data_verfycode.dart';
import 'package:ecommerce_user/future/cart/logic/cubit/cart_cubit.dart';

import 'package:ecommerce_user/future/favorite/logic/cubit/favorite_cubit.dart';
import 'package:ecommerce_user/future/home/data/repo.dart';
import 'package:ecommerce_user/future/home/logic/cubit/home_cubit.dart';
import 'package:ecommerce_user/future/item_categories/data/repo.dart';
import 'package:ecommerce_user/future/offers/logic/cubit/offers_cubit.dart';

import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/networking/api_service.dart';
import '../../core/networking/dio_factory.dart';
import '../../future/Book/logic/cubit/get_book_cubit.dart';
import '../../future/adress/data/repo.dart';
import '../../future/adress/logic/cubit/adress_cubit.dart';
import '../../future/archive/data/repo.dart';
import '../../future/auth/Login/data/data_login.dart';
import '../../future/auth/Login/logic/cubit/login_cubit.dart';
import '../../future/auth/forgetpassword/data/for_get_password.dart';
import '../../future/auth/forgetpassword/logic/cubit/forget_password_cubit.dart';
import '../../future/auth/sign_up/data/data_sigin_up.dart';
import '../../future/auth/verfyCode/logic/cubit/verfy_code_cubit.dart';
import '../../future/cart/data/repo.dart';
import '../../future/chat/cubit/chat_cubit.dart';
import '../../future/chat/data/services/chats/chat_services.dart';
import '../../future/check_cart_order/data/repo.dart';
import '../../future/check_cart_order/data/repo_payment.dart';
import '../../future/check_cart_order/logic/cubit/check_cart_cubit.dart';
import '../../future/favorite/data/repo.dart';
import '../../future/item_categories/logic/cubit/item_categories_cubit.dart';
import '../../future/offers/data/repo.dart';
import '../../future/orders/data/repo.dart';
import '../../future/orders/logic/cubit/orders_cubit.dart';
import '../helpers/cache_helper.dart';
import '../service/supabase/supabase_service.dart';

final getIt = GetIt.instance;
void setupServise() {
  Dio dio = DioFactory.getDio();
  // FirebaseFirestore firestore = FirebaseFirestore.instance;

//service supabase
  getIt.registerLazySingleton<SupabaseClient>(() => Supabase.instance.client);
  getIt.registerLazySingleton<SupabaseService>(
      () => SupabaseService(getIt<SupabaseClient>()));

  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  getIt.registerSingleton<CacheHelper>(CacheHelper());

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signUp
  getIt.registerLazySingleton<SignUpDate>(() => SignUpDate(getIt()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));
  // verfycode
  getIt.registerLazySingleton<VerfyCodeDate>(() => VerfyCodeDate(getIt()));
  getIt.registerFactory<VerfyCodeCubit>(() => VerfyCodeCubit(getIt()));

  // ForgetPassword
  getIt.registerLazySingleton<ForgetPassword>(() => ForgetPassword(getIt()));
  getIt.registerLazySingleton<ForgetPasswordCubit>(
      () => ForgetPasswordCubit(getIt()));

  // Adress
  getIt.registerLazySingleton<AdressRepo>(() => AdressRepo(getIt()));
  getIt.registerFactory<AdressCubit>(() => AdressCubit(getIt()));

  // OrderArchive
  getIt.registerLazySingleton<OrderArchive>(() => OrderArchive(getIt()));
  getIt.registerFactory<ArchiveCubit>(() => ArchiveCubit(getIt()));

  // Cart

  getIt.registerLazySingleton<CartRepo>(() => CartRepo(getIt()));
  getIt.registerFactory<CartCubit>(() => CartCubit(
        getIt(),
      ));

  // CheckCartOrder
  getIt.registerLazySingleton<CheckCartOrderRepo>(
      () => CheckCartOrderRepo(getIt()));
  getIt.registerLazySingleton<RepoPayment>(() => RepoPayment(getIt(), getIt()));

  getIt.registerFactory<CheckCartCubit>(() => CheckCartCubit(getIt(), getIt()));

  // Favorite
  getIt.registerLazySingleton<FavoriteRepo>(() => FavoriteRepo(getIt()));
  getIt.registerLazySingleton<FavoriteCubit>(() => FavoriteCubit(getIt()));

  // home
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerLazySingleton<HomeCubit>(() => HomeCubit(getIt()));
  // itemCategories
  getIt.registerLazySingleton<ItemCategoriesRepo>(
      () => ItemCategoriesRepo(getIt()));
  getIt
      .registerFactory<ItemCategoriesCubit>(() => ItemCategoriesCubit(getIt()));
  // orders
  getIt.registerLazySingleton<OrdersRepo>(() => OrdersRepo(getIt()));
  getIt.registerFactory<OrdersCubit>(() => OrdersCubit(getIt()));

  // Offers
  getIt.registerLazySingleton<OffersRepo>(() => OffersRepo(getIt()));
  getIt.registerFactory<OffersCubit>(() => OffersCubit(getIt()));
  // Book
  getIt.registerLazySingleton<GetBookRepo>(() => GetBookRepo(getIt()));
  getIt.registerFactory<GetBooKCubit>(() => GetBooKCubit(getIt()));
  //App chat

  getIt.registerLazySingleton<FirebaseFirestore>(
      () => FirebaseFirestore.instance);

  getIt.registerLazySingleton<ChatService>(
      () => ChatService(firestore: getIt<FirebaseFirestore>()));

  // Chat Cubit

  getIt.registerFactory<ChatCubit>(
      () => ChatCubit(chatService: getIt<ChatService>()));

  // getIt.registerLazySingleton<ChatServiceCustomer>(
  //     () => ChatServiceCustomer(firestore: firestore));
}
