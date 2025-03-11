import 'package:task/core/local_storage/restaurant_hive.dart';
import 'package:task/feature/data/models/cart_item_model.dart';
import 'package:task/feature/data/models/category_model.dart';
import 'package:task/feature/data/models/order_model.dart';
import 'package:task/feature/data/models/product_model.dart';
import 'package:task/feature/data/models/table_model.dart';
import 'package:task/feature/domain/repository/restaurant_repository.dart';

class RestaurantRepositoryImpl implements RestaurantRepository {
  final RestaurantHive _hive;

  RestaurantRepositoryImpl(this._hive);

  @override
  Future<List<TableModel>> getAllTables() {
    return _hive.getAllTables();
  }

  @override
  Future<TableModel?> getTableById(String id) {
    return _hive.getTableById(id);
  }

  @override
  Future<void> updateTableStatus(String id, TableStatus status) async {
    final table = await _hive.getTableById(id);
    if (table != null) {
      await _hive.updateTable(table.copyWith(status: status));
    }
  }

  @override
  Future<void> assignOrderToTable(String tableId, String orderId) async {
    final table = await _hive.getTableById(tableId);
    if (table != null) {
      await _hive.updateTable(table.copyWith(
        status: TableStatus.occupied,
        activeOrderId: orderId,
      ));
    }
  }

  @override
  Future<void> clearTableOrder(String tableId) async {
    final table = await _hive.getTableById(tableId);
    if (table != null) {
      await _hive.updateTable(table.copyWith(
        status: TableStatus.available,
        activeOrderId: null,
      ));
    }
  }

  @override
  Future<List<CategoryModel>> getAllCategories() {
    return _hive.getAllCategories();
  }

  @override
  Future<CategoryModel?> getCategoryById(String id) {
    return _hive.getCategoryById(id);
  }

  @override
  Future<List<ProductModel>> getAllProducts() {
    return _hive.getAllProducts();
  }

  @override
  Future<List<ProductModel>> getProductsByCategory(String categoryId) {
    return _hive.getProductsByCategory(categoryId);
  }

  @override
  Future<ProductModel?> getProductById(String id) {
    return _hive.getProductById(id);
  }

  @override
  Future<OrderModel?> getActiveOrderByTable(String tableId) {
    return _hive.getActiveOrderByTable(tableId);
  }

  @override
  Future<OrderModel> createOrder(String tableId) async {
    final order = OrderModel(
      id: _hive.generateId(),
      tableId: tableId,
      items: [],
      createdAt: DateTime.now(),
      status: OrderStatus.active,
    );

    await _hive.addOrder(order);
    await assignOrderToTable(tableId, order.id);

    return order;
  }

  @override
  Future<void> updateOrderStatus(String orderId, OrderStatus status) async {
    final order = await _hive.getOrderById(orderId);
    if (order != null) {
      final updatedOrder = order.copyWith(status: status);
      await _hive.updateOrder(updatedOrder);

      if (status != OrderStatus.active) {
        await clearTableOrder(order.tableId);
      }
    }
  }

  @override
  Future<List<CartItemModel>> getCartItemsByOrder(String orderId) {
    return _hive.getCartItemsByOrder(orderId);
  }

  @override
  Future<void> addProductToCart(String orderId, String productId, int quantity,
      String productName) async {
    final product = await _hive.getProductById(productId);
    if (product != null) {
      final cartItem = CartItemModel(
        productName: productName,
        id: _hive.generateId(),
        productId: productId,
        quantity: quantity,
        price: product.price,
      );

      await _hive.addCartItem(orderId, cartItem);
    }
  }

  @override
  Future<void> updateCartItemQuantity(
      String orderId, String itemId, int quantity) async {
    final order = await _hive.getOrderById(orderId);
    if (order != null) {
      final items = order.items;
      final itemIndex = items.indexWhere((item) => item.id == itemId);

      if (itemIndex != -1) {
        final item = items[itemIndex];
        final updatedItem = item.copyWith(quantity: quantity);

        await _hive.updateCartItem(orderId, updatedItem);
      }
    }
  }

  @override
  Future<void> removeCartItem(String orderId, String itemId) {
    return _hive.deleteCartItem(orderId, itemId);
  }

  @override
  Future<List<OrderModel>> getOrderTotal() async {
    final list = await _hive.getAllOrders();
    return list;
  }
}
