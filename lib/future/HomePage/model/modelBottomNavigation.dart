import 'package:flutter/material.dart';

class BottomNavigation {
  final String title;
  final IconData iconData;

  BottomNavigation({required this.title, required this.iconData});
}

List<BottomNavigation> bottomNavigation = [
  BottomNavigation(
    iconData: Icons.home,
    title: 'home ',
  ),
  BottomNavigation(
    iconData: Icons.favorite,
    title: 'Favorite',
  ),
  BottomNavigation(
    iconData: Icons.book,
    title: 'Book',
  ),
  BottomNavigation(
    iconData: Icons.settings,
    title: 'Setting',
  ),
];
