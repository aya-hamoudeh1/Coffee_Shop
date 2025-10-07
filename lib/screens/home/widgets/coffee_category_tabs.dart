import 'package:flutter/material.dart';
import '../../../utils/app_colors.dart';

class CoffeeCategoryTabs extends StatefulWidget {
  const CoffeeCategoryTabs({super.key});

  @override
  State<CoffeeCategoryTabs> createState() => _CoffeeCategoryTabsState();
}

class _CoffeeCategoryTabsState extends State<CoffeeCategoryTabs> {
  int selectedIndex = 0;
  final List<String> categories = [
    'Cappuccino',
    'Machiato',
    'Latte',
    'Americano',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final isSelected = selectedIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              margin: const EdgeInsets.only(right: 8),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primaryBrown : Color(0xffEDEDED),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  categories[index],
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: isSelected
                        ? AppColors.textPrimary
                        : AppColors.borderColor,
                    fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
