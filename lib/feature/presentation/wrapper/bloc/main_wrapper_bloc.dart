import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task/core/enum/base_status.dart';

part 'main_wrapper_bloc.freezed.dart';
part 'main_wrapper_event.dart';
part 'main_wrapper_state.dart';

class MainWrapperBloc extends Bloc<MainWrapperEvent, MainWrapperState> {
  int selectedIndex = 0;

  MainWrapperBloc() : super(const MainWrapperState()) {
    on<_SetIndex>((event, emit) {
      emit(state.copyWith(
          bottomNavigationState: BaseStatus.loading, index: selectedIndex));
      selectedIndex = event.index;
      emit(state.copyWith(
          bottomNavigationState: BaseStatus.success, index: selectedIndex));
    });
  }
}
