import 'package:task/core/usecase/usecase.dart';
import 'package:task/feature/domain/repository/restaurant_repository.dart';

class RemoveCartItemUseCase implements UseCase<void, RemoveCartItemParams> {
  final RestaurantRepository repository;

  RemoveCartItemUseCase(this.repository);

  @override
  Future<void> call(RemoveCartItemParams params) async {
    return await repository.removeCartItem(params.orderId, params.itemId);
  }
}

class RemoveCartItemParams {
  final String orderId;
  final String itemId;

  RemoveCartItemParams(this.orderId, this.itemId);
}
