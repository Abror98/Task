import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:task/core/local_storage/restaurant_hive.dart';
import 'package:task/feature/data/models/cart_item_model.dart';
import 'package:task/feature/data/models/category_model.dart';
import 'package:task/feature/data/models/order_model.dart';
import 'package:task/feature/data/models/product_model.dart';
import 'package:task/feature/data/models/table_model.dart';

class RestaurantHiveBase {
  late Box<TableModel> _tableBox;
  late Box<CategoryModel> _categoryBox;
  late Box<ProductModel> _productBox;
  late Box<OrderModel> _orderBox;
  late Box<CartItemModel> _cartItemBox;

  Future<void> ensureInitialized() async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      Hive.init(dir.path);

      final adapterTypes = [0, 1, 2, 3, 4, 5, 6, 7];

      for (final typeId in adapterTypes) {
        if (!Hive.isAdapterRegistered(typeId)) {
          switch (typeId) {
            case 0:
              Hive.registerAdapter(TableModelAdapter());
              break;
            case 1:
              Hive.registerAdapter(TableStatusAdapter());
            case 2:
              Hive.registerAdapter(ProductModelAdapter());
              break;
            case 3:
              Hive.registerAdapter(OrderModelAdapter());
              break;
            case 4:
              Hive.registerAdapter(OrderStatusAdapter());
              break;
            case 5:
              Hive.registerAdapter(CategoryModelAdapter());
              break;
            case 6:
              Hive.registerAdapter(CartItemModelAdapter());
              break;
            default:
              print("Unknown adapter type: $typeId");
          }
        }
      }

      // Open all necessary boxes
      _tableBox = await Hive.openBox<TableModel>('tables');
      _categoryBox = await Hive.openBox<CategoryModel>('categories');
      _productBox = await Hive.openBox<ProductModel>('products');
      _orderBox = await Hive.openBox<OrderModel>('orders');
      _cartItemBox = await Hive.openBox<CartItemModel>('cartItems');
    } catch (e) {
      print("Error initializing RestaurantHiveBase: $e");
      rethrow;
    }
  }

  // Getters for each box
  Box<TableModel> get tableBox {
    if (!Hive.isBoxOpen('tables')) {
      throw StateError(
          "RestaurantHiveBase is not initialized. Call `ensureInitialized` first.");
    }
    return _tableBox;
  }

  Box<CategoryModel> get categoryBox {
    if (!Hive.isBoxOpen('categories')) {
      throw StateError(
          "RestaurantHiveBase is not initialized. Call `ensureInitialized` first.");
    }
    return _categoryBox;
  }

  Box<ProductModel> get productBox {
    if (!Hive.isBoxOpen('products')) {
      throw StateError(
          "RestaurantHiveBase is not initialized. Call `ensureInitialized` first.");
    }
    return _productBox;
  }

  Box<OrderModel> get orderBox {
    if (!Hive.isBoxOpen('orders')) {
      throw StateError(
          "RestaurantHiveBase is not initialized. Call `ensureInitialized` first.");
    }
    return _orderBox;
  }

  Box<CartItemModel> get cartItemBox {
    if (!Hive.isBoxOpen('cartItems')) {
      throw StateError(
          "RestaurantHiveBase is not initialized. Call `ensureInitialized` first.");
    }
    return _cartItemBox;
  }

  // Method to get a RestaurantHive instance
  RestaurantHive getRestaurantHive() {
    return RestaurantHive(
      tableBox,
      categoryBox,
      productBox,
      orderBox,
      cartItemBox,
    );
  }

  // Close all boxes
  Future<void> closeBoxes() async {
    if (Hive.isBoxOpen('tables')) await _tableBox.close();
    if (Hive.isBoxOpen('categories')) await _categoryBox.close();
    if (Hive.isBoxOpen('products')) await _productBox.close();
    if (Hive.isBoxOpen('orders')) await _orderBox.close();
    if (Hive.isBoxOpen('cartItems')) await _cartItemBox.close();
  }
}
