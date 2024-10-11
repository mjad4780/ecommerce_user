import 'package:ecommerce_user/future/adress/logic/cubit/adress_cubit.dart';
import 'package:ecommerce_user/future/adress/logic/cubit/adress_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theming/colors.dart';
import 'custom_data_adress.dart';

class GetAdressBlocBuilder extends StatelessWidget {
  const GetAdressBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdressCubit, AdressState>(
      buildWhen: (previous, current) =>
          current is LoadingGet || current is SuccessGet || current is ErrorGet,
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
            return products.data != null
                ? CustomDataAdress(data: products.data ?? [])
                : const Center(
                    child: Text('There Is Not Logation......'),
                  );
          },
          errorget: (error) {
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
