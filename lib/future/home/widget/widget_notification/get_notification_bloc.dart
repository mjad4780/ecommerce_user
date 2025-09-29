import 'package:ecommerce_user/future/home/logic/cubit/home_cubit.dart';
import 'package:ecommerce_user/future/home/logic/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'date_notification.dart';

class GetNotificationBlocBuilder extends StatelessWidget {
  const GetNotificationBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is LoadinggetNotification ||
          current is SuccessgetNotification ||
          current is ErrorgetNotification,
      builder: (context, state) {
        return state.maybeWhen(
          loadinggetNotification: () {
            return Skeletonizer(
                enabled: true,
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) => ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey[300],
                    ),
                    title: Container(
                      height: 10,
                      width: 100,
                      color: Colors.grey[300],
                    ),
                    subtitle: Container(
                      height: 10,
                      width: 150,
                      color: Colors.grey[300],
                    ),
                  ),
                ));
          },
          successgetNotification: (products) {
            return DataNotification(
              response: products,
            );

            // CustomBodyCart(responseCart: products);
          },
          errorgetNotification: (error) {
            return Center(child: Text(error));
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
