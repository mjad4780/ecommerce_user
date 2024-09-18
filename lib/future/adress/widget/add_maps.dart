import 'package:ecommerce_user/core/extensions/extention_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';

import '../../../core/theming/colors.dart';
import '../logic/cubit/adress_cubit.dart';
import '../logic/cubit/adress_state.dart';
import 'add_adress.dart';

class FlutterMaps extends StatelessWidget {
  const FlutterMaps({
    super.key,
    required this.contextt,
  });
  final BuildContext contextt;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider.value(
          value: contextt.read<AdressCubit>(),
          child: Builder(builder: (context) {
            return Stack(
              alignment: Alignment.center,
              children: [
                const Center(child: Text('add new address')),
                if (context.read<AdressCubit>().latLng != null)
                  BlocConsumer<AdressCubit, AdressState>(
                    buildWhen: (previous, current) =>
                        current is pushEdit || current is AddMarker,
                    listener: (context, state) {},
                    builder: (context, state) {
                      return FlutterMap(
                        options: MapOptions(
                          onTap: (tapPosition, point) {
                            context.read<AdressCubit>().addmarker(point);
                          },
                          initialCenter: context.read<AdressCubit>().latLng!,
                          initialZoom: 9.2,
                        ),
                        children: [
                          TileLayer(
                            urlTemplate:
                                'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                            userAgentPackageName: 'com.example.app',
                          ),
                          MarkerLayer(
                              markers: context.read<AdressCubit>().markers)
                        ],
                      );
                    },
                  ),
                Positioned(
                  bottom: 10,
                  child: MaterialButton(
                    minWidth: 200,
                    onPressed: () {
                      context.pushNamed(AddAdress(
                        contextt: contextt,
                      ));
                      // context
                      //     .push('/AddAdress', arguments: {'context': contextt});
                    },
                    color: AppColor.primaryColor,
                    textColor: Colors.white,
                    child: const Text("اكمال", style: TextStyle(fontSize: 18)),
                  ),
                )
              ],
            );
          })),
    );
  }
}
