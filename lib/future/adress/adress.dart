import 'package:ecommerce_user/core/extensions/extention_navigator.dart';
import 'package:ecommerce_user/core/get_it/get_it.dart';
import 'package:ecommerce_user/future/adress/logic/cubit/adress_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/theming/colors.dart';
import 'widget/add_maps.dart';
import 'widget/get_adress_bloc.dart';

class MyAddressPage extends StatelessWidget {
  const MyAddressPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (contextt) => getIt<AdressCubit>()
          ..emitgetAdress()
          ..getLating(),
        child: Scaffold(
            floatingActionButton: Builder(builder: (context) {
              return FloatingActionButton(
                  onPressed: () async {
                    context.pushNamed(FlutterMaps(contextt: context));

                    // context.push('/Maps', arguments: {'contextMaps': context});
                  },
                  child: const Icon(Icons.add));
            }),
            appBar: AppBar(
              title: const Text(
                "My Address",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColor.darkOrange),
              ),
            ),
            body: const GetAdressBlocBuilder()));
  }
}
