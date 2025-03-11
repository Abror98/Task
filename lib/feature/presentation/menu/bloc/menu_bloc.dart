import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task/core/di/app_injector.dart';
import 'package:task/core/enum/base_status.dart';
import 'package:task/core/error/run_zoned_protected.dart';
import 'package:task/core/usecase/usecase.dart';
import 'package:task/feature/data/models/category_model.dart';
import 'package:task/feature/data/models/order_model.dart';
import 'package:task/feature/data/models/product_model.dart';
import 'package:task/feature/domain/usecase/menu/add_product_to_cart_usecase.dart';
import 'package:task/feature/domain/usecase/menu/category_list_usecase.dart';
import 'package:task/feature/domain/usecase/menu/create_order_usecase.dart';
import 'package:task/feature/domain/usecase/menu/product_list_by_category_usecase.dart';

part 'menu_bloc.freezed.dart';
part 'menu_event.dart';
part 'menu_state.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  final _categoryListUseCase = AppInjector.I.get<CategoryListUseCase>();
  final _productListByCategoryUseCase =
      AppInjector.I.get<ProductListByCategoryUseCase>();

  final _createOrderUseCase = AppInjector.I.get<CreateOrderUseCase>();

  final _addProductToCartUseCase = AppInjector.I.get<AddProductToCartUseCase>();

  List<CategoryModel> _categories = [];
  List<ProductModel> _products = [];

  MenuBloc() : super(MenuState()) {
    on<_LoadCategories>((event, emit) async {
      await runLocalZonedProtected(
        decoration: LocalProtectedZoneSpecification(
          genericExceptionHandler: (e, __) {
            emit(state.copyWith(
                error: e.toString(), categoriesStatus: BaseStatus.error));
          },
        ),
        () async {
          emit(state.copyWith(categoriesStatus: BaseStatus.loading));
          _categories = await _categoryListUseCase.call(NoParams());
          emit(state.copyWith(
              categories: _categories, categoriesStatus: BaseStatus.success));
        },
      );
    });

    on<_LoadProductsByCategory>((event, emit) async {
      await runLocalZonedProtected(
        decoration: LocalProtectedZoneSpecification(
          genericExceptionHandler: (e, __) {
            emit(state.copyWith(
                error: e.toString(),
                productsByCategoryStatus: BaseStatus.error));
          },
        ),
        () async {
          emit(state.copyWith(categoriesStatus: BaseStatus.loading));
          _products =
              await _productListByCategoryUseCase.call(event.categoryId);
          emit(state.copyWith(
              products: _products,
              productsByCategoryStatus: BaseStatus.success));
        },
      );
    });

    on<_CreateOrder>((event, emit) async {
      await runLocalZonedProtected(
        decoration: LocalProtectedZoneSpecification(
          genericExceptionHandler: (e, __) {
            emit(state.copyWith(
                error: e.toString(),
                productsByCategoryStatus: BaseStatus.error));
          },
        ),
        () async {
          emit(state.copyWith(categoriesStatus: BaseStatus.loading));
          for (var product in event.productList) {
            OrderModel orderModel =
                await _createOrderUseCase.call(event.tableId);
            await _addProductToCartUseCase.call(AddProductToCartParams(
                orderId: orderModel.id,
                productId: product.id,
                productName: product.name));
          }
          emit(state.copyWith(
              categories: _categories, categoriesStatus: BaseStatus.success));
        },
      );
    });

    on<_AddCartToOrder>((event, emit) async {
      await runLocalZonedProtected(
        decoration: LocalProtectedZoneSpecification(
          genericExceptionHandler: (e, __) {
            emit(state.copyWith(
                error: e.toString(),
                productsByCategoryStatus: BaseStatus.error));
          },
        ),
        () async {
          emit(state.copyWith(categoriesStatus: BaseStatus.loading));
          for (var product in event.productList) {
            await _addProductToCartUseCase.call(AddProductToCartParams(
                orderId: event.orderId,
                productId: product.id,
                productName: product.name));
          }
          emit(state.copyWith(
              categories: _categories, categoriesStatus: BaseStatus.success));
        },
      );
    });
  }
}
