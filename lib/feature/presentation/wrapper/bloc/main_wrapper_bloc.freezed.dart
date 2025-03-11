// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_wrapper_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainWrapperEvent {
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) setIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? setIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? setIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetIndex value) setIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetIndex value)? setIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetIndex value)? setIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MainWrapperEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainWrapperEventCopyWith<MainWrapperEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainWrapperEventCopyWith<$Res> {
  factory $MainWrapperEventCopyWith(
          MainWrapperEvent value, $Res Function(MainWrapperEvent) then) =
      _$MainWrapperEventCopyWithImpl<$Res, MainWrapperEvent>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$MainWrapperEventCopyWithImpl<$Res, $Val extends MainWrapperEvent>
    implements $MainWrapperEventCopyWith<$Res> {
  _$MainWrapperEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainWrapperEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetIndexImplCopyWith<$Res>
    implements $MainWrapperEventCopyWith<$Res> {
  factory _$$SetIndexImplCopyWith(
          _$SetIndexImpl value, $Res Function(_$SetIndexImpl) then) =
      __$$SetIndexImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$SetIndexImplCopyWithImpl<$Res>
    extends _$MainWrapperEventCopyWithImpl<$Res, _$SetIndexImpl>
    implements _$$SetIndexImplCopyWith<$Res> {
  __$$SetIndexImplCopyWithImpl(
      _$SetIndexImpl _value, $Res Function(_$SetIndexImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainWrapperEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$SetIndexImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetIndexImpl implements _SetIndex {
  const _$SetIndexImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'MainWrapperEvent.setIndex(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetIndexImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of MainWrapperEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetIndexImplCopyWith<_$SetIndexImpl> get copyWith =>
      __$$SetIndexImplCopyWithImpl<_$SetIndexImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) setIndex,
  }) {
    return setIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? setIndex,
  }) {
    return setIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? setIndex,
    required TResult orElse(),
  }) {
    if (setIndex != null) {
      return setIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetIndex value) setIndex,
  }) {
    return setIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetIndex value)? setIndex,
  }) {
    return setIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetIndex value)? setIndex,
    required TResult orElse(),
  }) {
    if (setIndex != null) {
      return setIndex(this);
    }
    return orElse();
  }
}

abstract class _SetIndex implements MainWrapperEvent {
  const factory _SetIndex(final int index) = _$SetIndexImpl;

  @override
  int get index;

  /// Create a copy of MainWrapperEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetIndexImplCopyWith<_$SetIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainWrapperState {
  BaseStatus get bottomNavigationState => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of MainWrapperState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainWrapperStateCopyWith<MainWrapperState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainWrapperStateCopyWith<$Res> {
  factory $MainWrapperStateCopyWith(
          MainWrapperState value, $Res Function(MainWrapperState) then) =
      _$MainWrapperStateCopyWithImpl<$Res, MainWrapperState>;
  @useResult
  $Res call({BaseStatus bottomNavigationState, int index, String? error});
}

/// @nodoc
class _$MainWrapperStateCopyWithImpl<$Res, $Val extends MainWrapperState>
    implements $MainWrapperStateCopyWith<$Res> {
  _$MainWrapperStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainWrapperState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bottomNavigationState = null,
    Object? index = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      bottomNavigationState: null == bottomNavigationState
          ? _value.bottomNavigationState
          : bottomNavigationState // ignore: cast_nullable_to_non_nullable
              as BaseStatus,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryMethodStateImplCopyWith<$Res>
    implements $MainWrapperStateCopyWith<$Res> {
  factory _$$DeliveryMethodStateImplCopyWith(_$DeliveryMethodStateImpl value,
          $Res Function(_$DeliveryMethodStateImpl) then) =
      __$$DeliveryMethodStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseStatus bottomNavigationState, int index, String? error});
}

/// @nodoc
class __$$DeliveryMethodStateImplCopyWithImpl<$Res>
    extends _$MainWrapperStateCopyWithImpl<$Res, _$DeliveryMethodStateImpl>
    implements _$$DeliveryMethodStateImplCopyWith<$Res> {
  __$$DeliveryMethodStateImplCopyWithImpl(_$DeliveryMethodStateImpl _value,
      $Res Function(_$DeliveryMethodStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainWrapperState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bottomNavigationState = null,
    Object? index = null,
    Object? error = freezed,
  }) {
    return _then(_$DeliveryMethodStateImpl(
      bottomNavigationState: null == bottomNavigationState
          ? _value.bottomNavigationState
          : bottomNavigationState // ignore: cast_nullable_to_non_nullable
              as BaseStatus,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeliveryMethodStateImpl implements _DeliveryMethodState {
  const _$DeliveryMethodStateImpl(
      {this.bottomNavigationState = BaseStatus.initial,
      this.index = 0,
      this.error});

  @override
  @JsonKey()
  final BaseStatus bottomNavigationState;
  @override
  @JsonKey()
  final int index;
  @override
  final String? error;

  @override
  String toString() {
    return 'MainWrapperState(bottomNavigationState: $bottomNavigationState, index: $index, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryMethodStateImpl &&
            (identical(other.bottomNavigationState, bottomNavigationState) ||
                other.bottomNavigationState == bottomNavigationState) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, bottomNavigationState, index, error);

  /// Create a copy of MainWrapperState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryMethodStateImplCopyWith<_$DeliveryMethodStateImpl> get copyWith =>
      __$$DeliveryMethodStateImplCopyWithImpl<_$DeliveryMethodStateImpl>(
          this, _$identity);
}

abstract class _DeliveryMethodState implements MainWrapperState {
  const factory _DeliveryMethodState(
      {final BaseStatus bottomNavigationState,
      final int index,
      final String? error}) = _$DeliveryMethodStateImpl;

  @override
  BaseStatus get bottomNavigationState;
  @override
  int get index;
  @override
  String? get error;

  /// Create a copy of MainWrapperState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryMethodStateImplCopyWith<_$DeliveryMethodStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
