import 'package:ecommerce_user/core/networking/api_constants.dart';
import 'package:ecommerce_user/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:hive_flutter/adapters.dart';

// import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'core/class/cache_helper.dart';
import 'core/class/observer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/constants.dart';
import 'core/get_it/get_it.dart';
import 'app/e-ecommerce.dart';
import 'future/Book/entities/book_entity.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = MyBlocObserver();
  Stripe.publishableKey = ApiConstants.publishableKey;
  // await Hive.initFlutter();
  // Hive.registerAdapter(BookEntityAdapter());
  // await Hive.openBox<BookEntity>(kFeaturedBox);
  // OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
  // OneSignal.initialize("9c37a804-6bb8-4055-96f4-a56308ae8b63");
  // OneSignal.Notifications.requestPermission(true);

  // ]);
  // var notifications = await OneSignal
  //  .getNotificationHistory();

  // int unreadCount = notifications.where((n) => !n.opened).length;

  setupServise();
  await getIt<CacheHelper>().init();
  await ScreenUtil.ensureScreenSize();

  runApp(const Ecommerce());
}

// 
