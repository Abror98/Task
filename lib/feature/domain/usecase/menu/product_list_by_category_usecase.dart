import 'package:task/core/usecase/usecase.dart';
import 'package:task/feature/data/models/product_model.dart';
import 'package:task/feature/domain/repository/restaurant_repository.dart';

class ProductListByCategoryUseCase implements UseCase<void, String> {
  final RestaurantRepository repository;

  ProductListByCategoryUseCase(this.repository);

  @override
  Future<List<ProductModel>> call(String categoryId) async {
    return await repository.getProductsByCategory(categoryId);
  }
}
