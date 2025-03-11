import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:task/core/extension/text_extensions.dart';
import 'package:task/core/theme/colors/app_colors.dart';
import 'package:task/feature/data/models/order_model.dart';

class OrderItem extends StatelessWidget {
  final OrderModel model;

  OrderItem({
    super.key,
    required this.model,
  });

  final DateFormat fullFormatter = DateFormat('yyyy-MM-dd HH:mm:ss');

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.1),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 8,
        children: [
          Column(
            spacing: 8,
            children: [
              'Product count: ${model.items.length}'.s(16).w(700),
              fullFormatter.format(model.createdAt).s(12).c(Colors.grey)
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: model.status == OrderStatus.active
                    ? context.color.availableColour
                    : context.color.primaryColour,
                borderRadius: BorderRadius.circular(8),
              ),
              child: model.status.name.s(18).c(context.color.white).w(400),
            ),
          ),
        ],
      ),
    );
  }
}
