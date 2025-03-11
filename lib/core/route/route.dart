import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task/feature/data/models/order_model.dart';
import 'package:task/feature/presentation/cart/bloc/cart_bloc.dart';
import 'package:task/feature/presentation/cart/order_detail_screen.dart';
import 'package:task/feature/presentation/cart/order_screen.dart';
import 'package:task/feature/presentation/menu/bloc/menu_bloc.dart';
import 'package:task/feature/presentation/menu/screen/menu_screen.dart';
import 'package:task/feature/presentation/table/table/table_bloc.dart';
import 'package:task/feature/presentation/table/table_screen.dart';
import 'package:task/feature/presentation/wrapper/bloc/main_wrapper_bloc.dart';

import '../../feature/presentation/wrapper/main_wrapper.dart';

abstract class AppRoutes {
  static const String table = '/table';
  static const String menu = '/menu';
  static const String order = '/order';
  static const String orderDetail = '/order_detail';
  static const String cart = '/cart';
}

class AppNavigation {
  AppNavigation._();

  static final rootNavigatorKey = GlobalKey<NavigatorState>();
  static final shellNavigatorTable = GlobalKey<NavigatorState>();
  static final shellNavigatorMenu = GlobalKey<NavigatorState>();
  static final shellNavigatorCart = GlobalKey<NavigatorState>();
  static final shellNavigatorOrder = GlobalKey<NavigatorState>();

  static const String initial = AppRoutes.table; // Added missing initial route

  static final GoRouter router = GoRouter(
    initialLocation: initial,
    debugLogDiagnostics: true,
    navigatorKey: rootNavigatorKey,
    routes: [
      GoRoute(
        path: AppRoutes.orderDetail,
        builder: (BuildContext context, GoRouterState state) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => CartBloc(),
              ),
              BlocProvider(
                create: (context) =>
                    MenuBloc()..add(MenuEvent.loadCategories()),
              ),
            ],
            child: OrderDetailScreen(order: state.extra as OrderModel),
          );
        },
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return BlocProvider(
            create: (context) => MainWrapperBloc(),
            child: MainWrapper(
              navigationShell: navigationShell,
            ),
          );
        },
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            navigatorKey: shellNavigatorTable,
            routes: <RouteBase>[
              GoRoute(
                path: AppRoutes.table,
                builder: (BuildContext context, GoRouterState state) {
                  return MultiBlocProvider(
                    providers: [
                      BlocProvider(
                        create: (context) =>
                            TableBloc()..add(TableEvent.loadTables()),
                      ),
                      BlocProvider(
                        create: (context) =>
                            MenuBloc()..add(MenuEvent.loadCategories()),
                      ),
                    ],
                    child: TableScreen(),
                  );
                },
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: shellNavigatorMenu,
            routes: <RouteBase>[
              GoRoute(
                path: AppRoutes.menu,
                builder: (BuildContext context, GoRouterState state) =>
                    BlocProvider(
                  create: (context) => MenuBloc(),
                  child: const MenuScreen(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: shellNavigatorOrder,
            routes: <RouteBase>[
              GoRoute(
                path: AppRoutes.order,
                builder: (BuildContext context, GoRouterState state) =>
                    BlocProvider(
                  create: (context) => CartBloc()..add(CartEvent.loadOrders()),
                  child: const CartScreen(),
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
