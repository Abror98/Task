part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.loadOrders() = _LoadOrders;

  const factory CartEvent.loadCartsByOrder(String orderId) = _LoadCartsByOrder;

  const factory CartEvent.removeCartItem(String orderId, String cartItemId) =
      _RemoveCartItem;

  const factory CartEvent.updateCartItem(UpdateCartItemParams params) =
      _UpdateCartItem;
}
