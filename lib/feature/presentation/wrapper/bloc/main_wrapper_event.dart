part of 'main_wrapper_bloc.dart';

@freezed
class MainWrapperEvent with _$MainWrapperEvent {
  const factory MainWrapperEvent.setIndex(int index) = _SetIndex;
}
