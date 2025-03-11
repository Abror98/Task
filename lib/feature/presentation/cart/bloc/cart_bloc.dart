import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task/core/di/app_injector.dart';
import 'package:task/core/enum/base_status.dart';
import 'package:task/core/error/run_zoned_protected.dart';
import 'package:task/core/usecase/usecase.dart';
import 'package:task/feature/data/models/cart_item_model.dart';
import 'package:task/feature/data/models/order_model.dart';
import 'package:task/feature/domain/usecase/cart/carts_by_order_usecase.dart';
import 'package:task/feature/domain/usecase/cart/order_total_usecase.dart';
import 'package:task/feature/domain/usecase/cart/remove_cart_item_usecase.dart';
import 'package:task/feature/domain/usecase/cart/update_cart_item_usecase.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final _orderTotalUseCase = AppInjector.I.get<OrderTotalUseCase>();

  final _cartsByOrderUseCase = AppInjector.I.get<CartsByOrderUseCase>();

  final _removeByOrderUseCase = AppInjector.I.get<RemoveCartItemUseCase>();

  final _updateCartItemUseCase = AppInjector.I.get<UpdateCartItemUseCase>();

  List<OrderModel> _orders = [];

  List<CartItemModel> _carts = [];

  CartBloc() : super(CartState()) {
    on<_LoadOrders>((event, emit) async {
      await runLocalZonedProtected(
        decoration: LocalProtectedZoneSpecification(
          genericExceptionHandler: (e, __) {
            emit(state.copyWith(
                error: e.toString(), ordersStatus: BaseStatus.error));
          },
        ),
        () async {
          emit(state.copyWith(
              ordersStatus: BaseStatus.loading, orders: _orders));
          _orders = await _orderTotalUseCase.call(NoParams());
          emit(state.copyWith(
              orders: _orders, ordersStatus: BaseStatus.success));
        },
      );
    });

    on<_LoadCartsByOrder>((event, emit) async {
      await runLocalZonedProtected(
        decoration: LocalProtectedZoneSpecification(
          genericExceptionHandler: (e, __) {
            emit(state.copyWith(
                error: e.toString(), cartStatus: BaseStatus.error));
          },
        ),
        () async {
          emit(state.copyWith(cartStatus: BaseStatus.loading, carts: _carts));
          await Future.delayed(Duration(seconds: 1));
          _carts = await _cartsByOrderUseCase.call(event.orderId);
          emit(state.copyWith(carts: _carts, cartStatus: BaseStatus.success));
        },
      );
    });

    on<_RemoveCartItem>((event, emit) async {
      await runLocalZonedProtected(
        decoration: LocalProtectedZoneSpecification(
          genericExceptionHandler: (e, __) {
            emit(state.copyWith(
                error: e.toString(), cartStatus: BaseStatus.error));
          },
        ),
        () async {
          emit(state.copyWith(cartStatus: BaseStatus.loading, carts: _carts));
          await Future.delayed(Duration(seconds: 1));
          await _removeByOrderUseCase
              .call(RemoveCartItemParams(event.orderId, event.cartItemId));
          _carts = await _cartsByOrderUseCase.call(event.orderId);
          emit(state.copyWith(carts: _carts, cartStatus: BaseStatus.success));
        },
      );
    });

    on<_UpdateCartItem>((event, emit) async {
      await runLocalZonedProtected(
        decoration: LocalProtectedZoneSpecification(
          genericExceptionHandler: (e, __) {
            emit(state.copyWith(
                error: e.toString(), cartStatus: BaseStatus.error));
          },
        ),
        () async {
          emit(state.copyWith(cartStatus: BaseStatus.loading, carts: _carts));
          await Future.delayed(Duration(seconds: 1));
          await _updateCartItemUseCase.call(event.params);
          _carts = await _cartsByOrderUseCase.call(event.params.orderId);
          emit(state.copyWith(carts: _carts, cartStatus: BaseStatus.success));
        },
      );
    });
  }
}
