import 'package:ecommerce_user/core/theme/colors.dart';
import 'package:flutter/material.dart';

class ApplyCouponButton extends StatelessWidget {
  final Function() onPressed;

  const ApplyCouponButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 2,
        backgroundColor: AppColor.primaryColor,
        foregroundColor: AppColor.lighterGray,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
      child: const Text('Apply'),
    );
  }
}
