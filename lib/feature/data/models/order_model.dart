import 'package:hive/hive.dart';
import 'package:task/feature/data/models/cart_item_model.dart';

part 'order_model.g.dart';

@HiveType(typeId: 3)
class OrderModel extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String tableId;

  @HiveField(2)
  final List<CartItemModel> items;

  @HiveField(3)
  final DateTime createdAt;

  @HiveField(4)
  final OrderStatus status;

  OrderModel({
    required this.id,
    required this.tableId,
    required this.items,
    required this.createdAt,
    required this.status,
  });

  OrderModel copyWith({
    String? id,
    String? tableId,
    List<CartItemModel>? items,
    DateTime? createdAt,
    OrderStatus? status,
  }) {
    return OrderModel(
      id: id ?? this.id,
      tableId: tableId ?? this.tableId,
      items: items ?? this.items,
      createdAt: createdAt ?? this.createdAt,
      status: status ?? this.status,
    );
  }

  double get total => items.fold(0, (sum, item) => sum + item.total);
}

@HiveType(typeId: 4)
enum OrderStatus {
  @HiveField(0)
  active,
  @HiveField(1)
  completed,
  @HiveField(2)
  cancelled
}
