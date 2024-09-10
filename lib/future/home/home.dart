import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

import 'widget/page_wrapper.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}









// class Home2 extends StatefulWidget {
//   const Home2({super.key});

//   static const List<Widget> screens = [
//     // ProductListScreen(),
//     // FavoriteScreen(),
//     // CartScreen(),
//     // ProfileScreen()
//   ];

//   @override
//   State<Home> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<Home> {
//   int newIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return PageWrapper(
//       child: Scaffold(
//         bottomNavigationBar: BottomNavyBar(
//           itemCornerRadius: 10,
//           selectedIndex: newIndex,
//           items: AppData.bottomNavyBarItems
//               .map(
//                 (item) => BottomNavyBarItem(
//                   icon: item.icon,
//                   title: Text(item.title),
//                   activeColor: item.activeColor,
//                   inactiveColor: item.inActiveColor,
//                 ),
//               )
//               .toList(),
//           onItemSelected: (currentIndex) {
//             newIndex = currentIndex;
//             setState(() {});
//           },
//         ),
//         body: PageTransitionSwitcher(
//           duration: const Duration(seconds: 1),
//           transitionBuilder: (
//             Widget child,
//             Animation<double> animation,
//             Animation<double> secondaryAnimation,
//           ) {
//             return FadeThroughTransition(
//               animation: animation,
//               secondaryAnimation: secondaryAnimation,
//               child: child,
//             );
//           },
//           child: Home.screens[newIndex],
//         ),
//       ),
//     );
//   }
// }
