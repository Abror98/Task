import 'package:hive/hive.dart';

part 'cart_item_model.g.dart';

@HiveType(typeId: 6)
class CartItemModel extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String productId;

  @HiveField(2)
  final int quantity;

  @HiveField(3)
  final double price;

  @HiveField(4)
  final String? notes;

  @HiveField(5)
  final String productName;

  CartItemModel({
    required this.id,
    required this.productId,
    required this.quantity,
    required this.price,
    required this.productName,
    this.notes,
  });

  CartItemModel copyWith(
      {String? id,
      String? productId,
      int? quantity,
      double? price,
      String? notes,
      String? productName}) {
    return CartItemModel(
        id: id ?? this.id,
        productId: productId ?? this.productId,
        quantity: quantity ?? this.quantity,
        price: price ?? this.price,
        notes: notes ?? this.notes,
        productName: productName ?? this.productName);
  }

  double get total => price * quantity;
}
