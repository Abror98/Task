import 'package:flutter/material.dart';
import 'package:task/core/theme/theme_data.dart';

enum LightThemes {
  defaultTheme,
}

enum DarkThemes {
  defaultTheme,
}

Map<LightThemes, ThemeData> lightThemes = {
  LightThemes.defaultTheme: defaultTheme,
};

Map<DarkThemes, ThemeData> darkThemes = {
  DarkThemes.defaultTheme: defaultTheme,
};
