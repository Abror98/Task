import 'package:flutter/material.dart';
import 'package:task/core/extension/text_extensions.dart';
import 'package:task/core/theme/colors/app_colors.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isLarge;
  final EdgeInsetsGeometry margin;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final int fontWeight;
  final double fontSize;

  const CustomOutlinedButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.isLarge = false,
      this.height,
      this.fontWeight = 400,
      this.margin = const EdgeInsets.all(0),
      this.padding,
      this.fontSize = 16});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height ?? 56,
      width: isLarge ? double.infinity : null,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: padding ??
              const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          side: BorderSide(color: context.color.black, width: 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          foregroundColor: Colors.black, // Text color
        ),
        onPressed: onPressed,
        child: Center(
            child: text.s(fontSize).w(fontWeight).lh(20).a(TextAlign.center)),
      ),
    );
  }
}
