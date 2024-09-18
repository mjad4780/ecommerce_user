import 'package:ecommerce_user/future/adress/logic/cubit/adress_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theming/colors.dart';
import '../../../widget/custom_text_field.dart';
import '../logic/cubit/adress_cubit.dart';
import 'add_adress_bloc.dart';

class AddAdress extends StatelessWidget {
  const AddAdress({
    super.key,
    required this.contextt,
  });
  final BuildContext contextt;
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: contextt.read<AdressCubit>(),
        child: Scaffold(
          body: Builder(builder: (context) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: BlocConsumer<AdressCubit, AdressState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    return Form(
                      key: context.read<AdressCubit>().formkeyadress,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            surfaceTintColor: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomTextField(
                                    labelText: 'name',
                                    onSave: (value) {},
                                    controller:
                                        context.read<AdressCubit>().name,
                                    validator: (value) => value!.isEmpty
                                        ? 'Please enter a state'
                                        : null,
                                  ),
                                  CustomTextField(
                                    labelText: 'City',
                                    onSave: (value) {},
                                    controller:
                                        context.read<AdressCubit>().city,
                                    validator: (value) => value!.isEmpty
                                        ? 'Please enter a city'
                                        : null,
                                  ),
                                  CustomTextField(
                                    labelText: 'Street',
                                    onSave: (val) {},
                                    controller:
                                        context.read<AdressCubit>().street,
                                    validator: (value) => value!.isEmpty
                                        ? 'Please enter a street'
                                        : null,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Center(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColor.darkOrange,
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 16),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                ),
                                onPressed: () async {
                                  context.read<AdressCubit>().emitAddAdress();
                                },
                                child: state is LoadingAdd
                                    ? const Center(
                                        child: CircularProgressIndicator(
                                        color: AppColor.mainBlue,
                                      ))
                                    : const Text('Add Adress',
                                        style: TextStyle(fontSize: 18))),
                          ),
                          const AddAdressBlocListener()
                        ],
                      ),
                    );
                  },
                ),
              ),
            );
          }),
        ));
  }
}
