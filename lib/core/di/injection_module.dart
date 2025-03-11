import 'dart:async';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:task/core/di/app_injector.dart';
import 'package:task/core/di/async_app_dependencies.dart';
import 'package:task/core/local_storage/hive_base.dart';
import 'package:task/core/local_storage/restaurant_hive.dart';
import 'package:task/feature/data/models/cart_item_model.dart';
import 'package:task/feature/data/models/category_model.dart';
import 'package:task/feature/data/models/order_model.dart';
import 'package:task/feature/data/models/product_model.dart';
import 'package:task/feature/data/models/table_model.dart';
import 'package:task/feature/data/repository/restaurant_repository_impl.dart';
import 'package:task/feature/domain/repository/restaurant_repository.dart';
import 'package:task/feature/domain/usecase/cart/carts_by_order_usecase.dart';
import 'package:task/feature/domain/usecase/cart/order_total_usecase.dart';
import 'package:task/feature/domain/usecase/cart/remove_cart_item_usecase.dart';
import 'package:task/feature/domain/usecase/cart/update_cart_item_usecase.dart';
import 'package:task/feature/domain/usecase/menu/add_product_to_cart_usecase.dart';
import 'package:task/feature/domain/usecase/menu/category_list_usecase.dart';
import 'package:task/feature/domain/usecase/menu/create_order_usecase.dart';
import 'package:task/feature/domain/usecase/menu/product_list_by_category_usecase.dart';
import 'package:task/feature/domain/usecase/table/table_list_usecase.dart';

import '../module_abstractions/injection.dart';
import 'injector.dart';

class AppInjectionModule implements Injection {
  @override
  FutureOr<void> registerDependencies({required Injector injector}) async {
    // Hive initialization

    await Hive.initFlutter();
    Hive.registerAdapter(CartItemModelAdapter());
    Hive.registerAdapter(CategoryModelAdapter());
    Hive.registerAdapter(OrderModelAdapter());
    Hive.registerAdapter(ProductModelAdapter());
    Hive.registerAdapter(TableModelAdapter());

    final hiveBase = RestaurantHiveBase();
    await hiveBase.ensureInitialized();
    injector.registerSingleton<RestaurantHiveBase>(hiveBase);

    final restaurantHive = RestaurantHive(
      injector.get<RestaurantHiveBase>().tableBox,
      injector.get<RestaurantHiveBase>().categoryBox,
      injector.get<RestaurantHiveBase>().productBox,
      injector.get<RestaurantHiveBase>().orderBox,
      injector.get<RestaurantHiveBase>().cartItemBox,
    );

    injector.registerSingleton<RestaurantHive>(restaurantHive);

    await restaurantHive.populateInitialData();

    injector.registerLazySingleton<RestaurantRepository>(
      () => RestaurantRepositoryImpl(restaurantHive),
    );

    injector.registerLazySingleton(() => ProductListByCategoryUseCase(
        AppInjector.I.get<RestaurantRepository>()));

    injector.registerLazySingleton(
        () => TableListUseCase(AppInjector.I.get<RestaurantRepository>()));

    injector.registerLazySingleton(
        () => CreateOrderUseCase(AppInjector.I.get<RestaurantRepository>()));
    injector.registerLazySingleton(
        () => CategoryListUseCase(AppInjector.I.get<RestaurantRepository>()));

    injector.registerLazySingleton(() =>
        AddProductToCartUseCase(AppInjector.I.get<RestaurantRepository>()));

    injector.registerLazySingleton(() =>
        AddProductToCartUseCase(AppInjector.I.get<RestaurantRepository>()));

    injector.registerLazySingleton(
        () => OrderTotalUseCase(AppInjector.I.get<RestaurantRepository>()));

    injector.registerLazySingleton(
        () => CartsByOrderUseCase(AppInjector.I.get<RestaurantRepository>()));

    injector.registerLazySingleton(
        () => RemoveCartItemUseCase(AppInjector.I.get<RestaurantRepository>()));

    injector.registerLazySingleton(
        () => UpdateCartItemUseCase(AppInjector.I.get<RestaurantRepository>()));
    //AddProductToCartUseCase
    final asyncDependencies = await AsyncAppDependencies.obtain(restaurantHive);
    injector.registerSingleton(asyncDependencies);
  }
}
