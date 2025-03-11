import 'package:flutter/material.dart';
import 'package:task/core/theme/colors/app_colors.dart';
import 'package:task/core/theme/colors/app_gradients.dart';
import 'package:task/core/theme/shape/custom_slider_thump_shape.dart';
import 'package:task/core/theme/shape/custom_slider_track_shape.dart';

final defaultTheme = ThemeData(
  useMaterial3: true,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  fontFamily: 'Gilroy',
  scaffoldBackgroundColor: ThemeColors.light.white,
  buttonTheme: const ButtonThemeData(
    height: 44,
  ),
  extensions: const <ThemeExtension<dynamic>>[
    ThemeColors.light,
    ThemeGradients.light,
  ],
  sliderTheme: SliderThemeData(
    activeTrackColor: ThemeColors.light.primaryColour,
    inactiveTrackColor: ThemeColors.light.white,
    overlayShape: SliderComponentShape.noOverlay,
    trackShape: CustomTrackShape(),
    thumbShape: AppSliderShape(
      thumbRadius: 10,
      thumbColor: ThemeColors.light.primaryColour,
    ),
  ),
  textTheme: TextTheme(
    headlineLarge: TextStyle(
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.bold,
      color: ThemeColors.light.labelColour,
      height: 28.63 / 24,
      fontSize: 24,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.bold,
      color: ThemeColors.light.labelColour,
      fontSize: 18,
    ),
    headlineSmall: TextStyle(
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.bold,
      color: ThemeColors.light.labelColour,
      fontSize: 16,
    ),
    titleLarge: TextStyle(
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.bold,
      color: ThemeColors.light.labelColour,
      fontSize: 18,
    ),
    titleMedium: TextStyle(
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w600,
      color: ThemeColors.light.labelColour,
      fontSize: 16,
    ),
    titleSmall: TextStyle(
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w400,
      color: ThemeColors.light.labelColour,
      fontSize: 14,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.bold,
      color: ThemeColors.light.labelColour,
      fontSize: 16,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w600,
      color: ThemeColors.light.labelColour,
      fontSize: 14,
    ),
    bodySmall: TextStyle(
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w400,
      color: ThemeColors.light.labelColour,
      fontSize: 12,
    ),
    labelLarge: TextStyle(
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.bold,
      color: ThemeColors.light.labelColour,
      fontSize: 12,
    ),
    labelMedium: TextStyle(
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w600,
      color: ThemeColors.light.labelColour,
      fontSize: 12,
    ),
    labelSmall: TextStyle(
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w400,
      color: ThemeColors.light.labelColour,
      fontSize: 10,
    ),
  ),
  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.all(Colors.white),
    trackOutlineColor: WidgetStateProperty.all(Colors.transparent),
    trackColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return const Color(0xFF38D975); // Active track color
      }
      return const Color(0xFFBDBDBD); // Inactive track color
    }),
    overlayColor: WidgetStateProperty.all(Colors.transparent),
  ),
);
