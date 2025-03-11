import 'package:task/core/usecase/usecase.dart';
import 'package:task/feature/data/models/cart_item_model.dart';
import 'package:task/feature/domain/repository/restaurant_repository.dart';

class CartsByOrderUseCase implements UseCase<void, String> {
  final RestaurantRepository repository;

  CartsByOrderUseCase(this.repository);

  @override
  Future<List<CartItemModel>> call(String orderId) async {
    return await repository.getCartItemsByOrder(orderId);
  }
}
