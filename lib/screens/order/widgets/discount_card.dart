import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/app_colors.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/images/svg/discount.svg',
            width: 20,
            height: 20,
            colorFilter: const ColorFilter.mode(
              AppColors.primaryBrown,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(width: 12),
          Text(
            '1 Discount is Applies',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            color: AppColors.darkBackground,
            size: 16,
          ),
        ],
      ),
    );
  }
}
