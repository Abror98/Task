import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class CustomMultiSelectableDropdown<T> extends StatefulWidget {
  final List<T> items;
  final List<T> selectedItems;
  final String hintText;
  final double width;
  final double height;
  final Function(List<T>) onSelectionChanged;
  final String Function(T) displayStringForItem;
  final String Function(T) valueStringForItem;

  const CustomMultiSelectableDropdown({
    super.key,
    required this.items,
    required this.selectedItems,
    required this.onSelectionChanged,
    required this.displayStringForItem,
    required this.valueStringForItem,
    this.hintText = 'Select Items',
    this.width = 200,
    this.height = 40,
  });

  @override
  State<CustomMultiSelectableDropdown<T>> createState() =>
      _MultiSelectableDropdownState<T>();
}

class _MultiSelectableDropdownState<T>
    extends State<CustomMultiSelectableDropdown<T>> {
  late List<T> _selectedItems;

  @override
  void initState() {
    super.initState();
    _selectedItems = List.from(widget.selectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<T>(
        isExpanded: true,
        hint: Text(
          widget.hintText,
          style: TextStyle(
            fontSize: 14,
            color: Theme.of(context).hintColor,
          ),
        ),
        items: widget.items.map((item) {
          return DropdownMenuItem(
            value: item,
            // Disable default onTap to avoid closing menu when selecting an item
            enabled: false,
            child: StatefulBuilder(
              builder: (context, menuSetState) {
                final isSelected = _selectedItems.contains(item);
                return InkWell(
                  onTap: () {
                    if (isSelected) {
                      _selectedItems.remove(item);
                    } else {
                      _selectedItems.add(item);
                    }
                    // This rebuilds the StatefulWidget to update the button's text
                    setState(() {});
                    // This rebuilds the dropdownMenu Widget to update the check mark
                    menuSetState(() {});
                    // Notify parent widget
                    widget.onSelectionChanged(_selectedItems);
                  },
                  child: Container(
                    height: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        if (isSelected)
                          const Icon(Icons.check_box_outlined)
                        else
                          const Icon(Icons.check_box_outline_blank),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Text(
                            widget.displayStringForItem(item),
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        }).toList(),
        // Use last selected item as the current value so if we've limited menu height, it will scroll to last item
        value: _selectedItems.isEmpty ? null : _selectedItems.last,
        onChanged: (value) {},
        selectedItemBuilder: (context) {
          return widget.items.map(
            (item) {
              return Container(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  _selectedItems.isEmpty
                      ? widget.hintText
                      : _selectedItems
                          .map((e) => widget.displayStringForItem(e))
                          .join(', '),
                  style: const TextStyle(
                    fontSize: 14,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 1,
                ),
              );
            },
          ).toList();
        },
        buttonStyleData: ButtonStyleData(
          padding: const EdgeInsets.only(left: 16, right: 8),
          height: widget.height,
          width: widget.width,
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 40,
          padding: EdgeInsets.zero,
        ),
      ),
    );
  }
}
