import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:task/core/extension/text_extensions.dart';
import 'package:task/core/theme/colors/app_colors.dart';
import 'package:task/feature/presentation/widgets/custom_filled_button.dart';
import 'package:task/feature/presentation/widgets/custom_outlined_button.dart';

showCustomWarningDialog(
    {required BuildContext context,
    required String title,
    required String description,
    required Axis scrollDirection,
    required VoidCallback positiveBtn,
    required String positiveBtnTitle,
    required String cancelTitle}) {
  const double horizontalPadding = 24;

  AlertDialog alert = AlertDialog(
    backgroundColor: context.color.white,
    contentPadding: const EdgeInsets.symmetric(
      horizontal: horizontalPadding,
      vertical: 32,
    ),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        title
            .s(32)
            .c(const Color(0xFF212121))
            .w(600)
            .lh(38.4)
            .ls(0.2)
            .copyWith(textAlign: TextAlign.center),
        const Gap(16),
        description
            .s(16)
            .w(400)
            .c(Colors.grey)
            .lh(19.2)
            .ls(0.03)
            .copyWith(textAlign: TextAlign.center),
        const Gap(24),
        if (scrollDirection == Axis.horizontal)
          SizedBox(
            height: 54,
            child: Row(
              spacing: 12,
              children: [
                Expanded(
                  flex: 1,
                  child: CustomOutlinedButton(
                    isLarge: true,
                    text: cancelTitle,
                    onPressed: () {
                      context.pop();
                    },
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: CustomFilledButton(
                    isLarge: true,
                    text: positiveBtnTitle,
                    onPressed: positiveBtn, // Fixed: Remove the => operator
                  ),
                ),
              ],
            ),
          )
        else ...[
          CustomFilledButton(
            isLarge: true,
            text: positiveBtnTitle,
            onPressed: positiveBtn, // Fixed: Remove the => operator
          ),
          Gap(12),
          CustomOutlinedButton(
            isLarge: true,
            text: cancelTitle,
            onPressed: () {
              context.pop();
            },
          ),
        ],
      ],
    ),
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
