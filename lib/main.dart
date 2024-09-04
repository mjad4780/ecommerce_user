import 'dart:developer';

import 'package:ecommerce_user/class.dart';
import 'package:ecommerce_user/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'core/class/cache_helper.dart';
import 'core/class/observer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/get_it/get_it.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = MyBlocObserver();

  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
  OneSignal.initialize("9c37a804-6bb8-4055-96f4-a56308ae8b63");

  OneSignal.Notifications.requestPermission(true);
  OneSignalPushSubscription();

  // ]);
  setupServise();
  await getIt<CacheHelper>().init();
  await ScreenUtil.ensureScreenSize();

  runApp(const name());
}

class name extends StatefulWidget {
  const name({super.key});

  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  hellp() {
    OneSignal.User.getOnesignalId();
    OneSignal.Notifications;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: GestureDetector(
              onTap: () async {
                SendPushNotifications.getAllNotifications();
                //69679502-8c9a-49ed-a18a-96c5447b1a94
                await SendPushNotifications.checkNotificationStatus(
                    '7cfee27a-0863-456f-bd95-ec1e7d241876');

                final id = OneSignal.User.pushSubscription.id;

                log(id.toString());
              },
              child: const Text('data')),
        ),
      ),
    );
  }
}
