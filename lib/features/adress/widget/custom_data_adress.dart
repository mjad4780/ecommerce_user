import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/animation/open_container_wrapper.dart';

import '../../../core/widgets/navigation_tile.dart';
import '../../../model/adress_response/datum.dart';
import '../logic/cubit/adress_cubit.dart';
import '../logic/cubit/adress_state.dart';
import 'delete_adress_bloc.dart';
import 'edit_adress.dart';

class CustomDataAdress extends StatelessWidget {
  const CustomDataAdress({
    super.key,
    required this.data,
  });

  final List<AdressData> data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocConsumer<AdressCubit, AdressState>(
          buildWhen: (previous, current) => current is PushEdit,
          listener: (context, state) {},
          builder: (context, state) {
            return Stack(
              children: [
                OpenContainerWrapper(
                  nextScresan: EditAdress(
                    id: data[index].adressId ?? 0,
                    data: data[index],
                    contextt: context,
                  ),
                  child: NavigationTile(
                    icon: Icons.location_on_outlined,
                    iconcolor: Colors.red,
                    title: data[index].adressName ?? '',
                  ),
                ),
                Positioned(
                    right: MediaQuery.of(context).size.width * 0.0,
                    bottom: 15,
                    child: IconButton(
                      iconSize: 30,
                      onPressed: () => context
                          .read<AdressCubit>()
                          .emitdeleteAdress(data[index].adressId ?? 0),
                      icon: const Icon(
                        Icons.delete,
                      ),
                    )),
                const DeleteAdressBlocListener()
              ],
            );
          },
        ),
      ),
    );
  }
}
