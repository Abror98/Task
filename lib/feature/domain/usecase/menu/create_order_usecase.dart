import 'package:task/core/usecase/usecase.dart';
import 'package:task/feature/data/models/order_model.dart';
import 'package:task/feature/domain/repository/restaurant_repository.dart';

class CreateOrderUseCase implements UseCase<void, String> {
  final RestaurantRepository repository;

  CreateOrderUseCase(this.repository);

  @override
  Future<OrderModel> call(String tableId) async {
    return await repository.createOrder(tableId);
  }
}
