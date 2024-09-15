import 'package:ecommerce_user/future/favorite/logic/cubit/favorite_cubit.dart';
import 'package:ecommerce_user/future/favorite/logic/cubit/favorite_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/theming/styles.dart';
import 'widget/get_favorite_bloc.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  @override
  void initState() {
    super.initState();
    context.read<FavoriteCubit>().emitgetFavorite();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FavoriteCubit, FavoriteState>(
      buildWhen: (previous, current) =>
          current is SuccessDelete || current is SuccessAdd,
      listener: (context, state) {},
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                  title:
                      Text("Favorites", style: TextStyles.textItemCategories)),
              const Padding(
                  padding: EdgeInsets.all(20), child: GetFavoriteBlocBuilder())
            ],
          ),
        );
      },
    );
  }
}
