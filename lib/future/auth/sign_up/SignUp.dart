import 'package:ecommerce_user/core/extensions/extention_navigator.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GestureDetector(
        child: const Text('data'),
        onTap: () => Navigation(context).push('/Login'),
      )),
    );
  }
}
