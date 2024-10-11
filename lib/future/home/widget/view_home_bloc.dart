import 'package:ecommerce_user/future/home/logic/cubit/home_cubit.dart';
import 'package:ecommerce_user/future/home/logic/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:skeletonizer/skeletonizer.dart';

import 'card_search.dart';
import 'success_data_api.dart';

class HomeBlocBuilder extends StatelessWidget {
  const HomeBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final homeCubit = context.read<HomeCubit>();
        final isSearchEmpty = homeCubit.search.text.isEmpty;

        if (state is LoadingHome) {
          return _buildSkeleton(homeCubit, state: state);
        }
        if (state is ErrorHome) {
          return _buildError(state.erorr);
        }
        if (state is SuccessSearch && !isSearchEmpty) {
          return _buildSearchResults(state);
        }
        if (state is SuccessHome && isSearchEmpty) {
          return _buildHomeSuccess(state);
        }
        if (isSearchEmpty) {
          return _buildSkeleton(homeCubit);
        }
        if (state is ErrorSearch) {
          return _buildNoItems();
        }
        return const SizedBox.shrink();
      },
    );
  }

  // Helper methods for cleaner widget building

  Widget _buildSkeleton(HomeCubit homeCubit, {HomeState? state}) {
    return Skeletonizer(
      enabled: state is LoadingHome ? true : false,
      child: SuccessDataApi(responseHome: homeCubit.responseHome!),
    );
  }

  Widget _buildError(String error) {
    return Text(error);
  }

  Widget _buildSearchResults(SuccessSearch state) {
    return ListItemsSearch(
      listdatamodel: state.responseItems.data ?? [],
    );
  }

  Widget _buildHomeSuccess(SuccessHome state) {
    return SuccessDataApi(
      responseHome: state.responseHome,
    );
  }

  Widget _buildNoItems() {
    return const Center(
      child: Text('No Items.......................'),
    );
  }
}
