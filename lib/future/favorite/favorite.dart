import 'package:ecommerce_user/future/favorite/logic/cubit/favorite_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widget/get_favorite_bloc.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  void initState() {
    super.initState();
    context.read<FavoriteCubit>().emitgetFavorite();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => context.read<FavoriteCubit>().emitgetFavorite(),
      child: const SafeArea(
        child: GetFavoriteBlocBuilder(),
      ),
    );
  }
}
