import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  ThemeData get theme => Theme.of(this);

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  Size get authAppBarSize => Size(AppBar().preferredSize.width, 100);

  Size get size => mediaQuery.size;

  double get width => size.width;

  double get height => size.height;
}
