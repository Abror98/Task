import 'package:flutter/material.dart';
import 'package:task/core/extension/text_extensions.dart';
import 'package:task/core/theme/colors/app_colors.dart';

class CustomSilverAppbar extends StatelessWidget {
  const CustomSilverAppbar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0,
      titleSpacing: 0,
      title: title.s(24).lh(28.8).w(700),
      backgroundColor: context.color.white,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          color: context.color.white,
        ),
      ),
    );
  }
}
