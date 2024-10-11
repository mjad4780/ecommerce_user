import 'package:ecommerce_user/core/networking/api_constants.dart';
import 'package:ecommerce_user/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

// import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'core/class/cache_helper.dart';
import 'core/class/observer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/get_it/get_it.dart';
import 'app/ecommerce.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  Bloc.observer = MyBlocObserver();
  Stripe.publishableKey = ApiConstants.publishableKey;

  // OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
  // OneSignal.initialize("9c37a804-6bb8-4055-96f4-a56308ae8b63");
  // OneSignal.Notifications.requestPermission(true);

  // ]);

  setupServise();
  await getIt<CacheHelper>().init();
  await ScreenUtil.ensureScreenSize();

  runApp(const Ecommerce());
}


// 
