import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:task/core/theme/colors/app_colors.dart';

class CartListShimmer extends StatelessWidget {
  const CartListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 24.0),
            child: Shimmer.fromColors(
              baseColor: context.color.black.withValues(alpha: 0.1),
              highlightColor: context.color.black.withValues(alpha: 0.2),
              child: Column(
                spacing: 24,
                children: [
                  ListTile(
                    leading: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: context.color.white,
                      ),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 20,
                          width: 140,
                          decoration: BoxDecoration(
                            color: context.color.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          height: 14,
                          width: 100,
                          decoration: BoxDecoration(
                            color: context.color.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        childCount: 10, // Number of shimmer items to show
      ),
    );
  }
}
