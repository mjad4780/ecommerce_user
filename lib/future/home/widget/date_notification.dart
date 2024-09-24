import 'package:ecommerce_user/future/home/data/models/response_notification/response_notification.dart';
import 'package:flutter/material.dart';

class DataNotification extends StatelessWidget {
  const DataNotification({super.key, required this.response});
  final ResponseNotification response;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity * 0.60,
      child: ListView.builder(
        itemCount: response.data?.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(response.data?[index].notificationTitle ?? ''),
            subtitle: Text(response.data?[index].notificationTitle ?? ''),
            trailing: IconButton(
              icon: const Icon(Icons.notification_important),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
