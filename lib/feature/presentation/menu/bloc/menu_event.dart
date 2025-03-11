part of 'menu_bloc.dart';

@freezed
class MenuEvent with _$MenuEvent {
  const factory MenuEvent.loadCategories() = _LoadCategories;

  const factory MenuEvent.loadProductByCategoryId(String categoryId) =
      _LoadProductsByCategory;

  const factory MenuEvent.createOrder(
      String tableId, List<ProductModel> productList) = _CreateOrder;

  const factory MenuEvent.addCartToOrder(
      String orderId, List<ProductModel> productList) = _AddCartToOrder;
}
