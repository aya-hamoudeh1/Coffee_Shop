import 'package:flutter/material.dart';
import 'bottom_nav_item.dart';

class BottomNavBar extends StatefulWidget {
  final ValueChanged<int>? onIndexChanged;
  const BottomNavBar({super.key, this.onIndexChanged});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavItem(
            iconPath: 'assets/images/svg/Home.svg',
            index: 0,
            selectedIndex: selectedIndex,
            onTap: () {
              setState(() => selectedIndex = 0);
              widget.onIndexChanged?.call(0);
            },
          ),
          BottomNavItem(
            iconPath: 'assets/images/svg/Heart.svg',
            index: 1,
            selectedIndex: selectedIndex,
            onTap: () {
              setState(() => selectedIndex = 1);
              widget.onIndexChanged?.call(1);
            },
          ),
          BottomNavItem(
            iconPath: 'assets/images/svg/Bag.svg',
            index: 2,
            selectedIndex: selectedIndex,
            onTap: () {
              setState(() => selectedIndex = 2);
              widget.onIndexChanged?.call(2);
            },
          ),
          BottomNavItem(
            iconPath: 'assets/images/svg/Notification.svg',
            index: 3,
            selectedIndex: selectedIndex,
            onTap: () {
              setState(() => selectedIndex = 3);
              widget.onIndexChanged?.call(3);
            },
          ),
        ],
      ),
    );
  }
}
