import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/app_colors.dart';

class DriverContactRow extends StatelessWidget {
  const DriverContactRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: AssetImage('assets/images/png/driver.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Brooklyn Simmons',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Sora',
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Personal Courier',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppColors.textGray,
                    fontFamily: 'Sora',
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey),
            ),
            child: Center(
              child: SvgPicture.asset(
                'assets/images/svg/phone.svg',
                width: 20,
                height: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
