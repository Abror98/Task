import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task/core/enum/base_status.dart';
import 'package:task/core/extension/text_extensions.dart';
import 'package:task/core/route/route.dart';
import 'package:task/feature/presentation/cart/bloc/cart_bloc.dart';
import 'package:task/feature/presentation/cart/part/cart_list_shimmer.dart';
import 'package:task/feature/presentation/widgets/custom_silver_appbar.dart';
import 'package:task/feature/presentation/widgets/order_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomSilverAppbar(
          title: 'Orders',
        ),
        SliverPadding(
          padding: const EdgeInsets.only(top: 16),
          sliver: BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              if (state.ordersStatus == BaseStatus.loading) {
                return CartListShimmer();
              }
              if (state.ordersStatus == BaseStatus.success) {
                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return Padding(
                          padding: EdgeInsets.only(bottom: 16),
                          child: GestureDetector(
                              onTap: () {
                                context.push(AppRoutes.orderDetail,
                                    extra: state.orders[index]);
                              },
                              child: OrderItem(model: state.orders[index])));
                    },
                    childCount: state.orders.length,
                  ),
                );
              }
              return SliverToBoxAdapter(
                  child: Center(child: state.error.s(16)));
            },
          ),
        ),
      ],
    );
  }
}
