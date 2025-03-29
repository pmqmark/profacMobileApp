// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_available_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ServiceAvailableEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAvailable) setValue,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAvailable)? setValue,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAvailable)? setValue,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetValue value) setValue,
    required TResult Function(_Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetValue value)? setValue,
    TResult? Function(_Reset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetValue value)? setValue,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceAvailableEventCopyWith<$Res> {
  factory $ServiceAvailableEventCopyWith(ServiceAvailableEvent value,
          $Res Function(ServiceAvailableEvent) then) =
      _$ServiceAvailableEventCopyWithImpl<$Res, ServiceAvailableEvent>;
}

/// @nodoc
class _$ServiceAvailableEventCopyWithImpl<$Res,
        $Val extends ServiceAvailableEvent>
    implements $ServiceAvailableEventCopyWith<$Res> {
  _$ServiceAvailableEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceAvailableEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SetValueImplCopyWith<$Res> {
  factory _$$SetValueImplCopyWith(
          _$SetValueImpl value, $Res Function(_$SetValueImpl) then) =
      __$$SetValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAvailable});
}

/// @nodoc
class __$$SetValueImplCopyWithImpl<$Res>
    extends _$ServiceAvailableEventCopyWithImpl<$Res, _$SetValueImpl>
    implements _$$SetValueImplCopyWith<$Res> {
  __$$SetValueImplCopyWithImpl(
      _$SetValueImpl _value, $Res Function(_$SetValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceAvailableEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAvailable = null,
  }) {
    return _then(_$SetValueImpl(
      null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetValueImpl implements _SetValue {
  const _$SetValueImpl(this.isAvailable);

  @override
  final bool isAvailable;

  @override
  String toString() {
    return 'ServiceAvailableEvent.setValue(isAvailable: $isAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetValueImpl &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAvailable);

  /// Create a copy of ServiceAvailableEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetValueImplCopyWith<_$SetValueImpl> get copyWith =>
      __$$SetValueImplCopyWithImpl<_$SetValueImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAvailable) setValue,
    required TResult Function() reset,
  }) {
    return setValue(isAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAvailable)? setValue,
    TResult? Function()? reset,
  }) {
    return setValue?.call(isAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAvailable)? setValue,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (setValue != null) {
      return setValue(isAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetValue value) setValue,
    required TResult Function(_Reset value) reset,
  }) {
    return setValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetValue value)? setValue,
    TResult? Function(_Reset value)? reset,
  }) {
    return setValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetValue value)? setValue,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (setValue != null) {
      return setValue(this);
    }
    return orElse();
  }
}

abstract class _SetValue implements ServiceAvailableEvent {
  const factory _SetValue(final bool isAvailable) = _$SetValueImpl;

  bool get isAvailable;

  /// Create a copy of ServiceAvailableEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetValueImplCopyWith<_$SetValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetImplCopyWith<$Res> {
  factory _$$ResetImplCopyWith(
          _$ResetImpl value, $Res Function(_$ResetImpl) then) =
      __$$ResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetImplCopyWithImpl<$Res>
    extends _$ServiceAvailableEventCopyWithImpl<$Res, _$ResetImpl>
    implements _$$ResetImplCopyWith<$Res> {
  __$$ResetImplCopyWithImpl(
      _$ResetImpl _value, $Res Function(_$ResetImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceAvailableEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetImpl implements _Reset {
  const _$ResetImpl();

  @override
  String toString() {
    return 'ServiceAvailableEvent.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAvailable) setValue,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAvailable)? setValue,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAvailable)? setValue,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetValue value) setValue,
    required TResult Function(_Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetValue value)? setValue,
    TResult? Function(_Reset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetValue value)? setValue,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements ServiceAvailableEvent {
  const factory _Reset() = _$ResetImpl;
}

/// @nodoc
mixin _$ServiceAvailableState {
  bool get isAvailable => throw _privateConstructorUsedError;

  /// Create a copy of ServiceAvailableState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceAvailableStateCopyWith<ServiceAvailableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceAvailableStateCopyWith<$Res> {
  factory $ServiceAvailableStateCopyWith(ServiceAvailableState value,
          $Res Function(ServiceAvailableState) then) =
      _$ServiceAvailableStateCopyWithImpl<$Res, ServiceAvailableState>;
  @useResult
  $Res call({bool isAvailable});
}

/// @nodoc
class _$ServiceAvailableStateCopyWithImpl<$Res,
        $Val extends ServiceAvailableState>
    implements $ServiceAvailableStateCopyWith<$Res> {
  _$ServiceAvailableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceAvailableState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAvailable = null,
  }) {
    return _then(_value.copyWith(
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceAvailableStateImplCopyWith<$Res>
    implements $ServiceAvailableStateCopyWith<$Res> {
  factory _$$ServiceAvailableStateImplCopyWith(
          _$ServiceAvailableStateImpl value,
          $Res Function(_$ServiceAvailableStateImpl) then) =
      __$$ServiceAvailableStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isAvailable});
}

/// @nodoc
class __$$ServiceAvailableStateImplCopyWithImpl<$Res>
    extends _$ServiceAvailableStateCopyWithImpl<$Res,
        _$ServiceAvailableStateImpl>
    implements _$$ServiceAvailableStateImplCopyWith<$Res> {
  __$$ServiceAvailableStateImplCopyWithImpl(_$ServiceAvailableStateImpl _value,
      $Res Function(_$ServiceAvailableStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceAvailableState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAvailable = null,
  }) {
    return _then(_$ServiceAvailableStateImpl(
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ServiceAvailableStateImpl implements _ServiceAvailableState {
  const _$ServiceAvailableStateImpl({required this.isAvailable});

  @override
  final bool isAvailable;

  @override
  String toString() {
    return 'ServiceAvailableState(isAvailable: $isAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceAvailableStateImpl &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAvailable);

  /// Create a copy of ServiceAvailableState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceAvailableStateImplCopyWith<_$ServiceAvailableStateImpl>
      get copyWith => __$$ServiceAvailableStateImplCopyWithImpl<
          _$ServiceAvailableStateImpl>(this, _$identity);
}

abstract class _ServiceAvailableState implements ServiceAvailableState {
  const factory _ServiceAvailableState({required final bool isAvailable}) =
      _$ServiceAvailableStateImpl;

  @override
  bool get isAvailable;

  /// Create a copy of ServiceAvailableState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceAvailableStateImplCopyWith<_$ServiceAvailableStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
