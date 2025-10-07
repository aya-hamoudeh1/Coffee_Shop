import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class OrderToggleSwitch extends StatelessWidget {
  final bool isDeliverySelected;
  final VoidCallback onDeliveryTap;
  final VoidCallback onPickUpTap;

  const OrderToggleSwitch({
    super.key,
    required this.isDeliverySelected,
    required this.onDeliveryTap,
    required this.onPickUpTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      decoration: BoxDecoration(
        color: AppColors.textSecondary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: onDeliveryTap,
              child: Container(
                decoration: BoxDecoration(
                  color: isDeliverySelected
                      ? AppColors.primaryBrown
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Deliver',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: isDeliverySelected
                          ? AppColors.textPrimary
                          : AppColors.darkBackground,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: onPickUpTap,
              child: Container(
                decoration: BoxDecoration(
                  color: !isDeliverySelected
                      ? AppColors.primaryBrown
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Pick Up',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: !isDeliverySelected
                          ? AppColors.textPrimary
                          : AppColors.darkBackground,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
