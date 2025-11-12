import 'package:ecommerce_user/core/extensions/extention_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';

import '../../../core/theme/colors.dart';
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
          value: contextt.read<AdressCubit>()..getLating(),
          child: Builder(builder: (context) {
            return Stack(
              alignment: Alignment.center,
              children: [
                // if (context.read<AdressCubit>().latLng != null)
                BlocConsumer<AdressCubit, AdressState>(
                  // buildWhen: (previous, current) =>
                  //     current is PushEdit || current is AddMarker,
                  listener: (context, state) {},
                  builder: (context, state) {
                    if (context.read<AdressCubit>().latLng == null) {
                      return const Center(
                          child: CircularProgressIndicator(
                        color: AppColor.primaryColor,
                      ));
                    }

                    return FlutterMap(
                      mapController: context.read<AdressCubit>().mapController,
                      options: MapOptions(
                        // keepAlive: true,
                        onTap: (tapPosition, point) {
                          context.read<AdressCubit>().addmarker(point);
                        },
                        initialCenter: context.read<AdressCubit>().latLng!,
                        initialZoom: 9.2,
                      ),
                      children: [
                        TileLayer(
                          additionalOptions: const {
                            'key': 'UGpoQ5rEygtz3BdzV1xB', // استبدلها بمفتاحك
                          },
                          urlTemplate:
                              "https://api.maptiler.com/maps/streets/{z}/{x}/{y}.png?key=UGpoQ5rEygtz3BdzV1xB",

                          // 'https://api.maptiler.com/maps/basic-v2/?key=UGpoQ5rEygtz3BdzV1xB.png',
                          userAgentPackageName: 'com.example.ecommerce_user',
                        ),

                        MarkerLayer(
                            markers: state is AddMarker
                                ? state.markers
                                : context.read<AdressCubit>().markers),
                        //                              RichAttributionWidget( // Include a stylish prebuilt attribution widget that meets all requirments
                        //   attributions: [
                        //     TextSourceAttribution(
                        //       'OpenStreetMap contributors',
                        //       onTap: () => launchUrl(Uri.parse('https://openstreetmap.org/copyright')), // (external)
                        //     ),
                        //     // Also add images...
                        //   ],
                        // ),
                      ],
                    );
                  },
                ),
                Positioned(
                  bottom: 10,
                  child: MaterialButton(
                    minWidth: 200,
                    onPressed: () {
                      context.read<AdressCubit>().name.clear();
                      context.read<AdressCubit>().city.clear();
                      context.read<AdressCubit>().street.clear();
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
