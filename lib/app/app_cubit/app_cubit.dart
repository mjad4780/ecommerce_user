import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/class/cache_helper.dart';
import '../../core/class/pref_keys.dart';
import '../../core/get_it/get_it.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.initial());

  bool isDark = true;

//Theme Mode
  Future<void> changeAppThemeMode({bool? sharedMode}) async {
    if (sharedMode != null) {
      isDark = sharedMode;
      emit(AppState.themeChangeMode(isDark: isDark));
    } else {
      isDark = !isDark;
      await getIt<CacheHelper>()
          .saveData(key: PrefKeys.themeMode, value: isDark)
          .then((value) {
        emit(AppState.themeChangeMode(isDark: isDark));
      });
    }
  }
}
