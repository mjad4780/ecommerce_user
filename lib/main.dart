
import 'package:ecommerce_user/firebase_options.dart';
import 'package:ecommerce_user/key.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:device_preview/device_preview.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'core/helpers/cache_helper.dart';
import 'core/helpers/observer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/get_it/get_it.dart';
import 'app/ecommerce.dart';
// Hi there 👋

// Just a quick note before you dive into the code:
// Not the entire project has **Localization** or **Theme** fully applied. That was a temporary choice, not a lack of knowledge 😄

// I’m comfortable implementing both properly, but for now I focused more on core logic and delivery speed.
// If you notice parts that need **refactoring**… yep, that’s some temporary laziness 🙃

// Any suggestions or improvements are more than welcome.
// Thanks for your time and for reviewing the code 🌟

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  Bloc.observer = MyBlocObserver();
  Stripe.publishableKey = ApiConstants.publishableKey;

  // ]);

  setupServise();
  await getIt<CacheHelper>().init();
  await ScreenUtil.ensureScreenSize();

  await Supabase.initialize(
    url: supabaseUrl,
    anonKey: supabaseKey,
  );

  // علشان الابليكيشن ميلفش وشريط الحالة اللي فوق يبقا شفاف
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(
      DevicePreview(enabled: false, builder: (context) => const Ecommerce()));
}

//
