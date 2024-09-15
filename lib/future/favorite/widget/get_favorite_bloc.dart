import 'package:ecommerce_user/future/favorite/logic/cubit/favorite_cubit.dart';
import 'package:ecommerce_user/future/favorite/logic/cubit/favorite_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theming/colors.dart';
import '../../home/widget/product_grid_view.dart';

class GetFavoriteBlocBuilder extends StatelessWidget {
  const GetFavoriteBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteCubit, FavoriteState>(
      buildWhen: (previous, current) =>
          current is LoadingGet || current is SuccessGet || current is ErorrGet,
      builder: (context, state) {
        return state.maybeWhen(
          loadingGet: () {
            return const Center(
              child: CircularProgressIndicator(
                color: AppColor.mainBlue,
              ),
            );
          },
          successGet: (products) {
            return ProductGridView(items: products.data ?? []);
          },
          erorrGet: (error) {
            return const Center(child: Text('Sorry! no Items......'));
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
