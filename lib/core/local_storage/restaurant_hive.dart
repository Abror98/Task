import 'package:hive/hive.dart';
import 'package:task/feature/data/models/cart_item_model.dart';
import 'package:task/feature/data/models/category_model.dart';
import 'package:task/feature/data/models/order_model.dart';
import 'package:task/feature/data/models/product_model.dart';
import 'package:task/feature/data/models/table_model.dart';
import 'package:uuid/uuid.dart';

class RestaurantHive {
  final Box<TableModel> _tableBox;
  final Box<CategoryModel> _categoryBox;
  final Box<ProductModel> _productBox;
  final Box<OrderModel> _orderBox;
  final Box<CartItemModel> _cartItemBox;
  final Uuid _uuid = const Uuid();

  RestaurantHive(
    this._tableBox,
    this._categoryBox,
    this._productBox,
    this._orderBox,
    this._cartItemBox,
  );

  // Tables operations
  Future<List<TableModel>> getAllTables() async {
    return _tableBox.values.toList();
  }

  Future<TableModel?> getTableById(String id) async {
    return _tableBox.get(id);
  }

  Future<void> addTable(TableModel table) async {
    await _tableBox.put(table.id, table);
  }

  Future<void> updateTable(TableModel table) async {
    await _tableBox.put(table.id, table);
  }

  Future<void> deleteTable(String id) async {
    await _tableBox.delete(id);
  }

  // Categories operations
  Future<List<CategoryModel>> getAllCategories() async {
    return _categoryBox.values.toList();
  }

  Future<CategoryModel?> getCategoryById(String id) async {
    return _categoryBox.get(id);
  }

  Future<void> addCategory(CategoryModel category) async {
    await _categoryBox.put(category.id, category);
  }

  Future<void> updateCategory(CategoryModel category) async {
    await _categoryBox.put(category.id, category);
  }

  Future<void> deleteCategory(String id) async {
    await _categoryBox.delete(id);
  }

  // Products operations
  Future<List<ProductModel>> getAllProducts() async {
    return _productBox.values.toList();
  }

  Future<List<ProductModel>> getProductsByCategory(String categoryId) async {
    return _productBox.values
        .where((product) => product.categoryId == categoryId)
        .toList();
  }

  Future<ProductModel?> getProductById(String id) async {
    return _productBox.get(id);
  }

  Future<void> addProduct(ProductModel product) async {
    await _productBox.put(product.id, product);
  }

  Future<void> updateProduct(ProductModel product) async {
    await _productBox.put(product.id, product);
  }

  Future<void> deleteProduct(String id) async {
    await _productBox.delete(id);
  }

  // Orders operations
  Future<List<OrderModel>> getAllOrders() async {
    return _orderBox.values.toList();
  }

  Future<OrderModel?> getOrderById(String id) async {
    return _orderBox.get(id);
  }

  Future<List<OrderModel>> getOrdersByTable(String tableId) async {
    return _orderBox.values.where((order) => order.tableId == tableId).toList();
  }

  Future<OrderModel?> getActiveOrderByTable(String tableId) async {
    final orders = _orderBox.values
        .where((order) =>
            order.tableId == tableId && order.status == OrderStatus.active)
        .toList();

    return orders.isNotEmpty ? orders.first : null;
  }

  Future<void> addOrder(OrderModel order) async {
    await _orderBox.put(order.id, order);
  }

  Future<void> updateOrder(OrderModel order) async {
    await _orderBox.put(order.id, order);
  }

  Future<void> deleteOrder(String id) async {
    await _orderBox.delete(id);
  }

  // Cart items operations
  Future<List<CartItemModel>> getCartItemsByOrder(String orderId) async {
    final order = await getOrderById(orderId);
    return order?.items ?? [];
  }

  Future<void> addCartItem(String orderId, CartItemModel item) async {
    final order = await getOrderById(orderId);
    if (order != null) {
      final items = List<CartItemModel>.from(order.items);
      items.add(item);
      await updateOrder(order.copyWith(items: items));
    }
  }

  Future<void> updateCartItem(String orderId, CartItemModel item) async {
    final order = await getOrderById(orderId);
    if (order != null) {
      final items = List<CartItemModel>.from(order.items);
      final index = items.indexWhere((i) => i.id == item.id);
      if (index != -1) {
        items[index] = item;
        await updateOrder(order.copyWith(items: items));
      }
    }
  }

  Future<void> deleteCartItem(String orderId, String itemId) async {
    final order = await getOrderById(orderId);
    if (order != null) {
      final items = List<CartItemModel>.from(order.items);
      items.removeWhere((item) => item.id == itemId);
      await updateOrder(order.copyWith(items: items));
    }
  }

  // Utility method to generate UUID
  String generateId() {
    return _uuid.v4();
  }

  // Populate initial data
  Future<void> populateInitialData() async {
    if (_tableBox.isEmpty) {
      for (var i = 1; i <= 10; i++) {
        final table = TableModel(
          id: _uuid.v4(),
          number: i.toString(),
          status: TableStatus.available,
          capacity: 4,
          activeOrderId: null,
        );
        await addTable(table);
      }
    }

    if (_categoryBox.isEmpty) {
      final categories = [
        CategoryModel(id: _uuid.v4(), name: 'Appetizers'),
        CategoryModel(id: _uuid.v4(), name: 'Main Courses'),
        CategoryModel(id: _uuid.v4(), name: 'Desserts'),
        CategoryModel(id: _uuid.v4(), name: 'Drinks'),
      ];

      for (var category in categories) {
        await addCategory(category);
      }
    }

    if (_productBox.isEmpty) {
      final categories = await getAllCategories();

      final appetizers = [
        ProductModel(
          id: _uuid.v4(),
          name: 'Spring Rolls',
          price: 8.99,
          categoryId: categories[0].id,
          description: 'Crispy vegetable spring rolls',
        ),
        ProductModel(
          id: _uuid.v4(),
          name: 'Garlic Bread',
          price: 5.99,
          categoryId: categories[0].id,
          description: 'Toasted bread with garlic butter',
        ),
      ];

      final mainCourses = [
        ProductModel(
          id: _uuid.v4(),
          name: 'Beef Steak',
          price: 25.99,
          categoryId: categories[1].id,
          description: 'Grilled beef steak with vegetables',
        ),
        ProductModel(
          id: _uuid.v4(),
          name: 'Pasta Carbonara',
          price: 15.99,
          categoryId: categories[1].id,
          description: 'Classic Italian pasta with cream sauce',
        ),
      ];

      final desserts = [
        ProductModel(
          id: _uuid.v4(),
          name: 'Chocolate Cake',
          price: 7.99,
          categoryId: categories[2].id,
          description: 'Rich chocolate cake with cream',
        ),
        ProductModel(
          id: _uuid.v4(),
          name: 'Ice Cream',
          price: 5.99,
          categoryId: categories[2].id,
          description: 'Vanilla ice cream with toppings',
        ),
      ];

      final drinks = [
        ProductModel(
          id: _uuid.v4(),
          name: 'Lemonade',
          price: 3.99,
          categoryId: categories[3].id,
          description: 'Fresh lemonade with mint',
        ),
        ProductModel(
          id: _uuid.v4(),
          name: 'Coffee',
          price: 4.99,
          categoryId: categories[3].id,
          description: 'Freshly brewed coffee',
        ),
      ];

      final allProducts = [
        ...appetizers,
        ...mainCourses,
        ...desserts,
        ...drinks
      ];

      for (var product in allProducts) {
        await addProduct(product);
      }
    }
  }
}
