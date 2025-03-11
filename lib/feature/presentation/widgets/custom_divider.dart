import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1,
      color: const Color(0xFFEEEEEE).withValues(alpha: 0.9333),
    );
  }
}
