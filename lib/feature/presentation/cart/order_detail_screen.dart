import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task/core/enum/base_status.dart';
import 'package:task/core/extension/text_extensions.dart';
import 'package:task/core/theme/colors/app_colors.dart';
import 'package:task/feature/data/models/category_model.dart';
import 'package:task/feature/data/models/order_model.dart';
import 'package:task/feature/domain/usecase/cart/update_cart_item_usecase.dart';
import 'package:task/feature/presentation/menu/bloc/menu_bloc.dart';
import 'package:task/feature/presentation/widgets/custom_alert_dialog.dart';
import 'package:task/feature/presentation/widgets/custom_divider.dart';
import 'package:task/feature/presentation/widgets/custom_filled_button.dart';
import 'package:task/feature/presentation/widgets/custom_outlined_button.dart';
import 'package:task/feature/presentation/widgets/custom_warning_dialog.dart';

import 'bloc/cart_bloc.dart';
import 'part/cart_list_shimmer.dart';

class OrderDetailScreen extends StatefulWidget {
  const OrderDetailScreen({required this.order, super.key});

  final OrderModel order;

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  List<CategoryModel> _categories = [];

  @override
  void initState() {
    super.initState();
    context.read<CartBloc>().add(CartEvent.loadCartsByOrder(widget.order.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<MenuBloc, MenuState>(
        listener: (context, state) {
          if (state.categoriesStatus == BaseStatus.success) {
            _categories = state.categories;
          }
        },
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 0,
              titleSpacing: 0,
              title: 'Order Detail'.s(24).lh(28.8).w(700),
              backgroundColor: context.color.white,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: context.color.white,
                ),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      showCustomAlertDialog(
                          thenFunction: (value) {
                            if (value) {
                              context.read<CartBloc>().add(
                                  CartEvent.loadCartsByOrder(widget.order.id));
                            }
                          },
                          categories: _categories,
                          initialCategory: _categories[0],
                          context: context,
                          title: 'Add Cart',
                          description: 'order a food from the best menu',
                          scrollDirection: Axis.horizontal,
                          onPositivePressed: (category, products, ctx) {
                            context.read<MenuBloc>().add(
                                MenuEvent.addCartToOrder(
                                    widget.order.id, products));
                            Navigator.pop(ctx, true);
                          },
                          positiveBtnTitle: 'Save',
                          cancelTitle: 'Cancel');
                    },
                    icon: Icon(Icons.add))
              ],
            ),
            SliverPadding(
              padding: const EdgeInsets.only(top: 16),
              sliver: BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  if (state.cartStatus == BaseStatus.loading) {
                    return CartListShimmer();
                  }
                  if (state.cartStatus == BaseStatus.success) {
                    return SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      spacing: 8,
                                      children: [
                                        state.carts[index].productName.s(16),
                                        state.carts[index].quantity
                                            .toString()
                                            .s(16),
                                        state.carts[index].price
                                            .toString()
                                            .s(16),
                                        ('Total: ${state.carts[index].total}')
                                            .toString()
                                            .s(16),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      spacing: 8,
                                      children: [
                                        CustomOutlinedButton(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 8),
                                            height: 36,
                                            fontSize: 10,
                                            text: 'Update',
                                            onPressed: () {
                                              _updateDialog(
                                                  context, state, index);
                                            }),
                                        CustomFilledButton(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 8),
                                            height: 36,
                                            fontSize: 10,
                                            text: 'Remove',
                                            onPressed: () {
                                              showCustomWarningDialog(
                                                  context: context,
                                                  title: 'Remove Cart Item',
                                                  description:
                                                      'Really wants to remove it',
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  positiveBtn: () {
                                                    context.pop(context);
                                                    context
                                                        .read<CartBloc>()
                                                        .add(CartEvent
                                                            .removeCartItem(
                                                                widget.order.id,
                                                                state
                                                                    .carts[
                                                                        index]
                                                                    .id));
                                                  },
                                                  positiveBtnTitle: 'Yes',
                                                  cancelTitle: 'No');
                                            }),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              // Add divider after each item except the last one
                              if (index < state.carts.length - 1)
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: const CustomDivider(),
                                ),
                            ],
                          );
                        },
                        childCount: state.carts.length,
                      ),
                    );
                  }
                  return SliverToBoxAdapter(
                      child: Center(child: state.error.s(16)));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _updateDialog(BuildContext ctx, CartState state, int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        TextEditingController textController = TextEditingController();
        int initialQuantity = state.carts[index].quantity;
        return AlertDialog(
          backgroundColor: context.color.white,
          content: BlocProvider(
            create: (context) => MenuBloc(),
            child: Material(
              color: context.color.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 16,
                children: [
                  TextField(
                    controller: textController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.withValues(alpha: 0.05),
                      hintText: initialQuantity.toString(),
                      hintStyle: TextStyle(color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 48,
                    child: Row(
                      spacing: 16,
                      children: [
                        Expanded(
                          flex: 1,
                          child: CustomOutlinedButton(
                              fontSize: 14,
                              text: 'Cancel',
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                        ),
                        Expanded(
                          flex: 1,
                          child: CustomFilledButton(
                              isLarge: true,
                              fontSize: 14,
                              text: 'Save',
                              onPressed: () {
                                context.pop(context);
                                if (textController.text.isNotEmpty &&
                                    initialQuantity !=
                                        int.parse(textController.text)) {
                                  ctx.read<CartBloc>().add(
                                      CartEvent.updateCartItem(
                                          UpdateCartItemParams(
                                              widget.order.id,
                                              state.carts[index].id,
                                              int.parse(textController.text))));
                                }
                              }),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
