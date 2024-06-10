// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../test/test.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: "/", builder: (context, state) => const name()),

  // GoRoute(
  //   path: "/Login",
  //   builder: (context, state) => const Login(),
  // ),

  // NotificationView
]);

void push(context, String path) {
  GoRouter.of(context).push(
    path,
  );
}

// void pushpushReplacement(context, String path) {
//   GoRouter.of(context).pushReplacement(path);
// }

void navigaton(context, Widget path) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => path,
    ),
  );
}
