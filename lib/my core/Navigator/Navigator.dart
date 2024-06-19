import 'package:go_router/go_router.dart';
import '../../future/auth/Login/login_screen.dart';
import '../../future/auth/sign_up/SignUp.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: "/", builder: (context, state) => const LoginScreen()),

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
