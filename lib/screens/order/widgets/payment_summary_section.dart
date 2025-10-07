import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class PaymentSummarySection extends StatelessWidget {
  const PaymentSummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Payment Summary',
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Price',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(),
            ),
            Text(
              '\$ 4.53',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Delivery Fee',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(),
            ),
            Row(
              children: [
                Text(
                  '\$ 2.0',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    decoration: TextDecoration.lineThrough,
                    decorationColor: AppColors.darkBackground,
                  ),
                ),
                Text(
                  ' \$ 1.0',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
