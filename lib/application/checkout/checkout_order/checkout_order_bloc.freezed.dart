// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckoutOrderEvent {
  CheckoutOrderModel get model => throw _privateConstructorUsedError;
  AddressModel get address => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CheckoutOrderModel model, AddressModel address)
        placeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CheckoutOrderModel model, AddressModel address)?
        placeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CheckoutOrderModel model, AddressModel address)?
        placeOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaceOrder value) placeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlaceOrder value)? placeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceOrder value)? placeOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CheckoutOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckoutOrderEventCopyWith<CheckoutOrderEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutOrderEventCopyWith<$Res> {
  factory $CheckoutOrderEventCopyWith(
          CheckoutOrderEvent value, $Res Function(CheckoutOrderEvent) then) =
      _$CheckoutOrderEventCopyWithImpl<$Res, CheckoutOrderEvent>;
  @useResult
  $Res call({CheckoutOrderModel model, AddressModel address});
}

/// @nodoc
class _$CheckoutOrderEventCopyWithImpl<$Res, $Val extends CheckoutOrderEvent>
    implements $CheckoutOrderEventCopyWith<$Res> {
  _$CheckoutOrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckoutOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CheckoutOrderModel,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceOrderImplCopyWith<$Res>
    implements $CheckoutOrderEventCopyWith<$Res> {
  factory _$$PlaceOrderImplCopyWith(
          _$PlaceOrderImpl value, $Res Function(_$PlaceOrderImpl) then) =
      __$$PlaceOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CheckoutOrderModel model, AddressModel address});
}

/// @nodoc
class __$$PlaceOrderImplCopyWithImpl<$Res>
    extends _$CheckoutOrderEventCopyWithImpl<$Res, _$PlaceOrderImpl>
    implements _$$PlaceOrderImplCopyWith<$Res> {
  __$$PlaceOrderImplCopyWithImpl(
      _$PlaceOrderImpl _value, $Res Function(_$PlaceOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? address = null,
  }) {
    return _then(_$PlaceOrderImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CheckoutOrderModel,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel,
    ));
  }
}

/// @nodoc

class _$PlaceOrderImpl implements _PlaceOrder {
  const _$PlaceOrderImpl({required this.model, required this.address});

  @override
  final CheckoutOrderModel model;
  @override
  final AddressModel address;

  @override
  String toString() {
    return 'CheckoutOrderEvent.placeOrder(model: $model, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceOrderImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model, address);

  /// Create a copy of CheckoutOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceOrderImplCopyWith<_$PlaceOrderImpl> get copyWith =>
      __$$PlaceOrderImplCopyWithImpl<_$PlaceOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CheckoutOrderModel model, AddressModel address)
        placeOrder,
  }) {
    return placeOrder(model, address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CheckoutOrderModel model, AddressModel address)?
        placeOrder,
  }) {
    return placeOrder?.call(model, address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CheckoutOrderModel model, AddressModel address)?
        placeOrder,
    required TResult orElse(),
  }) {
    if (placeOrder != null) {
      return placeOrder(model, address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaceOrder value) placeOrder,
  }) {
    return placeOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlaceOrder value)? placeOrder,
  }) {
    return placeOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceOrder value)? placeOrder,
    required TResult orElse(),
  }) {
    if (placeOrder != null) {
      return placeOrder(this);
    }
    return orElse();
  }
}

abstract class _PlaceOrder implements CheckoutOrderEvent {
  const factory _PlaceOrder(
      {required final CheckoutOrderModel model,
      required final AddressModel address}) = _$PlaceOrderImpl;

  @override
  CheckoutOrderModel get model;
  @override
  AddressModel get address;

  /// Create a copy of CheckoutOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaceOrderImplCopyWith<_$PlaceOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CheckoutOrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MainFailure error) error,
    required TResult Function(AddressModel model) orderPlaced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MainFailure error)? error,
    TResult? Function(AddressModel model)? orderPlaced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MainFailure error)? error,
    TResult Function(AddressModel model)? orderPlaced,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CheckoutOrderLoading value) loading,
    required TResult Function(CheckoutOrderError value) error,
    required TResult Function(_OrderPlaced value) orderPlaced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CheckoutOrderLoading value)? loading,
    TResult? Function(CheckoutOrderError value)? error,
    TResult? Function(_OrderPlaced value)? orderPlaced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CheckoutOrderLoading value)? loading,
    TResult Function(CheckoutOrderError value)? error,
    TResult Function(_OrderPlaced value)? orderPlaced,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutOrderStateCopyWith<$Res> {
  factory $CheckoutOrderStateCopyWith(
          CheckoutOrderState value, $Res Function(CheckoutOrderState) then) =
      _$CheckoutOrderStateCopyWithImpl<$Res, CheckoutOrderState>;
}

/// @nodoc
class _$CheckoutOrderStateCopyWithImpl<$Res, $Val extends CheckoutOrderState>
    implements $CheckoutOrderStateCopyWith<$Res> {
  _$CheckoutOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckoutOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CheckoutOrderStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CheckoutOrderState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MainFailure error) error,
    required TResult Function(AddressModel model) orderPlaced,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MainFailure error)? error,
    TResult? Function(AddressModel model)? orderPlaced,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MainFailure error)? error,
    TResult Function(AddressModel model)? orderPlaced,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CheckoutOrderLoading value) loading,
    required TResult Function(CheckoutOrderError value) error,
    required TResult Function(_OrderPlaced value) orderPlaced,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CheckoutOrderLoading value)? loading,
    TResult? Function(CheckoutOrderError value)? error,
    TResult? Function(_OrderPlaced value)? orderPlaced,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CheckoutOrderLoading value)? loading,
    TResult Function(CheckoutOrderError value)? error,
    TResult Function(_OrderPlaced value)? orderPlaced,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CheckoutOrderState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CheckoutOrderLoadingImplCopyWith<$Res> {
  factory _$$CheckoutOrderLoadingImplCopyWith(_$CheckoutOrderLoadingImpl value,
          $Res Function(_$CheckoutOrderLoadingImpl) then) =
      __$$CheckoutOrderLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckoutOrderLoadingImplCopyWithImpl<$Res>
    extends _$CheckoutOrderStateCopyWithImpl<$Res, _$CheckoutOrderLoadingImpl>
    implements _$$CheckoutOrderLoadingImplCopyWith<$Res> {
  __$$CheckoutOrderLoadingImplCopyWithImpl(_$CheckoutOrderLoadingImpl _value,
      $Res Function(_$CheckoutOrderLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckoutOrderLoadingImpl implements CheckoutOrderLoading {
  const _$CheckoutOrderLoadingImpl();

  @override
  String toString() {
    return 'CheckoutOrderState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutOrderLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MainFailure error) error,
    required TResult Function(AddressModel model) orderPlaced,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MainFailure error)? error,
    TResult? Function(AddressModel model)? orderPlaced,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MainFailure error)? error,
    TResult Function(AddressModel model)? orderPlaced,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CheckoutOrderLoading value) loading,
    required TResult Function(CheckoutOrderError value) error,
    required TResult Function(_OrderPlaced value) orderPlaced,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CheckoutOrderLoading value)? loading,
    TResult? Function(CheckoutOrderError value)? error,
    TResult? Function(_OrderPlaced value)? orderPlaced,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CheckoutOrderLoading value)? loading,
    TResult Function(CheckoutOrderError value)? error,
    TResult Function(_OrderPlaced value)? orderPlaced,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CheckoutOrderLoading implements CheckoutOrderState {
  const factory CheckoutOrderLoading() = _$CheckoutOrderLoadingImpl;
}

/// @nodoc
abstract class _$$CheckoutOrderErrorImplCopyWith<$Res> {
  factory _$$CheckoutOrderErrorImplCopyWith(_$CheckoutOrderErrorImpl value,
          $Res Function(_$CheckoutOrderErrorImpl) then) =
      __$$CheckoutOrderErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MainFailure error});

  $MainFailureCopyWith<$Res> get error;
}

/// @nodoc
class __$$CheckoutOrderErrorImplCopyWithImpl<$Res>
    extends _$CheckoutOrderStateCopyWithImpl<$Res, _$CheckoutOrderErrorImpl>
    implements _$$CheckoutOrderErrorImplCopyWith<$Res> {
  __$$CheckoutOrderErrorImplCopyWithImpl(_$CheckoutOrderErrorImpl _value,
      $Res Function(_$CheckoutOrderErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CheckoutOrderErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as MainFailure,
    ));
  }

  /// Create a copy of CheckoutOrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainFailureCopyWith<$Res> get error {
    return $MainFailureCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$CheckoutOrderErrorImpl implements CheckoutOrderError {
  const _$CheckoutOrderErrorImpl(this.error);

  @override
  final MainFailure error;

  @override
  String toString() {
    return 'CheckoutOrderState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutOrderErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of CheckoutOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutOrderErrorImplCopyWith<_$CheckoutOrderErrorImpl> get copyWith =>
      __$$CheckoutOrderErrorImplCopyWithImpl<_$CheckoutOrderErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MainFailure error) error,
    required TResult Function(AddressModel model) orderPlaced,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MainFailure error)? error,
    TResult? Function(AddressModel model)? orderPlaced,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MainFailure error)? error,
    TResult Function(AddressModel model)? orderPlaced,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CheckoutOrderLoading value) loading,
    required TResult Function(CheckoutOrderError value) error,
    required TResult Function(_OrderPlaced value) orderPlaced,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CheckoutOrderLoading value)? loading,
    TResult? Function(CheckoutOrderError value)? error,
    TResult? Function(_OrderPlaced value)? orderPlaced,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CheckoutOrderLoading value)? loading,
    TResult Function(CheckoutOrderError value)? error,
    TResult Function(_OrderPlaced value)? orderPlaced,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CheckoutOrderError implements CheckoutOrderState {
  const factory CheckoutOrderError(final MainFailure error) =
      _$CheckoutOrderErrorImpl;

  MainFailure get error;

  /// Create a copy of CheckoutOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckoutOrderErrorImplCopyWith<_$CheckoutOrderErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderPlacedImplCopyWith<$Res> {
  factory _$$OrderPlacedImplCopyWith(
          _$OrderPlacedImpl value, $Res Function(_$OrderPlacedImpl) then) =
      __$$OrderPlacedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddressModel model});
}

/// @nodoc
class __$$OrderPlacedImplCopyWithImpl<$Res>
    extends _$CheckoutOrderStateCopyWithImpl<$Res, _$OrderPlacedImpl>
    implements _$$OrderPlacedImplCopyWith<$Res> {
  __$$OrderPlacedImplCopyWithImpl(
      _$OrderPlacedImpl _value, $Res Function(_$OrderPlacedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$OrderPlacedImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as AddressModel,
    ));
  }
}

/// @nodoc

class _$OrderPlacedImpl implements _OrderPlaced {
  const _$OrderPlacedImpl(this.model);

  @override
  final AddressModel model;

  @override
  String toString() {
    return 'CheckoutOrderState.orderPlaced(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPlacedImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of CheckoutOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPlacedImplCopyWith<_$OrderPlacedImpl> get copyWith =>
      __$$OrderPlacedImplCopyWithImpl<_$OrderPlacedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MainFailure error) error,
    required TResult Function(AddressModel model) orderPlaced,
  }) {
    return orderPlaced(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MainFailure error)? error,
    TResult? Function(AddressModel model)? orderPlaced,
  }) {
    return orderPlaced?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MainFailure error)? error,
    TResult Function(AddressModel model)? orderPlaced,
    required TResult orElse(),
  }) {
    if (orderPlaced != null) {
      return orderPlaced(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CheckoutOrderLoading value) loading,
    required TResult Function(CheckoutOrderError value) error,
    required TResult Function(_OrderPlaced value) orderPlaced,
  }) {
    return orderPlaced(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CheckoutOrderLoading value)? loading,
    TResult? Function(CheckoutOrderError value)? error,
    TResult? Function(_OrderPlaced value)? orderPlaced,
  }) {
    return orderPlaced?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CheckoutOrderLoading value)? loading,
    TResult Function(CheckoutOrderError value)? error,
    TResult Function(_OrderPlaced value)? orderPlaced,
    required TResult orElse(),
  }) {
    if (orderPlaced != null) {
      return orderPlaced(this);
    }
    return orElse();
  }
}

abstract class _OrderPlaced implements CheckoutOrderState {
  const factory _OrderPlaced(final AddressModel model) = _$OrderPlacedImpl;

  AddressModel get model;

  /// Create a copy of CheckoutOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderPlacedImplCopyWith<_$OrderPlacedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
