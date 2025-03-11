import 'package:task/core/usecase/usecase.dart';
import 'package:task/feature/data/models/order_model.dart';
import 'package:task/feature/domain/repository/restaurant_repository.dart';

class OrderTotalUseCase implements UseCase<void, NoParams> {
  final RestaurantRepository repository;

  OrderTotalUseCase(this.repository);

  @override
  Future<List<OrderModel>> call(NoParams params) async {
    return await repository.getOrderTotal();
  }
}
