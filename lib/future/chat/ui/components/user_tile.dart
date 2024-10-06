import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  final String text;
  final void Function() onTap;
  const UserTile({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(8)),
        margin: EdgeInsets.symmetric(
            horizontal: width * 0.06, vertical: height * 0.01),
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.04, vertical: height * 0.02),
        child: Row(
          children: [
            const Icon(Icons.person, size: 32, color: Colors.black),
            SizedBox(width: width * 0.025),
            Text(
              text,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
