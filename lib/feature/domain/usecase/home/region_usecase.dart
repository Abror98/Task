// import 'package:panda/core/usecase/usecase.dart';
// import 'package:panda/feature/data/models/region_model.dart';
// import 'package:panda/feature/domain/repository/home_repository.dart';
//
// class RegionUseCase implements UseCase<List<RegionModel>, RegionParams> {
//   final MainRepository repository;
//
//   RegionUseCase(this.repository);
//
//   @override
//   Future<List<RegionModel>> call(RegionParams params) async {
//     return await repository.getRegions(params: params);
//   }
// }
//
// class RegionParams {
//   final int? parentId;
//   String type;
//
//   RegionParams({required this.type, this.parentId});
// }
