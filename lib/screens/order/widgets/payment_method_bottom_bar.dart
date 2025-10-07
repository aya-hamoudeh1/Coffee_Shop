import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/app_colors.dart';

class PaymentMethodBottomBar extends StatelessWidget {
  const PaymentMethodBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/images/svg/wallet.svg',
            width: 20,
            height: 20,
            colorFilter: const ColorFilter.mode(
              AppColors.primaryBrown,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Cash/Wallet',
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 4),
                Text(
                  '\$ 5.53',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.primaryBrown,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SvgPicture.asset(
            'assets/images/svg/arrow_down.svg',
            colorFilter: const ColorFilter.mode(
              AppColors.darkBackground,
              BlendMode.srcIn,
            ),
          ),
        ],
      ),
    );
  }
}
