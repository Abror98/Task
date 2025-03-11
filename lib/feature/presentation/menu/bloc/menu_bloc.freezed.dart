// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MenuEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCategories,
    required TResult Function(String categoryId) loadProductByCategoryId,
    required TResult Function(String tableId, List<ProductModel> productList)
        createOrder,
    required TResult Function(String orderId, List<ProductModel> productList)
        addCartToOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCategories,
    TResult? Function(String categoryId)? loadProductByCategoryId,
    TResult? Function(String tableId, List<ProductModel> productList)?
        createOrder,
    TResult? Function(String orderId, List<ProductModel> productList)?
        addCartToOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCategories,
    TResult Function(String categoryId)? loadProductByCategoryId,
    TResult Function(String tableId, List<ProductModel> productList)?
        createOrder,
    TResult Function(String orderId, List<ProductModel> productList)?
        addCartToOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCategories value) loadCategories,
    required TResult Function(_LoadProductsByCategory value)
        loadProductByCategoryId,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_AddCartToOrder value) addCartToOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCategories value)? loadCategories,
    TResult? Function(_LoadProductsByCategory value)? loadProductByCategoryId,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_AddCartToOrder value)? addCartToOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCategories value)? loadCategories,
    TResult Function(_LoadProductsByCategory value)? loadProductByCategoryId,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_AddCartToOrder value)? addCartToOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuEventCopyWith<$Res> {
  factory $MenuEventCopyWith(MenuEvent value, $Res Function(MenuEvent) then) =
      _$MenuEventCopyWithImpl<$Res, MenuEvent>;
}

/// @nodoc
class _$MenuEventCopyWithImpl<$Res, $Val extends MenuEvent>
    implements $MenuEventCopyWith<$Res> {
  _$MenuEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MenuEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadCategoriesImplCopyWith<$Res> {
  factory _$$LoadCategoriesImplCopyWith(_$LoadCategoriesImpl value,
          $Res Function(_$LoadCategoriesImpl) then) =
      __$$LoadCategoriesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCategoriesImplCopyWithImpl<$Res>
    extends _$MenuEventCopyWithImpl<$Res, _$LoadCategoriesImpl>
    implements _$$LoadCategoriesImplCopyWith<$Res> {
  __$$LoadCategoriesImplCopyWithImpl(
      _$LoadCategoriesImpl _value, $Res Function(_$LoadCategoriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of MenuEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadCategoriesImpl implements _LoadCategories {
  const _$LoadCategoriesImpl();

  @override
  String toString() {
    return 'MenuEvent.loadCategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadCategoriesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCategories,
    required TResult Function(String categoryId) loadProductByCategoryId,
    required TResult Function(String tableId, List<ProductModel> productList)
        createOrder,
    required TResult Function(String orderId, List<ProductModel> productList)
        addCartToOrder,
  }) {
    return loadCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCategories,
    TResult? Function(String categoryId)? loadProductByCategoryId,
    TResult? Function(String tableId, List<ProductModel> productList)?
        createOrder,
    TResult? Function(String orderId, List<ProductModel> productList)?
        addCartToOrder,
  }) {
    return loadCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCategories,
    TResult Function(String categoryId)? loadProductByCategoryId,
    TResult Function(String tableId, List<ProductModel> productList)?
        createOrder,
    TResult Function(String orderId, List<ProductModel> productList)?
        addCartToOrder,
    required TResult orElse(),
  }) {
    if (loadCategories != null) {
      return loadCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCategories value) loadCategories,
    required TResult Function(_LoadProductsByCategory value)
        loadProductByCategoryId,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_AddCartToOrder value) addCartToOrder,
  }) {
    return loadCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCategories value)? loadCategories,
    TResult? Function(_LoadProductsByCategory value)? loadProductByCategoryId,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_AddCartToOrder value)? addCartToOrder,
  }) {
    return loadCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCategories value)? loadCategories,
    TResult Function(_LoadProductsByCategory value)? loadProductByCategoryId,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_AddCartToOrder value)? addCartToOrder,
    required TResult orElse(),
  }) {
    if (loadCategories != null) {
      return loadCategories(this);
    }
    return orElse();
  }
}

abstract class _LoadCategories implements MenuEvent {
  const factory _LoadCategories() = _$LoadCategoriesImpl;
}

/// @nodoc
abstract class _$$LoadProductsByCategoryImplCopyWith<$Res> {
  factory _$$LoadProductsByCategoryImplCopyWith(
          _$LoadProductsByCategoryImpl value,
          $Res Function(_$LoadProductsByCategoryImpl) then) =
      __$$LoadProductsByCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryId});
}

/// @nodoc
class __$$LoadProductsByCategoryImplCopyWithImpl<$Res>
    extends _$MenuEventCopyWithImpl<$Res, _$LoadProductsByCategoryImpl>
    implements _$$LoadProductsByCategoryImplCopyWith<$Res> {
  __$$LoadProductsByCategoryImplCopyWithImpl(
      _$LoadProductsByCategoryImpl _value,
      $Res Function(_$LoadProductsByCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of MenuEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_$LoadProductsByCategoryImpl(
      null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadProductsByCategoryImpl implements _LoadProductsByCategory {
  const _$LoadProductsByCategoryImpl(this.categoryId);

  @override
  final String categoryId;

  @override
  String toString() {
    return 'MenuEvent.loadProductByCategoryId(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadProductsByCategoryImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  /// Create a copy of MenuEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadProductsByCategoryImplCopyWith<_$LoadProductsByCategoryImpl>
      get copyWith => __$$LoadProductsByCategoryImplCopyWithImpl<
          _$LoadProductsByCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCategories,
    required TResult Function(String categoryId) loadProductByCategoryId,
    required TResult Function(String tableId, List<ProductModel> productList)
        createOrder,
    required TResult Function(String orderId, List<ProductModel> productList)
        addCartToOrder,
  }) {
    return loadProductByCategoryId(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCategories,
    TResult? Function(String categoryId)? loadProductByCategoryId,
    TResult? Function(String tableId, List<ProductModel> productList)?
        createOrder,
    TResult? Function(String orderId, List<ProductModel> productList)?
        addCartToOrder,
  }) {
    return loadProductByCategoryId?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCategories,
    TResult Function(String categoryId)? loadProductByCategoryId,
    TResult Function(String tableId, List<ProductModel> productList)?
        createOrder,
    TResult Function(String orderId, List<ProductModel> productList)?
        addCartToOrder,
    required TResult orElse(),
  }) {
    if (loadProductByCategoryId != null) {
      return loadProductByCategoryId(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCategories value) loadCategories,
    required TResult Function(_LoadProductsByCategory value)
        loadProductByCategoryId,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_AddCartToOrder value) addCartToOrder,
  }) {
    return loadProductByCategoryId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCategories value)? loadCategories,
    TResult? Function(_LoadProductsByCategory value)? loadProductByCategoryId,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_AddCartToOrder value)? addCartToOrder,
  }) {
    return loadProductByCategoryId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCategories value)? loadCategories,
    TResult Function(_LoadProductsByCategory value)? loadProductByCategoryId,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_AddCartToOrder value)? addCartToOrder,
    required TResult orElse(),
  }) {
    if (loadProductByCategoryId != null) {
      return loadProductByCategoryId(this);
    }
    return orElse();
  }
}

abstract class _LoadProductsByCategory implements MenuEvent {
  const factory _LoadProductsByCategory(final String categoryId) =
      _$LoadProductsByCategoryImpl;

  String get categoryId;

  /// Create a copy of MenuEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadProductsByCategoryImplCopyWith<_$LoadProductsByCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateOrderImplCopyWith<$Res> {
  factory _$$CreateOrderImplCopyWith(
          _$CreateOrderImpl value, $Res Function(_$CreateOrderImpl) then) =
      __$$CreateOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String tableId, List<ProductModel> productList});
}

/// @nodoc
class __$$CreateOrderImplCopyWithImpl<$Res>
    extends _$MenuEventCopyWithImpl<$Res, _$CreateOrderImpl>
    implements _$$CreateOrderImplCopyWith<$Res> {
  __$$CreateOrderImplCopyWithImpl(
      _$CreateOrderImpl _value, $Res Function(_$CreateOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of MenuEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tableId = null,
    Object? productList = null,
  }) {
    return _then(_$CreateOrderImpl(
      null == tableId
          ? _value.tableId
          : tableId // ignore: cast_nullable_to_non_nullable
              as String,
      null == productList
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$CreateOrderImpl implements _CreateOrder {
  const _$CreateOrderImpl(this.tableId, final List<ProductModel> productList)
      : _productList = productList;

  @override
  final String tableId;
  final List<ProductModel> _productList;
  @override
  List<ProductModel> get productList {
    if (_productList is EqualUnmodifiableListView) return _productList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

  @override
  String toString() {
    return 'MenuEvent.createOrder(tableId: $tableId, productList: $productList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrderImpl &&
            (identical(other.tableId, tableId) || other.tableId == tableId) &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, tableId, const DeepCollectionEquality().hash(_productList));

  /// Create a copy of MenuEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrderImplCopyWith<_$CreateOrderImpl> get copyWith =>
      __$$CreateOrderImplCopyWithImpl<_$CreateOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCategories,
    required TResult Function(String categoryId) loadProductByCategoryId,
    required TResult Function(String tableId, List<ProductModel> productList)
        createOrder,
    required TResult Function(String orderId, List<ProductModel> productList)
        addCartToOrder,
  }) {
    return createOrder(tableId, productList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCategories,
    TResult? Function(String categoryId)? loadProductByCategoryId,
    TResult? Function(String tableId, List<ProductModel> productList)?
        createOrder,
    TResult? Function(String orderId, List<ProductModel> productList)?
        addCartToOrder,
  }) {
    return createOrder?.call(tableId, productList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCategories,
    TResult Function(String categoryId)? loadProductByCategoryId,
    TResult Function(String tableId, List<ProductModel> productList)?
        createOrder,
    TResult Function(String orderId, List<ProductModel> productList)?
        addCartToOrder,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(tableId, productList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCategories value) loadCategories,
    required TResult Function(_LoadProductsByCategory value)
        loadProductByCategoryId,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_AddCartToOrder value) addCartToOrder,
  }) {
    return createOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCategories value)? loadCategories,
    TResult? Function(_LoadProductsByCategory value)? loadProductByCategoryId,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_AddCartToOrder value)? addCartToOrder,
  }) {
    return createOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCategories value)? loadCategories,
    TResult Function(_LoadProductsByCategory value)? loadProductByCategoryId,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_AddCartToOrder value)? addCartToOrder,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(this);
    }
    return orElse();
  }
}

abstract class _CreateOrder implements MenuEvent {
  const factory _CreateOrder(
          final String tableId, final List<ProductModel> productList) =
      _$CreateOrderImpl;

  String get tableId;
  List<ProductModel> get productList;

  /// Create a copy of MenuEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateOrderImplCopyWith<_$CreateOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddCartToOrderImplCopyWith<$Res> {
  factory _$$AddCartToOrderImplCopyWith(_$AddCartToOrderImpl value,
          $Res Function(_$AddCartToOrderImpl) then) =
      __$$AddCartToOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId, List<ProductModel> productList});
}

/// @nodoc
class __$$AddCartToOrderImplCopyWithImpl<$Res>
    extends _$MenuEventCopyWithImpl<$Res, _$AddCartToOrderImpl>
    implements _$$AddCartToOrderImplCopyWith<$Res> {
  __$$AddCartToOrderImplCopyWithImpl(
      _$AddCartToOrderImpl _value, $Res Function(_$AddCartToOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of MenuEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? productList = null,
  }) {
    return _then(_$AddCartToOrderImpl(
      null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      null == productList
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$AddCartToOrderImpl implements _AddCartToOrder {
  const _$AddCartToOrderImpl(this.orderId, final List<ProductModel> productList)
      : _productList = productList;

  @override
  final String orderId;
  final List<ProductModel> _productList;
  @override
  List<ProductModel> get productList {
    if (_productList is EqualUnmodifiableListView) return _productList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

  @override
  String toString() {
    return 'MenuEvent.addCartToOrder(orderId: $orderId, productList: $productList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCartToOrderImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, orderId, const DeepCollectionEquality().hash(_productList));

  /// Create a copy of MenuEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCartToOrderImplCopyWith<_$AddCartToOrderImpl> get copyWith =>
      __$$AddCartToOrderImplCopyWithImpl<_$AddCartToOrderImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCategories,
    required TResult Function(String categoryId) loadProductByCategoryId,
    required TResult Function(String tableId, List<ProductModel> productList)
        createOrder,
    required TResult Function(String orderId, List<ProductModel> productList)
        addCartToOrder,
  }) {
    return addCartToOrder(orderId, productList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCategories,
    TResult? Function(String categoryId)? loadProductByCategoryId,
    TResult? Function(String tableId, List<ProductModel> productList)?
        createOrder,
    TResult? Function(String orderId, List<ProductModel> productList)?
        addCartToOrder,
  }) {
    return addCartToOrder?.call(orderId, productList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCategories,
    TResult Function(String categoryId)? loadProductByCategoryId,
    TResult Function(String tableId, List<ProductModel> productList)?
        createOrder,
    TResult Function(String orderId, List<ProductModel> productList)?
        addCartToOrder,
    required TResult orElse(),
  }) {
    if (addCartToOrder != null) {
      return addCartToOrder(orderId, productList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCategories value) loadCategories,
    required TResult Function(_LoadProductsByCategory value)
        loadProductByCategoryId,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_AddCartToOrder value) addCartToOrder,
  }) {
    return addCartToOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCategories value)? loadCategories,
    TResult? Function(_LoadProductsByCategory value)? loadProductByCategoryId,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_AddCartToOrder value)? addCartToOrder,
  }) {
    return addCartToOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCategories value)? loadCategories,
    TResult Function(_LoadProductsByCategory value)? loadProductByCategoryId,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_AddCartToOrder value)? addCartToOrder,
    required TResult orElse(),
  }) {
    if (addCartToOrder != null) {
      return addCartToOrder(this);
    }
    return orElse();
  }
}

abstract class _AddCartToOrder implements MenuEvent {
  const factory _AddCartToOrder(
          final String orderId, final List<ProductModel> productList) =
      _$AddCartToOrderImpl;

  String get orderId;
  List<ProductModel> get productList;

  /// Create a copy of MenuEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddCartToOrderImplCopyWith<_$AddCartToOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MenuState {
  BaseStatus get categoriesStatus => throw _privateConstructorUsedError;
  BaseStatus get productsByCategoryStatus => throw _privateConstructorUsedError;
  BaseStatus get createOrderStatus => throw _privateConstructorUsedError;
  List<CategoryModel> get categories => throw _privateConstructorUsedError;
  List<ProductModel> get products => throw _privateConstructorUsedError;
  OrderModel? get orderModel => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  /// Create a copy of MenuState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MenuStateCopyWith<MenuState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuStateCopyWith<$Res> {
  factory $MenuStateCopyWith(MenuState value, $Res Function(MenuState) then) =
      _$MenuStateCopyWithImpl<$Res, MenuState>;
  @useResult
  $Res call(
      {BaseStatus categoriesStatus,
      BaseStatus productsByCategoryStatus,
      BaseStatus createOrderStatus,
      List<CategoryModel> categories,
      List<ProductModel> products,
      OrderModel? orderModel,
      String error});
}

/// @nodoc
class _$MenuStateCopyWithImpl<$Res, $Val extends MenuState>
    implements $MenuStateCopyWith<$Res> {
  _$MenuStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MenuState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoriesStatus = null,
    Object? productsByCategoryStatus = null,
    Object? createOrderStatus = null,
    Object? categories = null,
    Object? products = null,
    Object? orderModel = freezed,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      categoriesStatus: null == categoriesStatus
          ? _value.categoriesStatus
          : categoriesStatus // ignore: cast_nullable_to_non_nullable
              as BaseStatus,
      productsByCategoryStatus: null == productsByCategoryStatus
          ? _value.productsByCategoryStatus
          : productsByCategoryStatus // ignore: cast_nullable_to_non_nullable
              as BaseStatus,
      createOrderStatus: null == createOrderStatus
          ? _value.createOrderStatus
          : createOrderStatus // ignore: cast_nullable_to_non_nullable
              as BaseStatus,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      orderModel: freezed == orderModel
          ? _value.orderModel
          : orderModel // ignore: cast_nullable_to_non_nullable
              as OrderModel?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MenuStateImplCopyWith<$Res>
    implements $MenuStateCopyWith<$Res> {
  factory _$$MenuStateImplCopyWith(
          _$MenuStateImpl value, $Res Function(_$MenuStateImpl) then) =
      __$$MenuStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseStatus categoriesStatus,
      BaseStatus productsByCategoryStatus,
      BaseStatus createOrderStatus,
      List<CategoryModel> categories,
      List<ProductModel> products,
      OrderModel? orderModel,
      String error});
}

/// @nodoc
class __$$MenuStateImplCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res, _$MenuStateImpl>
    implements _$$MenuStateImplCopyWith<$Res> {
  __$$MenuStateImplCopyWithImpl(
      _$MenuStateImpl _value, $Res Function(_$MenuStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MenuState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoriesStatus = null,
    Object? productsByCategoryStatus = null,
    Object? createOrderStatus = null,
    Object? categories = null,
    Object? products = null,
    Object? orderModel = freezed,
    Object? error = null,
  }) {
    return _then(_$MenuStateImpl(
      categoriesStatus: null == categoriesStatus
          ? _value.categoriesStatus
          : categoriesStatus // ignore: cast_nullable_to_non_nullable
              as BaseStatus,
      productsByCategoryStatus: null == productsByCategoryStatus
          ? _value.productsByCategoryStatus
          : productsByCategoryStatus // ignore: cast_nullable_to_non_nullable
              as BaseStatus,
      createOrderStatus: null == createOrderStatus
          ? _value.createOrderStatus
          : createOrderStatus // ignore: cast_nullable_to_non_nullable
              as BaseStatus,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      orderModel: freezed == orderModel
          ? _value.orderModel
          : orderModel // ignore: cast_nullable_to_non_nullable
              as OrderModel?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MenuStateImpl implements _MenuState {
  _$MenuStateImpl(
      {this.categoriesStatus = BaseStatus.initial,
      this.productsByCategoryStatus = BaseStatus.initial,
      this.createOrderStatus = BaseStatus.initial,
      final List<CategoryModel> categories = const [],
      final List<ProductModel> products = const [],
      this.orderModel,
      this.error = ''})
      : _categories = categories,
        _products = products;

  @override
  @JsonKey()
  final BaseStatus categoriesStatus;
  @override
  @JsonKey()
  final BaseStatus productsByCategoryStatus;
  @override
  @JsonKey()
  final BaseStatus createOrderStatus;
  final List<CategoryModel> _categories;
  @override
  @JsonKey()
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<ProductModel> _products;
  @override
  @JsonKey()
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final OrderModel? orderModel;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'MenuState(categoriesStatus: $categoriesStatus, productsByCategoryStatus: $productsByCategoryStatus, createOrderStatus: $createOrderStatus, categories: $categories, products: $products, orderModel: $orderModel, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuStateImpl &&
            (identical(other.categoriesStatus, categoriesStatus) ||
                other.categoriesStatus == categoriesStatus) &&
            (identical(
                    other.productsByCategoryStatus, productsByCategoryStatus) ||
                other.productsByCategoryStatus == productsByCategoryStatus) &&
            (identical(other.createOrderStatus, createOrderStatus) ||
                other.createOrderStatus == createOrderStatus) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.orderModel, orderModel) ||
                other.orderModel == orderModel) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      categoriesStatus,
      productsByCategoryStatus,
      createOrderStatus,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_products),
      orderModel,
      error);

  /// Create a copy of MenuState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuStateImplCopyWith<_$MenuStateImpl> get copyWith =>
      __$$MenuStateImplCopyWithImpl<_$MenuStateImpl>(this, _$identity);
}

abstract class _MenuState implements MenuState {
  factory _MenuState(
      {final BaseStatus categoriesStatus,
      final BaseStatus productsByCategoryStatus,
      final BaseStatus createOrderStatus,
      final List<CategoryModel> categories,
      final List<ProductModel> products,
      final OrderModel? orderModel,
      final String error}) = _$MenuStateImpl;

  @override
  BaseStatus get categoriesStatus;
  @override
  BaseStatus get productsByCategoryStatus;
  @override
  BaseStatus get createOrderStatus;
  @override
  List<CategoryModel> get categories;
  @override
  List<ProductModel> get products;
  @override
  OrderModel? get orderModel;
  @override
  String get error;

  /// Create a copy of MenuState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MenuStateImplCopyWith<_$MenuStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
