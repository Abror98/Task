import 'package:flutter/material.dart';
import 'package:task/core/extension/text_extensions.dart';
import 'package:task/core/theme/colors/app_colors.dart';

class CustomFilledButton extends StatelessWidget {
  final Color? backgroundColor;
  final String text;
  final VoidCallback onPressed;
  final bool isLarge;
  final double? height;
  final bool isLoading, isEnabled;
  final EdgeInsets margin;
  final int fontWeight;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? padding;
  final double fontSize;

  const CustomFilledButton(
      {super.key,
      required this.text,
      this.margin = EdgeInsets.zero,
      this.height,
      required this.onPressed,
      this.isEnabled = true,
      this.isLoading = false,
      this.isLarge = false,
      this.fontWeight = 600,
      this.fontSize = 16,
      this.padding,
      this.borderRadius,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 56,
      margin: margin,
      width: isLarge ? double.infinity : null,
      child: TextButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? context.color.primaryColour,
          padding: padding ??
              const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 24,
              ),
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
          foregroundColor: context.color.white,
        ),
        onPressed: onPressed,
        child: Center(
            child: isLoading
                ? SizedBox(
                    height: 24,
                    width: 24,
                    child: CircularProgressIndicator(
                      strokeWidth: 1,
                      color: context.color.black,
                    ),
                  )
                : text
                    .w(fontWeight)
                    .s(fontSize)
                    .lh(20)
                    .c(isEnabled
                        ? context.color.white
                        : context.color.primaryColour)
                    .a(TextAlign.center)),
      ),
    );
  }
}
