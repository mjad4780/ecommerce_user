import 'package:ecommerce_user/core/extensions/extention_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/get_it/get_it.dart';
import '../../../core/theming/colors.dart';
import '../../../model/adress_response/datum.dart';
import '../../../widget/custom_dropdown.dart';
import '../../adress/logic/cubit/adress_cubit.dart';
import '../../adress/logic/cubit/adress_state.dart';
import '../logic/cubit/check_cart_cubit.dart';
import '../logic/cubit/check_cart_state.dart';

class SelectAdressCart extends StatelessWidget {
  const SelectAdressCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AdressCubit>()..emitgetAdress(),
      child: BlocBuilder<AdressCubit, AdressState>(
        buildWhen: (previous, current) =>
            current is SuccessGet || current is ErrorGet,
        builder: (context, state) {
          return state.maybeWhen(
              successGet: (adressResponse) => adressResponse.data != null
                  ? BlocConsumer<CheckCartCubit, CheckCartState>(
                      listener: (context, state) {},
                      builder: (context, state) {
                        return CustomDropdown<AdressData>(
                            bgColor: Colors.white,
                            hintText: context
                                    .read<CheckCartCubit>()
                                    .selectadressIdS ??
                                'Choose Adress',
                            items: adressResponse.data ?? [],
                            onChanged: (val) {
                              context.read<CheckCartCubit>().selectAdress(
                                  val?.adressId ?? 0, val?.adressName ?? 'NR');
                              context.read<CheckCartCubit>().selectadressId =
                                  val?.adressId;
                            },
                            displayItem: (val) => val.adressName ?? '');
                      },
                    )
                  : Wrap(
                      children: [
                        const Text(
                          'your have not Adress please add adress',
                          style: TextStyle(),
                        ),
                        GestureDetector(
                          onTap: () => context.push('/MyAddressPage'),
                          child: const Text(
                            ' Enter Here',
                            style: TextStyle(
                                color: AppColor.primaryColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
              orElse: () => const SizedBox.shrink());
        },
      ),
    );
  }
}
