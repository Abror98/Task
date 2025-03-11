import 'package:flutter/material.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color primaryColour;
  final Color availableColour;
  final Color labelColour;
  final Color white;
  final Color black;

  const ThemeColors({
    required this.primaryColour,
    required this.availableColour,
    required this.labelColour,
    required this.white,
    required this.black,
  });

  static const light = ThemeColors(
    primaryColour: Colors.red,
    availableColour: Color(0xFF38D975),
    labelColour: Color(0xFF4D4D4D),
    white: Color(0xFFFFFFFF),
    black: Color(0xFF000000),
  );

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? primaryColour,
    Color? availableColour,
    Color? labelColour,
    Color? white,
    Color? black,
  }) {
    return ThemeColors(
      primaryColour: primaryColour ?? this.primaryColour,
      labelColour: labelColour ?? this.labelColour,
      availableColour: availableColour ?? this.availableColour,
      white: white ?? this.white,
      black: black ?? this.black,
    );
  }

  @override
  ThemeExtension<ThemeColors> lerp(
      ThemeExtension<ThemeColors>? other, double t) {
    if (other is! ThemeColors) {
      return this;
    }
    return ThemeColors(
      primaryColour: Color.lerp(primaryColour, other.primaryColour, t)!,
      availableColour: Color.lerp(availableColour, other.availableColour, t)!,
      labelColour: Color.lerp(labelColour, other.labelColour, t)!,
      white: Color.lerp(white, other.white, t)!,
      black: Color.lerp(black, other.black, t)!,
    );
  }
}

extension BuildContextY on BuildContext {
  ThemeColors get color => Theme.of(this).extension<ThemeColors>()!;
}
