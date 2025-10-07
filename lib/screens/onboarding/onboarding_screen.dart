import 'package:coffee_shop/screens/onboarding/widgets/onboarding_content.dart';
import 'package:coffee_shop/screens/onboarding/widgets/onboarding_image_section.dart';
import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: Column(
        children: [
          Expanded(flex: 3, child: const OnboardingImageSection()),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: size.height * 0.08,
                left: 24,
                right: 24,
              ),
              child: const OnboardingContent(),
            ),
          ),
        ],
      ),
    );
  }
}
