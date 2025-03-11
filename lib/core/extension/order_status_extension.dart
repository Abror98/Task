import 'package:task/feature/data/models/order_model.dart';

extension OrderStatusExtension on OrderStatus {
  String get name {
    return toString().split('.').last;
  }
}
