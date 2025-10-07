import 'package:flutter/cupertino.dart';

class CustomAppBarIcon extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;

  const CustomAppBarIcon({super.key, required this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 44,
        height: 44,
        decoration: BoxDecoration(
          color: const Color(0xffEDEDED),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(child: child),
      ),
    );
  }
}
