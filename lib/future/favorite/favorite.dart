import 'package:ecommerce_user/future/favorite/logic/cubit/favorite_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/helpers/spacing.dart';
import '../../core/theming/styles.dart';
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
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Favorites",
          ),
        ),
        body: const CustomScrollView(
          slivers: [GetFavoriteBlocBuilder()],
        ));
  }
}
