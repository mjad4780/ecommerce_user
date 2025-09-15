import 'package:flutter/material.dart';

import '../model/modelBottomNavigation.dart';
import 'CostemBottomNavigation.dart';

class CustemAppbarNavigationBottom extends StatefulWidget {
  const CustemAppbarNavigationBottom({super.key, required this.onItemTapped});
  final ValueChanged<int> onItemTapped;

  @override
  State<CustemAppbarNavigationBottom> createState() =>
      _CustemAppbarNavigationBottomState();
}

class _CustemAppbarNavigationBottomState
    extends State<CustemAppbarNavigationBottom> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      padding: const EdgeInsets.all(3.5),
      height: 60,
      shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      surfaceTintColor: Colors.black,
      child: Row(
        children: [
          ...List.generate(5, (index) {
            int i = index > 2 ? index - 1 : index;
            return index == 2
                ? const Spacer()
                : CostemBottomNavigation(
                    iconData: bottomNavigation[i].iconData,
                    text: bottomNavigation[i].title,
                    onPressed: () {
                      setState(() {
                        selectedIndex = i; // ✅ هنا التعديل
                      });
                      widget.onItemTapped(selectedIndex);
                    },
                    active: selectedIndex == i ? true : false);
          })
        ],
      ),
    );
  }
}
