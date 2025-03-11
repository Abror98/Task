// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOrders,
    required TResult Function(String orderId) loadCartsByOrder,
    required TResult Function(String orderId, String cartItemId) removeCartItem,
    required TResult Function(UpdateCartItemParams params) updateCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadOrders,
    TResult? Function(String orderId)? loadCartsByOrder,
    TResult? Function(String orderId, String cartItemId)? removeCartItem,
    TResult? Function(UpdateCartItemParams params)? updateCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOrders,
    TResult Function(String orderId)? loadCartsByOrder,
    TResult Function(String orderId, String cartItemId)? removeCartItem,
    TResult Function(UpdateCartItemParams params)? updateCartItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadOrders value) loadOrders,
    required TResult Function(_LoadCartsByOrder value) loadCartsByOrder,
    required TResult Function(_RemoveCartItem value) removeCartItem,
    required TResult Function(_UpdateCartItem value) updateCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadOrders value)? loadOrders,
    TResult? Function(_LoadCartsByOrder value)? loadCartsByOrder,
    TResult? Function(_RemoveCartItem value)? removeCartItem,
    TResult? Function(_UpdateCartItem value)? updateCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadOrders value)? loadOrders,
    TResult Function(_LoadCartsByOrder value)? loadCartsByOrder,
    TResult Function(_RemoveCartItem value)? removeCartItem,
    TResult Function(_UpdateCartItem value)? updateCartItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadOrdersImplCopyWith<$Res> {
  factory _$$LoadOrdersImplCopyWith(
          _$LoadOrdersImpl value, $Res Function(_$LoadOrdersImpl) then) =
      __$$LoadOrdersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadOrdersImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$LoadOrdersImpl>
    implements _$$LoadOrdersImplCopyWith<$Res> {
  __$$LoadOrdersImplCopyWithImpl(
      _$LoadOrdersImpl _value, $Res Function(_$LoadOrdersImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadOrdersImpl implements _LoadOrders {
  const _$LoadOrdersImpl();

  @override
  String toString() {
    return 'CartEvent.loadOrders()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadOrdersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOrders,
    required TResult Function(String orderId) loadCartsByOrder,
    required TResult Function(String orderId, String cartItemId) removeCartItem,
    required TResult Function(UpdateCartItemParams params) updateCartItem,
  }) {
    return loadOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadOrders,
    TResult? Function(String orderId)? loadCartsByOrder,
    TResult? Function(String orderId, String cartItemId)? removeCartItem,
    TResult? Function(UpdateCartItemParams params)? updateCartItem,
  }) {
    return loadOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOrders,
    TResult Function(String orderId)? loadCartsByOrder,
    TResult Function(String orderId, String cartItemId)? removeCartItem,
    TResult Function(UpdateCartItemParams params)? updateCartItem,
    required TResult orElse(),
  }) {
    if (loadOrders != null) {
      return loadOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadOrders value) loadOrders,
    required TResult Function(_LoadCartsByOrder value) loadCartsByOrder,
    required TResult Function(_RemoveCartItem value) removeCartItem,
    required TResult Function(_UpdateCartItem value) updateCartItem,
  }) {
    return loadOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadOrders value)? loadOrders,
    TResult? Function(_LoadCartsByOrder value)? loadCartsByOrder,
    TResult? Function(_RemoveCartItem value)? removeCartItem,
    TResult? Function(_UpdateCartItem value)? updateCartItem,
  }) {
    return loadOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadOrders value)? loadOrders,
    TResult Function(_LoadCartsByOrder value)? loadCartsByOrder,
    TResult Function(_RemoveCartItem value)? removeCartItem,
    TResult Function(_UpdateCartItem value)? updateCartItem,
    required TResult orElse(),
  }) {
    if (loadOrders != null) {
      return loadOrders(this);
    }
    return orElse();
  }
}

abstract class _LoadOrders implements CartEvent {
  const factory _LoadOrders() = _$LoadOrdersImpl;
}

/// @nodoc
abstract class _$$LoadCartsByOrderImplCopyWith<$Res> {
  factory _$$LoadCartsByOrderImplCopyWith(_$LoadCartsByOrderImpl value,
          $Res Function(_$LoadCartsByOrderImpl) then) =
      __$$LoadCartsByOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class __$$LoadCartsByOrderImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$LoadCartsByOrderImpl>
    implements _$$LoadCartsByOrderImplCopyWith<$Res> {
  __$$LoadCartsByOrderImplCopyWithImpl(_$LoadCartsByOrderImpl _value,
      $Res Function(_$LoadCartsByOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$LoadCartsByOrderImpl(
      null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadCartsByOrderImpl implements _LoadCartsByOrder {
  const _$LoadCartsByOrderImpl(this.orderId);

  @override
  final String orderId;

  @override
  String toString() {
    return 'CartEvent.loadCartsByOrder(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCartsByOrderImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadCartsByOrderImplCopyWith<_$LoadCartsByOrderImpl> get copyWith =>
      __$$LoadCartsByOrderImplCopyWithImpl<_$LoadCartsByOrderImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOrders,
    required TResult Function(String orderId) loadCartsByOrder,
    required TResult Function(String orderId, String cartItemId) removeCartItem,
    required TResult Function(UpdateCartItemParams params) updateCartItem,
  }) {
    return loadCartsByOrder(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadOrders,
    TResult? Function(String orderId)? loadCartsByOrder,
    TResult? Function(String orderId, String cartItemId)? removeCartItem,
    TResult? Function(UpdateCartItemParams params)? updateCartItem,
  }) {
    return loadCartsByOrder?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOrders,
    TResult Function(String orderId)? loadCartsByOrder,
    TResult Function(String orderId, String cartItemId)? removeCartItem,
    TResult Function(UpdateCartItemParams params)? updateCartItem,
    required TResult orElse(),
  }) {
    if (loadCartsByOrder != null) {
      return loadCartsByOrder(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadOrders value) loadOrders,
    required TResult Function(_LoadCartsByOrder value) loadCartsByOrder,
    required TResult Function(_RemoveCartItem value) removeCartItem,
    required TResult Function(_UpdateCartItem value) updateCartItem,
  }) {
    return loadCartsByOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadOrders value)? loadOrders,
    TResult? Function(_LoadCartsByOrder value)? loadCartsByOrder,
    TResult? Function(_RemoveCartItem value)? removeCartItem,
    TResult? Function(_UpdateCartItem value)? updateCartItem,
  }) {
    return loadCartsByOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadOrders value)? loadOrders,
    TResult Function(_LoadCartsByOrder value)? loadCartsByOrder,
    TResult Function(_RemoveCartItem value)? removeCartItem,
    TResult Function(_UpdateCartItem value)? updateCartItem,
    required TResult orElse(),
  }) {
    if (loadCartsByOrder != null) {
      return loadCartsByOrder(this);
    }
    return orElse();
  }
}

abstract class _LoadCartsByOrder implements CartEvent {
  const factory _LoadCartsByOrder(final String orderId) =
      _$LoadCartsByOrderImpl;

  String get orderId;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadCartsByOrderImplCopyWith<_$LoadCartsByOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveCartItemImplCopyWith<$Res> {
  factory _$$RemoveCartItemImplCopyWith(_$RemoveCartItemImpl value,
          $Res Function(_$RemoveCartItemImpl) then) =
      __$$RemoveCartItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId, String cartItemId});
}

/// @nodoc
class __$$RemoveCartItemImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$RemoveCartItemImpl>
    implements _$$RemoveCartItemImplCopyWith<$Res> {
  __$$RemoveCartItemImplCopyWithImpl(
      _$RemoveCartItemImpl _value, $Res Function(_$RemoveCartItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? cartItemId = null,
  }) {
    return _then(_$RemoveCartItemImpl(
      null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      null == cartItemId
          ? _value.cartItemId
          : cartItemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveCartItemImpl implements _RemoveCartItem {
  const _$RemoveCartItemImpl(this.orderId, this.cartItemId);

  @override
  final String orderId;
  @override
  final String cartItemId;

  @override
  String toString() {
    return 'CartEvent.removeCartItem(orderId: $orderId, cartItemId: $cartItemId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveCartItemImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.cartItemId, cartItemId) ||
                other.cartItemId == cartItemId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, cartItemId);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveCartItemImplCopyWith<_$RemoveCartItemImpl> get copyWith =>
      __$$RemoveCartItemImplCopyWithImpl<_$RemoveCartItemImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOrders,
    required TResult Function(String orderId) loadCartsByOrder,
    required TResult Function(String orderId, String cartItemId) removeCartItem,
    required TResult Function(UpdateCartItemParams params) updateCartItem,
  }) {
    return removeCartItem(orderId, cartItemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadOrders,
    TResult? Function(String orderId)? loadCartsByOrder,
    TResult? Function(String orderId, String cartItemId)? removeCartItem,
    TResult? Function(UpdateCartItemParams params)? updateCartItem,
  }) {
    return removeCartItem?.call(orderId, cartItemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOrders,
    TResult Function(String orderId)? loadCartsByOrder,
    TResult Function(String orderId, String cartItemId)? removeCartItem,
    TResult Function(UpdateCartItemParams params)? updateCartItem,
    required TResult orElse(),
  }) {
    if (removeCartItem != null) {
      return removeCartItem(orderId, cartItemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadOrders value) loadOrders,
    required TResult Function(_LoadCartsByOrder value) loadCartsByOrder,
    required TResult Function(_RemoveCartItem value) removeCartItem,
    required TResult Function(_UpdateCartItem value) updateCartItem,
  }) {
    return removeCartItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadOrders value)? loadOrders,
    TResult? Function(_LoadCartsByOrder value)? loadCartsByOrder,
    TResult? Function(_RemoveCartItem value)? removeCartItem,
    TResult? Function(_UpdateCartItem value)? updateCartItem,
  }) {
    return removeCartItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadOrders value)? loadOrders,
    TResult Function(_LoadCartsByOrder value)? loadCartsByOrder,
    TResult Function(_RemoveCartItem value)? removeCartItem,
    TResult Function(_UpdateCartItem value)? updateCartItem,
    required TResult orElse(),
  }) {
    if (removeCartItem != null) {
      return removeCartItem(this);
    }
    return orElse();
  }
}

abstract class _RemoveCartItem implements CartEvent {
  const factory _RemoveCartItem(final String orderId, final String cartItemId) =
      _$RemoveCartItemImpl;

  String get orderId;
  String get cartItemId;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveCartItemImplCopyWith<_$RemoveCartItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCartItemImplCopyWith<$Res> {
  factory _$$UpdateCartItemImplCopyWith(_$UpdateCartItemImpl value,
          $Res Function(_$UpdateCartItemImpl) then) =
      __$$UpdateCartItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateCartItemParams params});
}

/// @nodoc
class __$$UpdateCartItemImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$UpdateCartItemImpl>
    implements _$$UpdateCartItemImplCopyWith<$Res> {
  __$$UpdateCartItemImplCopyWithImpl(
      _$UpdateCartItemImpl _value, $Res Function(_$UpdateCartItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$UpdateCartItemImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as UpdateCartItemParams,
    ));
  }
}

/// @nodoc

class _$UpdateCartItemImpl implements _UpdateCartItem {
  const _$UpdateCartItemImpl(this.params);

  @override
  final UpdateCartItemParams params;

  @override
  String toString() {
    return 'CartEvent.updateCartItem(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCartItemImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCartItemImplCopyWith<_$UpdateCartItemImpl> get copyWith =>
      __$$UpdateCartItemImplCopyWithImpl<_$UpdateCartItemImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOrders,
    required TResult Function(String orderId) loadCartsByOrder,
    required TResult Function(String orderId, String cartItemId) removeCartItem,
    required TResult Function(UpdateCartItemParams params) updateCartItem,
  }) {
    return updateCartItem(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadOrders,
    TResult? Function(String orderId)? loadCartsByOrder,
    TResult? Function(String orderId, String cartItemId)? removeCartItem,
    TResult? Function(UpdateCartItemParams params)? updateCartItem,
  }) {
    return updateCartItem?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOrders,
    TResult Function(String orderId)? loadCartsByOrder,
    TResult Function(String orderId, String cartItemId)? removeCartItem,
    TResult Function(UpdateCartItemParams params)? updateCartItem,
    required TResult orElse(),
  }) {
    if (updateCartItem != null) {
      return updateCartItem(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadOrders value) loadOrders,
    required TResult Function(_LoadCartsByOrder value) loadCartsByOrder,
    required TResult Function(_RemoveCartItem value) removeCartItem,
    required TResult Function(_UpdateCartItem value) updateCartItem,
  }) {
    return updateCartItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadOrders value)? loadOrders,
    TResult? Function(_LoadCartsByOrder value)? loadCartsByOrder,
    TResult? Function(_RemoveCartItem value)? removeCartItem,
    TResult? Function(_UpdateCartItem value)? updateCartItem,
  }) {
    return updateCartItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadOrders value)? loadOrders,
    TResult Function(_LoadCartsByOrder value)? loadCartsByOrder,
    TResult Function(_RemoveCartItem value)? removeCartItem,
    TResult Function(_UpdateCartItem value)? updateCartItem,
    required TResult orElse(),
  }) {
    if (updateCartItem != null) {
      return updateCartItem(this);
    }
    return orElse();
  }
}

abstract class _UpdateCartItem implements CartEvent {
  const factory _UpdateCartItem(final UpdateCartItemParams params) =
      _$UpdateCartItemImpl;

  UpdateCartItemParams get params;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCartItemImplCopyWith<_$UpdateCartItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  BaseStatus get ordersStatus => throw _privateConstructorUsedError;
  List<OrderModel> get orders => throw _privateConstructorUsedError;
  BaseStatus get cartStatus => throw _privateConstructorUsedError;
  List<CartItemModel> get carts => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call(
      {BaseStatus ordersStatus,
      List<OrderModel> orders,
      BaseStatus cartStatus,
      List<CartItemModel> carts,
      String error});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordersStatus = null,
    Object? orders = null,
    Object? cartStatus = null,
    Object? carts = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      ordersStatus: null == ordersStatus
          ? _value.ordersStatus
          : ordersStatus // ignore: cast_nullable_to_non_nullable
              as BaseStatus,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      cartStatus: null == cartStatus
          ? _value.cartStatus
          : cartStatus // ignore: cast_nullable_to_non_nullable
              as BaseStatus,
      carts: null == carts
          ? _value.carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<CartItemModel>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartStateImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartStateImplCopyWith(
          _$CartStateImpl value, $Res Function(_$CartStateImpl) then) =
      __$$CartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseStatus ordersStatus,
      List<OrderModel> orders,
      BaseStatus cartStatus,
      List<CartItemModel> carts,
      String error});
}

/// @nodoc
class __$$CartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateImpl>
    implements _$$CartStateImplCopyWith<$Res> {
  __$$CartStateImplCopyWithImpl(
      _$CartStateImpl _value, $Res Function(_$CartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordersStatus = null,
    Object? orders = null,
    Object? cartStatus = null,
    Object? carts = null,
    Object? error = null,
  }) {
    return _then(_$CartStateImpl(
      ordersStatus: null == ordersStatus
          ? _value.ordersStatus
          : ordersStatus // ignore: cast_nullable_to_non_nullable
              as BaseStatus,
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      cartStatus: null == cartStatus
          ? _value.cartStatus
          : cartStatus // ignore: cast_nullable_to_non_nullable
              as BaseStatus,
      carts: null == carts
          ? _value._carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<CartItemModel>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CartStateImpl implements _CartState {
  _$CartStateImpl(
      {this.ordersStatus = BaseStatus.initial,
      final List<OrderModel> orders = const [],
      this.cartStatus = BaseStatus.initial,
      final List<CartItemModel> carts = const [],
      this.error = ''})
      : _orders = orders,
        _carts = carts;

  @override
  @JsonKey()
  final BaseStatus ordersStatus;
  final List<OrderModel> _orders;
  @override
  @JsonKey()
  List<OrderModel> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  @JsonKey()
  final BaseStatus cartStatus;
  final List<CartItemModel> _carts;
  @override
  @JsonKey()
  List<CartItemModel> get carts {
    if (_carts is EqualUnmodifiableListView) return _carts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carts);
  }

  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'CartState(ordersStatus: $ordersStatus, orders: $orders, cartStatus: $cartStatus, carts: $carts, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateImpl &&
            (identical(other.ordersStatus, ordersStatus) ||
                other.ordersStatus == ordersStatus) &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.cartStatus, cartStatus) ||
                other.cartStatus == cartStatus) &&
            const DeepCollectionEquality().equals(other._carts, _carts) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      ordersStatus,
      const DeepCollectionEquality().hash(_orders),
      cartStatus,
      const DeepCollectionEquality().hash(_carts),
      error);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      __$$CartStateImplCopyWithImpl<_$CartStateImpl>(this, _$identity);
}

abstract class _CartState implements CartState {
  factory _CartState(
      {final BaseStatus ordersStatus,
      final List<OrderModel> orders,
      final BaseStatus cartStatus,
      final List<CartItemModel> carts,
      final String error}) = _$CartStateImpl;

  @override
  BaseStatus get ordersStatus;
  @override
  List<OrderModel> get orders;
  @override
  BaseStatus get cartStatus;
  @override
  List<CartItemModel> get carts;
  @override
  String get error;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
