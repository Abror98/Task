import 'package:task/feature/data/models/cart_item_model.dart';
import 'package:task/feature/data/models/category_model.dart';
import 'package:task/feature/data/models/order_model.dart';
import 'package:task/feature/data/models/product_model.dart';
import 'package:task/feature/data/models/table_model.dart';

abstract class RestaurantRepository {
  // Tables
  Future<List<TableModel>> getAllTables();
  Future<TableModel?> getTableById(String id);
  Future<void> updateTableStatus(String id, TableStatus status);
  Future<void> assignOrderToTable(String tableId, String orderId);
  Future<void> clearTableOrder(String tableId);

  // Categories
  Future<List<CategoryModel>> getAllCategories();
  Future<CategoryModel?> getCategoryById(String id);

  // Products
  Future<List<ProductModel>> getAllProducts();
  Future<List<ProductModel>> getProductsByCategory(String categoryId);
  Future<ProductModel?> getProductById(String id);

  // Orders
  Future<OrderModel?> getActiveOrderByTable(String tableId);
  Future<OrderModel> createOrder(String tableId);
  Future<void> updateOrderStatus(String orderId, OrderStatus status);

  // Cart items
  Future<List<CartItemModel>> getCartItemsByOrder(String orderId);
  Future<void> addProductToCart(
      String orderId, String productId, int quantity, String productName);
  Future<void> updateCartItemQuantity(
      String orderId, String itemId, int quantity);
  Future<void> removeCartItem(String orderId, String itemId);
  Future<List<OrderModel>> getOrderTotal();
}
