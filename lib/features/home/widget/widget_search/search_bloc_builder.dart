import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/failer_widget.dart';
import '../../../../core/widgets/loading.dart';
import '../../data/models/response_home/response_home.dart';
import '../../logic/cubit/home_cubit.dart';
import '../../logic/cubit/home_state.dart';
import 'peoduct_grid_view_saerch.dart';

class SearchBlocBuilder extends StatelessWidget {
  const SearchBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is Loadingsearch ||
          current is SuccessSearch ||
          current is ErrorSearch,
      builder: (context, state) {
        return
            // AnimatedSwitcher(
            //     duration: const Duration(milliseconds: 400),
            //     transitionBuilder: (child, animation) => FadeTransition(
            //           opacity: animation,
            //           child: ScaleTransition(
            //             scale: animation,
            //             child: child,
            //           ),
            //         ),
            //     child:
            state.maybeWhen(
          loadingsearch: () {
            // Skeleton / Placeholder
            return LoadingWidget(
              isloading: true,
              child: ProductGridViewSearch(
                items: [Item(), Item(), Item(), Item()],
              ),
            );
          },
          successSearch: (products) {
            if (products.data?.isEmpty ?? true) {
              return const Center(
                child: Text(
                  "لا يوجد نتائج 🔍",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              );
            } else {
              return ProductGridViewSearch(items: products.data ?? []);
            }
          },
          errorSearch: (error) {
            return FailerWidget(
              messege: error,
              onPressed: () {
                // context.read<HomeCubit>().emitSearch();
              },
            );
          },
          orElse: () {
            return const SizedBox.shrink();
          },
          // ));
        );
      },
    );
  }
}
