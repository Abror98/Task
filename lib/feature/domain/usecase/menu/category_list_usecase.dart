import 'package:task/core/usecase/usecase.dart';
import 'package:task/feature/data/models/category_model.dart';
import 'package:task/feature/domain/repository/restaurant_repository.dart';

class CategoryListUseCase implements UseCase<void, NoParams> {
  final RestaurantRepository repository;

  CategoryListUseCase(this.repository);

  @override
  Future<List<CategoryModel>> call(NoParams params) async {
    return await repository.getAllCategories();
  }
}
