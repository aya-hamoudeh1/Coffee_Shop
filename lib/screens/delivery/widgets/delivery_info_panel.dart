import 'package:flutter/material.dart';
import '../../../utils/app_colors.dart';
import 'delivery_progress_bar.dart';
import 'delivery_status_card.dart';
import 'driver_contact_row.dart';

class DeliveryInfoPanel extends StatelessWidget {
  const DeliveryInfoPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SizedBox(height: 20),

            Center(
              child: Text(
                '10 minutes left',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
              ),
            ),

            const SizedBox(height: 8),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Delivery to',
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(color: AppColors.textGray),
                ),
                Text(
                  ' Jl. Kpg Sutoyo',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppColors.darkBackground,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const DeliveryProgressBar(),

            const SizedBox(height: 20),
            const DeliveryStatusCard(),

            const SizedBox(height: 20),
            const DriverContactRow(),
          ],
        ),
      ),
    );
  }
}
