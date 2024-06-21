import 'package:go_router/go_router.dart';
import '../../future/auth/Login/login_screen.dart';
import '../../future/auth/sign_up/SignUp.dart';
import '../../future/onbording/onbordingScreen.dart';
import '../../future/onbording/widget/page_builder.dart';
import '../databases/cache/cache_helper.dart';
import '../get_it/get_it.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
      path: "/",
      builder: (context, state) =>
          getIt<CacheHelper>().getData(key: 'onbourding') == true
              ? const LoginScreen()
              : const OnbordingScreen()),

  GoRoute(
    path: "/Login",
    builder: (context, state) => const LoginScreen(),
  ),

  GoRoute(
    path: "/SignUp",
    builder: (context, state) => const SignUp(),
  ),

  // NotificationView
]);

// void push(context, String path) {
//   GoRouter.of(context).push(
//     path,
//   );
// }

// void pushpushReplacement(context, String path) {
//   GoRouter.of(context).pushReplacement(path);
// }

// void navigaton(context, Widget path) {
//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (context) => path,
//     ),
//   );
// }
