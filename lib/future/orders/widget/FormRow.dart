import 'package:flutter/material.dart';

class FormRow extends StatelessWidget {
  const FormRow({
    super.key,
    required this.text,
    required this.widget,
  });
  final String text;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          widget,
        ],
      ),
    );
  }
}
