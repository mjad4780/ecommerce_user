import 'package:flutter/material.dart';

import '../../../core/theming/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool first = true;
  double fontsize = 20;
  Color color = AppColor.textColor1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: AppColor.lightGrey,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: size.width,
                height: size.height * 0.53,
              ),
            ),
            Center(
              child: GestureDetector(
                  onTap: () async {
                    // context.read<TestCubit>().emitLoginStates();

                    // context.read<TestCubit>().emitHomeStates();

                    // setState(() {
                    //   fontsize = first ? 35 : 20;
                    //   color = first ? Colors.red : AppColor.textColor1;
                    //   first = !first;
                    // });
                    // Future.delayed(
                    //   const Duration(
                    //     milliseconds: 1000,
                    //   ),
                    //   () => Navigation(context).push('/SignUp'),
                    // );
                  },
                  child: AnimatedDefaultTextStyle(
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: color,
                          fontSize: fontsize),
                      duration: const Duration(seconds: 1),
                      child: const Text(
                        'Sign In',
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
