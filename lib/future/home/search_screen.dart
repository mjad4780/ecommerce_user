import 'package:ecommerce_user/core/extensions/extention_navigator.dart';
import 'package:ecommerce_user/future/home/logic/cubit/home_cubit.dart';
import 'package:ecommerce_user/future/home/widget/widget_search/search_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/get_it/get_it.dart';
import '../../core/theme/colors.dart';
import 'widget/custom_search_bar.dart';

// -------------------- Search Screen --------------------
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<HomeCubit>(),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
              title: const Text("🔍 Search"),
              centerTitle: true,
              elevation: 0,
              leading: GestureDetector(
                onTap: () => context.pop(),
                child: const Icon(Icons.arrow_back_ios,
                    size: 25, color: AppColor.darkOrange),
              )),
          body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Search Field
                  CustomSearchBar(
                    onChanged: (value) {
                      if (value.trim().isEmpty) {
                        // هنا بدل ما تبحث، رجّع رسالة
                        context.read<HomeCubit>().clearSearchResults();
                        // ممكن تعمل emitState فاضي أو تعرض SnackBar
                      } else {
                        context.read<HomeCubit>().emitSearch(value);
                      }
                    },
                  ),
                  const SizedBox(height: 20),

                  // BlocBuilder with Animation
                  const Expanded(child: SearchBlocBuilder()),
                ],
              )),
        );
      }),
    );
  }
}
