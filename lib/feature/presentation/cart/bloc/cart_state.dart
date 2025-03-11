part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  factory CartState(
      {@Default(BaseStatus.initial) BaseStatus ordersStatus,
      @Default([]) List<OrderModel> orders,
      @Default(BaseStatus.initial) BaseStatus cartStatus,
      @Default([]) List<CartItemModel> carts,
      @Default('') String error}) = _CartState;
}
