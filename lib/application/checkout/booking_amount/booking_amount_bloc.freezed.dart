// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_amount_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookingAmountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AmountBodyModel amountBodyModel) fetchTotalAmount,
    required TResult Function(double amount) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AmountBodyModel amountBodyModel)? fetchTotalAmount,
    TResult? Function(double amount)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AmountBodyModel amountBodyModel)? fetchTotalAmount,
    TResult Function(double amount)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTotalAmount value) fetchTotalAmount,
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTotalAmount value)? fetchTotalAmount,
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTotalAmount value)? fetchTotalAmount,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingAmountEventCopyWith<$Res> {
  factory $BookingAmountEventCopyWith(
          BookingAmountEvent value, $Res Function(BookingAmountEvent) then) =
      _$BookingAmountEventCopyWithImpl<$Res, BookingAmountEvent>;
}

/// @nodoc
class _$BookingAmountEventCopyWithImpl<$Res, $Val extends BookingAmountEvent>
    implements $BookingAmountEventCopyWith<$Res> {
  _$BookingAmountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingAmountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchTotalAmountImplCopyWith<$Res> {
  factory _$$FetchTotalAmountImplCopyWith(_$FetchTotalAmountImpl value,
          $Res Function(_$FetchTotalAmountImpl) then) =
      __$$FetchTotalAmountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AmountBodyModel amountBodyModel});
}

/// @nodoc
class __$$FetchTotalAmountImplCopyWithImpl<$Res>
    extends _$BookingAmountEventCopyWithImpl<$Res, _$FetchTotalAmountImpl>
    implements _$$FetchTotalAmountImplCopyWith<$Res> {
  __$$FetchTotalAmountImplCopyWithImpl(_$FetchTotalAmountImpl _value,
      $Res Function(_$FetchTotalAmountImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingAmountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountBodyModel = null,
  }) {
    return _then(_$FetchTotalAmountImpl(
      null == amountBodyModel
          ? _value.amountBodyModel
          : amountBodyModel // ignore: cast_nullable_to_non_nullable
              as AmountBodyModel,
    ));
  }
}

/// @nodoc

class _$FetchTotalAmountImpl implements _FetchTotalAmount {
  const _$FetchTotalAmountImpl(this.amountBodyModel);

  @override
  final AmountBodyModel amountBodyModel;

  @override
  String toString() {
    return 'BookingAmountEvent.fetchTotalAmount(amountBodyModel: $amountBodyModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTotalAmountImpl &&
            (identical(other.amountBodyModel, amountBodyModel) ||
                other.amountBodyModel == amountBodyModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amountBodyModel);

  /// Create a copy of BookingAmountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchTotalAmountImplCopyWith<_$FetchTotalAmountImpl> get copyWith =>
      __$$FetchTotalAmountImplCopyWithImpl<_$FetchTotalAmountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AmountBodyModel amountBodyModel) fetchTotalAmount,
    required TResult Function(double amount) initial,
  }) {
    return fetchTotalAmount(amountBodyModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AmountBodyModel amountBodyModel)? fetchTotalAmount,
    TResult? Function(double amount)? initial,
  }) {
    return fetchTotalAmount?.call(amountBodyModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AmountBodyModel amountBodyModel)? fetchTotalAmount,
    TResult Function(double amount)? initial,
    required TResult orElse(),
  }) {
    if (fetchTotalAmount != null) {
      return fetchTotalAmount(amountBodyModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTotalAmount value) fetchTotalAmount,
    required TResult Function(_Initial value) initial,
  }) {
    return fetchTotalAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTotalAmount value)? fetchTotalAmount,
    TResult? Function(_Initial value)? initial,
  }) {
    return fetchTotalAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTotalAmount value)? fetchTotalAmount,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (fetchTotalAmount != null) {
      return fetchTotalAmount(this);
    }
    return orElse();
  }
}

abstract class _FetchTotalAmount implements BookingAmountEvent {
  const factory _FetchTotalAmount(final AmountBodyModel amountBodyModel) =
      _$FetchTotalAmountImpl;

  AmountBodyModel get amountBodyModel;

  /// Create a copy of BookingAmountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchTotalAmountImplCopyWith<_$FetchTotalAmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double amount});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$BookingAmountEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingAmountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$InitialImpl(
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(this.amount);

  @override
  final double amount;

  @override
  String toString() {
    return 'BookingAmountEvent.initial(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  /// Create a copy of BookingAmountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AmountBodyModel amountBodyModel) fetchTotalAmount,
    required TResult Function(double amount) initial,
  }) {
    return initial(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AmountBodyModel amountBodyModel)? fetchTotalAmount,
    TResult? Function(double amount)? initial,
  }) {
    return initial?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AmountBodyModel amountBodyModel)? fetchTotalAmount,
    TResult Function(double amount)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTotalAmount value) fetchTotalAmount,
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTotalAmount value)? fetchTotalAmount,
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTotalAmount value)? fetchTotalAmount,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BookingAmountEvent {
  const factory _Initial(final double amount) = _$InitialImpl;

  double get amount;

  /// Create a copy of BookingAmountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookingAmountState {
  double get amount => throw _privateConstructorUsedError;
  int get tip => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  MainFailure? get failure => throw _privateConstructorUsedError;

  /// Create a copy of BookingAmountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingAmountStateCopyWith<BookingAmountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingAmountStateCopyWith<$Res> {
  factory $BookingAmountStateCopyWith(
          BookingAmountState value, $Res Function(BookingAmountState) then) =
      _$BookingAmountStateCopyWithImpl<$Res, BookingAmountState>;
  @useResult
  $Res call({double amount, int tip, bool isLoading, MainFailure? failure});

  $MainFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$BookingAmountStateCopyWithImpl<$Res, $Val extends BookingAmountState>
    implements $BookingAmountStateCopyWith<$Res> {
  _$BookingAmountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingAmountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? tip = null,
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      tip: null == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as MainFailure?,
    ) as $Val);
  }

  /// Create a copy of BookingAmountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainFailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $MainFailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookingAmountStateImplCopyWith<$Res>
    implements $BookingAmountStateCopyWith<$Res> {
  factory _$$BookingAmountStateImplCopyWith(_$BookingAmountStateImpl value,
          $Res Function(_$BookingAmountStateImpl) then) =
      __$$BookingAmountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double amount, int tip, bool isLoading, MainFailure? failure});

  @override
  $MainFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$BookingAmountStateImplCopyWithImpl<$Res>
    extends _$BookingAmountStateCopyWithImpl<$Res, _$BookingAmountStateImpl>
    implements _$$BookingAmountStateImplCopyWith<$Res> {
  __$$BookingAmountStateImplCopyWithImpl(_$BookingAmountStateImpl _value,
      $Res Function(_$BookingAmountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingAmountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? tip = null,
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_$BookingAmountStateImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      tip: null == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as MainFailure?,
    ));
  }
}

/// @nodoc

class _$BookingAmountStateImpl implements _BookingAmountState {
  const _$BookingAmountStateImpl(
      {required this.amount,
      required this.tip,
      required this.isLoading,
      required this.failure});

  @override
  final double amount;
  @override
  final int tip;
  @override
  final bool isLoading;
  @override
  final MainFailure? failure;

  @override
  String toString() {
    return 'BookingAmountState(amount: $amount, tip: $tip, isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingAmountStateImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.tip, tip) || other.tip == tip) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount, tip, isLoading, failure);

  /// Create a copy of BookingAmountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingAmountStateImplCopyWith<_$BookingAmountStateImpl> get copyWith =>
      __$$BookingAmountStateImplCopyWithImpl<_$BookingAmountStateImpl>(
          this, _$identity);
}

abstract class _BookingAmountState implements BookingAmountState {
  const factory _BookingAmountState(
      {required final double amount,
      required final int tip,
      required final bool isLoading,
      required final MainFailure? failure}) = _$BookingAmountStateImpl;

  @override
  double get amount;
  @override
  int get tip;
  @override
  bool get isLoading;
  @override
  MainFailure? get failure;

  /// Create a copy of BookingAmountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingAmountStateImplCopyWith<_$BookingAmountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
