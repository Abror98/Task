import 'package:task/core/usecase/usecase.dart';
import 'package:task/feature/domain/repository/restaurant_repository.dart';

class UpdateCartItemUseCase implements UseCase<void, UpdateCartItemParams> {
  final RestaurantRepository repository;

  UpdateCartItemUseCase(this.repository);

  @override
  Future<void> call(UpdateCartItemParams params) async {
    return await repository.updateCartItemQuantity(
        params.orderId, params.cartId, params.quantity);
  }
}

class UpdateCartItemParams {
  final String orderId;
  final String cartId;
  final int quantity;

  UpdateCartItemParams(this.orderId, this.cartId, this.quantity);
}
