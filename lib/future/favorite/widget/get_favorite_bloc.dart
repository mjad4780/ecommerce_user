import 'package:ecommerce_user/core/widgets/failer_widget.dart';
import 'package:ecommerce_user/core/widgets/loading.dart';
import 'package:ecommerce_user/future/favorite/logic/cubit/favorite_cubit.dart';
import 'package:ecommerce_user/future/favorite/logic/cubit/favorite_state.dart';
import 'package:ecommerce_user/future/home/data/models/response_home/response_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theme/styles.dart';
import '../../home/widget/product_grid_view.dart';
import 'product_grid_view_favorite.dart';

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
            return LoadingWidget(
                isloading: true,
                child:
                    ProductGridView(items: [Item(), Item(), Item(), Item()]));
          },
          successGet: (products) {
            final favorites = context.read<FavoriteCubit>().favorites;

            if (favorites.isEmpty) {
              return Center(
                  child: Text("There are no products in Favorites",
                      style: TextStyles.textStyleAppBar));
            }

            return ProductGridViewFavorite(items: favorites);
          },
          erorrGet: (error) {
            return FailerWidget(
                messege: error,
                onPressed: () {
                  context.read<FavoriteCubit>().emitgetFavorite();
                });
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
