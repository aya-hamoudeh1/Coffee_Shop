import 'package:flutter/material.dart';

class DeliveryProgressBar extends StatelessWidget {
  final int completedSteps;
  final int totalSteps;

  const DeliveryProgressBar({
    super.key,
    this.completedSteps = 3,
    this.totalSteps = 4,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(totalSteps, (index) {
        return Expanded(
          child: Container(
            height: 4,
            margin: EdgeInsets.symmetric(horizontal: index == 0 ? 0 : 4),
            decoration: BoxDecoration(
              color: index < completedSteps ? Colors.green : Colors.grey,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        );
      }),
    );
  }
}
