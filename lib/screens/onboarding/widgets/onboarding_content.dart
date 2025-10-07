import 'package:coffee_shop/screens/home/home_screen.dart';
import 'package:coffee_shop/screens/onboarding/widgets/onbording_text_section.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const OnboardingTextSection(),
        CustomButton(
          text: 'Get Started',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
        ),
      ],
    );
  }
}
