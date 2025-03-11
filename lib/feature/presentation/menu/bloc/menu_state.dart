part of 'menu_bloc.dart';

@freezed
class MenuState with _$MenuState {
  factory MenuState(
      {@Default(BaseStatus.initial) BaseStatus categoriesStatus,
      @Default(BaseStatus.initial) BaseStatus productsByCategoryStatus,
      @Default(BaseStatus.initial) BaseStatus createOrderStatus,
      @Default([]) List<CategoryModel> categories,
      @Default([]) List<ProductModel> products,
      OrderModel? orderModel,
      @Default('') String error}) = _MenuState;
}
