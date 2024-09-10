import 'package:ecommerce_user/future/auth/forgetpassword/check_email.dart';
import 'package:ecommerce_user/future/home/home.dart';
import 'package:go_router/go_router.dart';
import '../../future/HomePage/home_screan.dart';
import '../../future/auth/Login/login_screen.dart';
import '../../future/auth/forgetpassword/ceck_code.dart';
import '../../future/auth/forgetpassword/repassword.dart';
import '../../future/auth/sign_up/SignUp.dart';
import '../../future/auth/verfyCode/verfy_code.dart';
import '../../future/cart/cart.dart';
import '../../future/onbording/onbordingScreen.dart';
import '../class/cache_helper.dart';
import '../function/animation_page.dart';
import '../get_it/get_it.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: "/", builder: (context, state) => checkNavigate()),
  GoRoute(
      path: "/Login",
      pageBuilder: (context, state) {
        return myCustomtransitionPage(const LoginScreen(), state);
      }),
  GoRoute(
      path: "/SignUp",
      pageBuilder: (context, state) {
        return myCustomtransitionPage(const SignUp(), state);
      }),
  GoRoute(
      path: "/CheckEmail",
      pageBuilder: (context, state) {
        return myCustomtransitionPage(const CheckEmail(), state);
      }),
  GoRoute(
    path: "/VerfyCodeScrean",
    builder: (context, state) => const VerfyCodeScrean(),
  ),
  GoRoute(
      path: "/RepasswordScrean",
      pageBuilder: (context, state) =>
          myCustomtransitionPage(const RepasswordScrean(), state)),
  GoRoute(
      path: "/CheckCodeForgetPassword",
      pageBuilder: (context, state) =>
          myCustomtransitionPage(const CheckCodeForgetPassword(), state)),
  GoRoute(
      path: "/Home",
      pageBuilder: (context, state) =>
          myCustomtransitionPage(const Home(), state)),
  GoRoute(
      path: "/Cart",
      pageBuilder: (context, state) =>
          myCustomtransitionPage(const Cart(), state)),
]);
checkNavigate() {
  if (getIt<CacheHelper>().getData(key: 'email') != null) {
    return const HomeScrean();
  } else if (getIt<CacheHelper>().getData(key: 'onbourding') == true) {
    return const LoginScreen();
  } else {
    return const OnbordingScreen();
  }
}