import 'package:coffee_shop/screens/onboarding/onboarding_screen.dart';
import 'package:coffee_shop/utils/app_theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) => CoffeeShop(), enabled: true));
}

class CoffeeShop extends StatelessWidget {
  const CoffeeShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop App',
      debugShowCheckedModeBanner: false,
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      theme: AppTheme.mainTheme,
      home: const OnboardingScreen(),
    );
  }
}
