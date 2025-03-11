import 'package:task/core/usecase/usecase.dart';
import 'package:task/feature/domain/repository/restaurant_repository.dart';

class AddProductToCartUseCase implements UseCase<void, AddProductToCartParams> {
  final RestaurantRepository repository;

  AddProductToCartUseCase(this.repository);

  @override
  Future<void> call(AddProductToCartParams params) async {
    return await repository.addProductToCart(
        params.orderId, params.productId, params.quantity, params.productName);
  }
}

class AddProductToCartParams {
  final String orderId;
  final String productId;
  final int quantity;
  final String productName;

  AddProductToCartParams(
      {required this.orderId,
      required this.productId,
      this.quantity = 1,
      required this.productName});
}
