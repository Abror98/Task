import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task/core/di/app_injector.dart';
import 'package:task/core/enum/base_status.dart';
import 'package:task/core/error/run_zoned_protected.dart';
import 'package:task/core/usecase/usecase.dart';
import 'package:task/feature/data/models/table_model.dart';
import 'package:task/feature/domain/usecase/table/table_list_usecase.dart';

part 'table_bloc.freezed.dart';
part 'table_event.dart';
part 'table_state.dart';

class TableBloc extends Bloc<TableEvent, TableState> {
  final _tableListUseCase = AppInjector.I.get<TableListUseCase>();

  List<TableModel> _tables = [];

  TableBloc() : super(TableState()) {
    on<_LoadTables>((event, emit) async {
      await runLocalZonedProtected(
        decoration: LocalProtectedZoneSpecification(
          genericExceptionHandler: (e, __) {
            emit(state.copyWith(
                error: e.toString(), tablesStatus: BaseStatus.error));
          },
        ),
        () async {
          emit(state.copyWith(tablesStatus: BaseStatus.loading));
          await Future.delayed(Duration(seconds: 1));
          _tables = await _tableListUseCase.call(NoParams());
          emit(state.copyWith(
              tables: _tables, tablesStatus: BaseStatus.success));
        },
      );
    });
  }
}
