import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:task/core/enum/base_status.dart';
import 'package:task/core/extension/context_extension.dart';
import 'package:task/core/extension/text_extensions.dart';
import 'package:task/core/theme/colors/app_colors.dart';
import 'package:task/feature/data/models/category_model.dart';
import 'package:task/feature/data/models/table_model.dart';
import 'package:task/feature/presentation/menu/bloc/menu_bloc.dart';
import 'package:task/feature/presentation/table/table/table_bloc.dart';
import 'package:task/feature/presentation/widgets/custom_alert_dialog.dart';
import 'package:task/feature/presentation/widgets/custom_silver_appbar.dart';

class TableScreen extends StatefulWidget {
  const TableScreen({super.key});

  @override
  State<TableScreen> createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  List<CategoryModel> _categories = [];

  @override
  Widget build(BuildContext context) {
    return BlocListener<MenuBloc, MenuState>(
      listener: (context, state) {
        if (state.categoriesStatus == BaseStatus.success) {
          _categories = state.categories;
        }
      },
      child: CustomScrollView(
        slivers: [
          CustomSilverAppbar(
            title: 'Tables layout',
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 16),
            sliver: BlocBuilder<TableBloc, TableState>(
              builder: (context, state) {
                if (state.tablesStatus == BaseStatus.loading) {
                  return SliverGrid(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      childAspectRatio: 1.0,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Shimmer.fromColors(
                          baseColor: Colors.grey[300]!,
                          highlightColor: Colors.grey[100]!,
                          child: Container(
                            height: 0.25 * context.width,
                            width: 0.25 * context.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        );
                      },
                      childCount: 20,
                    ),
                  );
                }
                if (state.tablesStatus == BaseStatus.success) {
                  return SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      childAspectRatio: 1.0,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            if (state.tables[index].status ==
                                TableStatus.available) {
                              showCustomAlertDialog(
                                  thenFunction: (value) {
                                    context
                                        .read<TableBloc>()
                                        .add(TableEvent.loadTables());
                                  },
                                  categories: _categories,
                                  initialCategory: _categories[0],
                                  context: context,
                                  title: 'Order',
                                  description:
                                      'order a food from the best menu',
                                  scrollDirection: Axis.horizontal,
                                  onPositivePressed: (category, products, ctx) {
                                    context.read<MenuBloc>().add(
                                        MenuEvent.createOrder(
                                            state.tables[index].id, products));
                                    Navigator.pop(ctx, true);
                                  },
                                  positiveBtnTitle: 'Save',
                                  cancelTitle: 'Cancel');
                            }
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: state.tables[index].status ==
                                      TableStatus.available
                                  ? context.color.availableColour
                                  : context.color.primaryColour
                                      .withValues(alpha: 0.7),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              spacing: 8,
                              children: [
                                ('Table ${state.tables[index].number}').s(16),
                                (state.tables[index].status ==
                                            TableStatus.available
                                        ? 'available'
                                        : 'occupied')
                                    .s(14)
                                    .c(context.color.white)
                              ],
                            ),
                          ),
                        );
                      },
                      childCount: state.tables.length,
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
    );
  }
}
