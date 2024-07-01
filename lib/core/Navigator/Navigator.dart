import 'package:ecommerce_user/future/auth/forgetpassword/data/ForgetPassword.dart';
import 'package:ecommerce_user/future/auth/forgetpassword/forget_password.dart';
import 'package:ecommerce_user/future/auth/verfyCode/logic/cubit/verfy_code_cubit.dart';
import 'package:go_router/go_router.dart';
import '../../future/auth/Login/login_screen.dart';
import '../../future/auth/sign_up/SignUp.dart';
import '../../future/auth/verfyCode/verfy_code.dart';
import '../../future/onbording/onbordingScreen.dart';
import '../class/cache_helper.dart';
import '../function/animation_page.dart';
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
      pageBuilder: (context, state) {
        return myCustomtransitionPage(const LoginScreen(), state);
      }),
  GoRoute(
    path: "/SignUp",
    builder: (context, state) => const SignUp(),
  ),
  GoRoute(
      path: "/ForgetPasswordScrean",
      pageBuilder: (context, state) {
        return myCustomtransitionPage(const ForgetPasswordScrean(), state);
      }),
  GoRoute(
    path: "/VerfyCodeScrean",
    builder: (context, state) => const VerfyCodeScrean(),
  ),
]);
