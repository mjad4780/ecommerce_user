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
            width: MediaQuery.sizeOf(context).width * 0.29,
            child: ElevatedButton(
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(), elevation: 0),
                child: Row(
                  children: [
                    Text(
                      'Next',
                      style: TextStyle(
                        fontSize: MediaQuery.sizeOf(context).width * 0.05,
                      ),
                    ),
                    const Icon(Icons.keyboard_arrow_right)
                  ],
                )),
          ),
        )
      ],
    );
  }
}
