part of 'main_wrapper_bloc.dart';

@freezed
class MainWrapperState with _$MainWrapperState {
  const factory MainWrapperState(
      {@Default(BaseStatus.initial) BaseStatus bottomNavigationState,
      @Default(0) int index,
      String? error}) = _DeliveryMethodState;
}
