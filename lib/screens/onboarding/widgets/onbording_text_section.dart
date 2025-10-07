import 'package:flutter/cupertino.dart';

import '../../../utils/app_colors.dart';

class OnboardingTextSection extends StatelessWidget {
  const OnboardingTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Fall in Love with\n Coffee in Blissful\n Delight!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
            height: 1.2,
          ),
        ),

        const SizedBox(height: 8),

        Text(
          'Welcome to our cozy coffee corner, where\n every cup is a delightful for you.',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.textPrimary,
          ),
        ),

        const SizedBox(height: 32),
      ],
    );
  }
}
