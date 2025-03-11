import 'package:flutter/material.dart';

class ThemeGradients extends ThemeExtension<ThemeGradients> {
  final LinearGradient cardPurpleGradient;
  final LinearGradient cardBlueGradient;
  final LinearGradient cardRedGradient;

  const ThemeGradients({
    required this.cardPurpleGradient,
    required this.cardBlueGradient,
    required this.cardRedGradient,
  });

  static const light = ThemeGradients(
    cardPurpleGradient: LinearGradient(
      colors: [
        Color(0xFF392D69),
        Color(0xFF58418A),
        Color(0xFF7754AC),
        Color(0xFF9668CD),
        Color(0xFFB57BEE),
      ],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ),
    cardBlueGradient: LinearGradient(
      colors: [
        Color(0xFF0974F1),
        Color(0xFF2F8AF3),
        Color(0xFF54A0F6),
        Color(0xFF7AB6F8),
        Color(0xFF9FCCFA),
      ],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ),
    cardRedGradient: LinearGradient(
      colors: [
        Color(0xFF280537),
        Color(0xFF56034C),
        Color(0xFF890058),
        Color(0xFFBC005B),
        Color(0xFFEB1254),
      ],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ),
  );

  @override
  ThemeExtension<ThemeGradients> copyWith({
    LinearGradient? cardPurpleGradient,
    LinearGradient? cardBlueGradient,
    LinearGradient? cardRedGradient,
  }) {
    return ThemeGradients(
      cardPurpleGradient: cardPurpleGradient ?? this.cardPurpleGradient,
      cardBlueGradient: cardBlueGradient ?? this.cardBlueGradient,
      cardRedGradient: cardRedGradient ?? this.cardRedGradient,
    );
  }

  @override
  ThemeExtension<ThemeGradients> lerp(ThemeExtension<ThemeGradients>? other, double t) {
    if (other is! ThemeGradients) {
      return this;
    }
    return ThemeGradients(
      cardPurpleGradient: LinearGradient.lerp(
        cardPurpleGradient,
        other.cardPurpleGradient,
        t,
      )!,
      cardBlueGradient: LinearGradient.lerp(
        cardBlueGradient,
        other.cardBlueGradient,
        t,
      )!,
      cardRedGradient: LinearGradient.lerp(
        cardRedGradient,
        other.cardRedGradient,
        t,
      )!,
    );
  }
}

extension BuildContextZ on BuildContext {
  ThemeGradients get gradients => Theme.of(this).extension<ThemeGradients>()!;
}
