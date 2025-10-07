import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/app_colors.dart';

class BottomNavItem extends StatelessWidget {
  final String iconPath;
  final int index;
  final int selectedIndex;
  final VoidCallback onTap;

  const BottomNavItem({
    super.key,
    required this.iconPath,
    required this.index,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = selectedIndex == index;
    final iconColor = isSelected ? AppColors.primaryBrown : Colors.grey;

    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16,end: 16,bottom: 8),
            child: SvgPicture.asset(
              iconPath,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
            ),
          ),
          if (isSelected)
            Container(
              height: 5,
              width: 10,
              decoration: BoxDecoration(
                color: AppColors.primaryBrown,
                borderRadius: BorderRadius.circular(18),
              ),
            ),
        ],
      ),
    );
  }
}
