import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class OnboardingImageSection extends StatelessWidget {
  const OnboardingImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/png/onboarding.png',
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.darkBackground,
                  Colors.transparent,
                  Colors.transparent,
                  Colors.black54,
                  AppColors.darkBackground,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0.0, 0.4, 0.6, 0.8, 1.0],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
