import 'package:task/core/usecase/usecase.dart';
import 'package:task/feature/data/models/table_model.dart';
import 'package:task/feature/domain/repository/restaurant_repository.dart';

class TableListUseCase implements UseCase<void, NoParams> {
  final RestaurantRepository repository;

  TableListUseCase(this.repository);

  @override
  Future<List<TableModel>> call(NoParams params) async {
    return await repository.getAllTables();
  }
}

class DeleteUploadedFileParams {
  final String fileName;

  DeleteUploadedFileParams({required this.fileName});
}
