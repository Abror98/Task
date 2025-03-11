part of 'table_bloc.dart';

@freezed
class TableState with _$TableState {
  factory TableState(
      {@Default([]) List<TableModel> tables,
      @Default(BaseStatus.initial) BaseStatus tablesStatus,
      @Default('') String error}) = _TableState;
}
