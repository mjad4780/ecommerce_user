import 'package:go_router/go_router.dart';
import '../../future/auth/Login/login_screen.dart';
import '../../future/auth/sign_up/SignUp.dart';
import '../../future/onbording/onbordingScreen.dart';
import '../class/cache_helper.dart';
import '../function/animation_page.dart';
import '../get_it/get_it.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
      path: "/",
      builder: (context, state) =>
          getIt<CacheHelper>().getData(key: 'onbourding') == true
              ? const SignUp()
              : const OnbordingScreen()),
  GoRoute(
      path: "/Login",
      pageBuilder: (context, state) {
        return myCustomtransitionPage(const LoginScreen(), state);
      }),
  GoRoute(
    path: "/SignUp",
    builder: (context, state) => const SignUp(),
  ),
]);
