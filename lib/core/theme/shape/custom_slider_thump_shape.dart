import 'package:flutter/material.dart';

class AppSliderShape extends SliderComponentShape {
  final double thumbRadius;
  final Color thumbColor;

  const AppSliderShape({
    required this.thumbRadius,
    required this.thumbColor,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    final redPaint = Paint()..color = thumbColor;

    final whitePaint = Paint()..color = Colors.white;

    // Draw the first circle
    canvas.drawCircle(center, thumbRadius, redPaint);

    // Draw the second circle
    canvas.drawCircle(center, 4, whitePaint);
  }
}
