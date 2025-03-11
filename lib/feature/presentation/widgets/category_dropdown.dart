import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:task/core/extension/text_extensions.dart';
import 'package:task/core/theme/colors/app_colors.dart';
import 'package:task/feature/data/models/category_model.dart';

import 'custom_divider.dart';

class CategoryDropDown extends StatefulWidget {
  final CategoryModel value;
  final List<CategoryModel> items;
  final Function(CategoryModel?) onChanged;

  const CategoryDropDown({
    super.key,
    required this.items,
    required this.value,
    required this.onChanged,
  });

  @override
  State<CategoryDropDown> createState() => _CategoryDropDownState();
}

class _CategoryDropDownState extends State<CategoryDropDown> {
  CategoryModel? selectedValue;

  void _onItemSelected(CategoryModel? value) {
    setState(() {
      selectedValue = value;
    });
    widget.onChanged(value);
  }

  @override
  void initState() {
    super.initState();
    selectedValue = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.color.white,
        border: Border.all(
          color: context.color.black.withValues(alpha: 0.7),
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<CategoryModel>(
          value: selectedValue,
          isExpanded: true,
          dropdownStyleData: DropdownStyleData(
            offset: Offset(
              0,
              -10,
            ),
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: context.color.white,
              border: Border(
                top: BorderSide(
                    width: 16.0,
                    color: const Color(0xffEEEEEE).withValues(alpha: 0.9333)),
                left: BorderSide(
                    width: 16.0,
                    color: const Color(0xffEEEEEE).withValues(alpha: 0.9333)),
                right: BorderSide(
                    width: 16.0,
                    color: const Color(0xffEEEEEE).withValues(alpha: 0.9333)),
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x00e9e9e9).withValues(alpha: 0.05),
                  blurRadius: 24,
                  offset: const Offset(0, 6),
                  spreadRadius: 0,
                ),
              ],
            ),
          ),
          buttonStyleData: const ButtonStyleData(
            height: 58,
            padding: EdgeInsets.symmetric(horizontal: 20),
          ),
          iconStyleData: IconStyleData(
            icon: const Icon(Icons.keyboard_arrow_down),
            iconEnabledColor: context.color.black,
            iconDisabledColor: context.color.black,
          ),
          items: widget.items.map((CategoryModel item) {
            return DropdownMenuItem(
              value: item,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(17),
                  item.name
                      .s(14)
                      .lh(19.6)
                      .w(400)
                      .ls(0.2)
                      .c(context.color.labelColour),
                  Gap(17),
                  const CustomDivider(),
                ],
              ),
            );
          }).toList(),
          onChanged: (CategoryModel? value) {
            _onItemSelected(value);
          },
          menuItemStyleData: MenuItemStyleData(
            padding: EdgeInsets.zero,
            height: 65,
          ),
          selectedItemBuilder: (BuildContext context) {
            return widget.items.map((CategoryModel item) {
              return item.name
                  .s(14)
                  .lh(19.6)
                  .w(400)
                  .ls(0.2)
                  .c(context.color.labelColour);
            }).toList();
          },
        ),
      ),
    );
  }
}
