import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:task/core/enum/base_status.dart';
import 'package:task/core/extension/text_extensions.dart';
import 'package:task/core/theme/colors/app_colors.dart';
import 'package:task/feature/data/models/category_model.dart';
import 'package:task/feature/data/models/product_model.dart';
import 'package:task/feature/presentation/menu/bloc/menu_bloc.dart';
import 'package:task/feature/presentation/widgets/category_dropdown.dart';
import 'package:task/feature/presentation/widgets/custom_filled_button.dart';
import 'package:task/feature/presentation/widgets/custom_outlined_button.dart';

import 'custom_multi_selectable_dropdown.dart';

showCustomAlertDialog({
  required BuildContext context,
  CategoryModel? initialCategory,
  required List<CategoryModel> categories,
  required String title,
  required String description,
  required Axis scrollDirection,
  required Function(bool isChanged) thenFunction,
  required Function(CategoryModel category, List<ProductModel> selectedProducts,
          BuildContext context)
      onPositivePressed,
  required String positiveBtnTitle,
  required String cancelTitle,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return BlocProvider(
        create: (context) => MenuBloc(),
        child: CustomAlertDialogWidget(
          initialCategory: initialCategory ?? categories[0],
          categories: categories,
          title: title,
          description: description,
          scrollDirection: scrollDirection,
          onPositivePressed: onPositivePressed,
          positiveBtnTitle: positiveBtnTitle,
          cancelTitle: cancelTitle,
        ),
      );
    },
  ).then((value) {
    thenFunction(value ?? false);
  });
}

class CustomAlertDialogWidget extends StatefulWidget {
  final CategoryModel initialCategory;
  final List<CategoryModel> categories;
  final String title;
  final String description;
  final Axis scrollDirection;
  final Function(CategoryModel category, List<ProductModel> selectedProducts,
      BuildContext context) onPositivePressed;
  final String positiveBtnTitle;
  final String cancelTitle;

  const CustomAlertDialogWidget({
    Key? key,
    required this.initialCategory,
    required this.categories,
    required this.title,
    required this.description,
    required this.scrollDirection,
    required this.onPositivePressed,
    required this.positiveBtnTitle,
    required this.cancelTitle,
  }) : super(key: key);

  @override
  State<CustomAlertDialogWidget> createState() =>
      _CustomAlertDialogWidgetState();
}

class _CustomAlertDialogWidgetState extends State<CustomAlertDialogWidget> {
  late CategoryModel _selectedCategory;
  List<ProductModel> _selectedProducts = [];

  @override
  void initState() {
    super.initState();
    _selectedCategory = widget.initialCategory;

    // Load products for initial category
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<MenuBloc>()
          .add(MenuEvent.loadProductByCategoryId(_selectedCategory.id));
    });
  }

  @override
  Widget build(BuildContext context) {
    const double horizontalPadding = 24;

    return AlertDialog(
      backgroundColor: context.color.white,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: 32,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          widget.title
              .s(32)
              .c(const Color(0xFF212121))
              .w(600)
              .lh(38.4)
              .ls(0.2)
              .copyWith(textAlign: TextAlign.center),
          const Gap(16),
          widget.description
              .s(16)
              .w(400)
              .c(context.color.black.withValues(alpha: 0.7))
              .lh(19.2)
              .ls(0.03)
              .copyWith(textAlign: TextAlign.center),
          const Gap(24),
          CategoryDropDown(
            items: widget.categories,
            value: _selectedCategory,
            onChanged: (value) {
              setState(() {
                _selectedCategory = value!;
                _selectedProducts =
                    []; // Reset selected products when category changes
              });
              context
                  .read<MenuBloc>()
                  .add(MenuEvent.loadProductByCategoryId(_selectedCategory.id));
            },
          ),
          const Gap(16),
          BlocBuilder<MenuBloc, MenuState>(
            builder: (context, state) {
              if (state.productsByCategoryStatus == BaseStatus.success) {
                return CustomMultiSelectableDropdown<ProductModel>(
                  items: state.products,
                  selectedItems: _selectedProducts,
                  onSelectionChanged: (selected) {
                    setState(() {
                      _selectedProducts = selected;
                    });
                  },
                  displayStringForItem: (item) => item.name,
                  valueStringForItem: (item) => item.name,
                  width: 250,
                );
              }
              if (state.productsByCategoryStatus == BaseStatus.loading) {
                return const SizedBox(
                  height: 40,
                  child: Center(child: CircularProgressIndicator()),
                );
              }
              return const SizedBox.shrink();
            },
          ),
          const Gap(24),
          if (widget.scrollDirection == Axis.horizontal)
            SizedBox(
              height: 54,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: CustomOutlinedButton(
                      isLarge: true,
                      text: widget.cancelTitle,
                      onPressed: () {
                        context.pop();
                      },
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    flex: 1,
                    child: CustomFilledButton(
                      isLarge: true,
                      text: widget.positiveBtnTitle,
                      onPressed: () {
                        widget.onPositivePressed(
                            _selectedCategory, _selectedProducts, context);
                      },
                    ),
                  ),
                ],
              ),
            )
          else ...[
            CustomFilledButton(
              isLarge: true,
              text: widget.positiveBtnTitle,
              onPressed: () {
                widget.onPositivePressed(
                    _selectedCategory, _selectedProducts, context);
              },
            ),
            const Gap(12),
            CustomOutlinedButton(
              isLarge: true,
              text: widget.cancelTitle,
              onPressed: () {
                context.pop();
              },
            ),
          ],
        ],
      ),
    );
  }
}
