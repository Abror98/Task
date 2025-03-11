import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task/core/theme/colors/app_colors.dart';

import '../widgets/custom_divider.dart';
import 'bloc/main_wrapper_bloc.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({
    required this.navigationShell,
    super.key,
  });

  final StatefulNavigationShell navigationShell;

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          width: double.infinity,
          height: double.infinity,
          child: widget.navigationShell,
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CustomDivider(),
          BlocBuilder<MainWrapperBloc, MainWrapperState>(
            builder: (context, state) {
              return Theme(
                data: ThemeData(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
                child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed, // main
                  currentIndex: state.index,
                  backgroundColor: context.color.white,
                  showUnselectedLabels: true,
                  showSelectedLabels: true,
                  selectedItemColor: context.color.primaryColour,
                  unselectedItemColor: const Color(0xFF9E9E9E),
                  selectedLabelStyle: TextStyle(
                      color: context.color.primaryColour,
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      height: 2,
                      letterSpacing: 0.2),
                  unselectedLabelStyle: const TextStyle(
                      color: Color(0xFF9E9E9E),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      height: 2,
                      letterSpacing: 0.2),
                  onTap: (index) {
                    _goBranch(index);
                    context
                        .read<MainWrapperBloc>()
                        .add(MainWrapperEvent.setIndex(index));
                  },
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: 'Table',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.restaurant_menu),
                      label: 'Menu',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.shopping_cart),
                      label: 'Order',
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }
}
