import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class BootmOnbording extends StatelessWidget {
  const BootmOnbording({
    super.key,
    this.onPressed,
  });

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        FadeInDown(
          delay: const Duration(seconds: 1),
          child: SizedBox(
            child: ElevatedButton(
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(), elevation: 0),
                child: const Row(
                  children: [
                    Text(
                      'Next',
                    ),
                    Icon(Icons.keyboard_arrow_right)
                  ],
                )),
          ),
        )
      ],
    );
  }
}
