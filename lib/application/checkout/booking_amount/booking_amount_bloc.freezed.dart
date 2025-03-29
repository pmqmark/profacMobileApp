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
    required TResult Function() reset,
    required TResult Function() fetchTotalAmount,
    required TResult Function(int tip) updateTip,
    required TResult Function(String code) updateCouponCode,
    required TResult Function(String categoryId) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function()? fetchTotalAmount,
    TResult? Function(int tip)? updateTip,
    TResult? Function(String code)? updateCouponCode,
    TResult? Function(String categoryId)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? fetchTotalAmount,
    TResult Function(int tip)? updateTip,
    TResult Function(String code)? updateCouponCode,
    TResult Function(String categoryId)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_FetchTotalAmount value) fetchTotalAmount,
    required TResult Function(_UpdateTip value) updateTip,
    required TResult Function(_UpdateCouponCode value) updateCouponCode,
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_FetchTotalAmount value)? fetchTotalAmount,
    TResult? Function(_UpdateTip value)? updateTip,
    TResult? Function(_UpdateCouponCode value)? updateCouponCode,
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_FetchTotalAmount value)? fetchTotalAmount,
    TResult Function(_UpdateTip value)? updateTip,
    TResult Function(_UpdateCouponCode value)? updateCouponCode,
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
abstract class _$$ResetImplCopyWith<$Res> {
  factory _$$ResetImplCopyWith(
          _$ResetImpl value, $Res Function(_$ResetImpl) then) =
      __$$ResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetImplCopyWithImpl<$Res>
    extends _$BookingAmountEventCopyWithImpl<$Res, _$ResetImpl>
    implements _$$ResetImplCopyWith<$Res> {
  __$$ResetImplCopyWithImpl(
      _$ResetImpl _value, $Res Function(_$ResetImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingAmountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetImpl implements _Reset {
  const _$ResetImpl();

  @override
  String toString() {
    return 'BookingAmountEvent.reset()';
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
    required TResult Function() reset,
    required TResult Function() fetchTotalAmount,
    required TResult Function(int tip) updateTip,
    required TResult Function(String code) updateCouponCode,
    required TResult Function(String categoryId) initial,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function()? fetchTotalAmount,
    TResult? Function(int tip)? updateTip,
    TResult? Function(String code)? updateCouponCode,
    TResult? Function(String categoryId)? initial,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? fetchTotalAmount,
    TResult Function(int tip)? updateTip,
    TResult Function(String code)? updateCouponCode,
    TResult Function(String categoryId)? initial,
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
    required TResult Function(_Reset value) reset,
    required TResult Function(_FetchTotalAmount value) fetchTotalAmount,
    required TResult Function(_UpdateTip value) updateTip,
    required TResult Function(_UpdateCouponCode value) updateCouponCode,
    required TResult Function(_Initial value) initial,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_FetchTotalAmount value)? fetchTotalAmount,
    TResult? Function(_UpdateTip value)? updateTip,
    TResult? Function(_UpdateCouponCode value)? updateCouponCode,
    TResult? Function(_Initial value)? initial,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_FetchTotalAmount value)? fetchTotalAmount,
    TResult Function(_UpdateTip value)? updateTip,
    TResult Function(_UpdateCouponCode value)? updateCouponCode,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements BookingAmountEvent {
  const factory _Reset() = _$ResetImpl;
}

/// @nodoc
abstract class _$$FetchTotalAmountImplCopyWith<$Res> {
  factory _$$FetchTotalAmountImplCopyWith(_$FetchTotalAmountImpl value,
          $Res Function(_$FetchTotalAmountImpl) then) =
      __$$FetchTotalAmountImplCopyWithImpl<$Res>;
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
}

/// @nodoc

class _$FetchTotalAmountImpl implements _FetchTotalAmount {
  const _$FetchTotalAmountImpl();

  @override
  String toString() {
    return 'BookingAmountEvent.fetchTotalAmount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchTotalAmountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function() fetchTotalAmount,
    required TResult Function(int tip) updateTip,
    required TResult Function(String code) updateCouponCode,
    required TResult Function(String categoryId) initial,
  }) {
    return fetchTotalAmount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function()? fetchTotalAmount,
    TResult? Function(int tip)? updateTip,
    TResult? Function(String code)? updateCouponCode,
    TResult? Function(String categoryId)? initial,
  }) {
    return fetchTotalAmount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? fetchTotalAmount,
    TResult Function(int tip)? updateTip,
    TResult Function(String code)? updateCouponCode,
    TResult Function(String categoryId)? initial,
    required TResult orElse(),
  }) {
    if (fetchTotalAmount != null) {
      return fetchTotalAmount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_FetchTotalAmount value) fetchTotalAmount,
    required TResult Function(_UpdateTip value) updateTip,
    required TResult Function(_UpdateCouponCode value) updateCouponCode,
    required TResult Function(_Initial value) initial,
  }) {
    return fetchTotalAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_FetchTotalAmount value)? fetchTotalAmount,
    TResult? Function(_UpdateTip value)? updateTip,
    TResult? Function(_UpdateCouponCode value)? updateCouponCode,
    TResult? Function(_Initial value)? initial,
  }) {
    return fetchTotalAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_FetchTotalAmount value)? fetchTotalAmount,
    TResult Function(_UpdateTip value)? updateTip,
    TResult Function(_UpdateCouponCode value)? updateCouponCode,
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
  const factory _FetchTotalAmount() = _$FetchTotalAmountImpl;
}

/// @nodoc
abstract class _$$UpdateTipImplCopyWith<$Res> {
  factory _$$UpdateTipImplCopyWith(
          _$UpdateTipImpl value, $Res Function(_$UpdateTipImpl) then) =
      __$$UpdateTipImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int tip});
}

/// @nodoc
class __$$UpdateTipImplCopyWithImpl<$Res>
    extends _$BookingAmountEventCopyWithImpl<$Res, _$UpdateTipImpl>
    implements _$$UpdateTipImplCopyWith<$Res> {
  __$$UpdateTipImplCopyWithImpl(
      _$UpdateTipImpl _value, $Res Function(_$UpdateTipImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingAmountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tip = null,
  }) {
    return _then(_$UpdateTipImpl(
      null == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateTipImpl implements _UpdateTip {
  const _$UpdateTipImpl(this.tip);

  @override
  final int tip;

  @override
  String toString() {
    return 'BookingAmountEvent.updateTip(tip: $tip)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTipImpl &&
            (identical(other.tip, tip) || other.tip == tip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tip);

  /// Create a copy of BookingAmountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTipImplCopyWith<_$UpdateTipImpl> get copyWith =>
      __$$UpdateTipImplCopyWithImpl<_$UpdateTipImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function() fetchTotalAmount,
    required TResult Function(int tip) updateTip,
    required TResult Function(String code) updateCouponCode,
    required TResult Function(String categoryId) initial,
  }) {
    return updateTip(tip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function()? fetchTotalAmount,
    TResult? Function(int tip)? updateTip,
    TResult? Function(String code)? updateCouponCode,
    TResult? Function(String categoryId)? initial,
  }) {
    return updateTip?.call(tip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? fetchTotalAmount,
    TResult Function(int tip)? updateTip,
    TResult Function(String code)? updateCouponCode,
    TResult Function(String categoryId)? initial,
    required TResult orElse(),
  }) {
    if (updateTip != null) {
      return updateTip(tip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_FetchTotalAmount value) fetchTotalAmount,
    required TResult Function(_UpdateTip value) updateTip,
    required TResult Function(_UpdateCouponCode value) updateCouponCode,
    required TResult Function(_Initial value) initial,
  }) {
    return updateTip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_FetchTotalAmount value)? fetchTotalAmount,
    TResult? Function(_UpdateTip value)? updateTip,
    TResult? Function(_UpdateCouponCode value)? updateCouponCode,
    TResult? Function(_Initial value)? initial,
  }) {
    return updateTip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_FetchTotalAmount value)? fetchTotalAmount,
    TResult Function(_UpdateTip value)? updateTip,
    TResult Function(_UpdateCouponCode value)? updateCouponCode,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (updateTip != null) {
      return updateTip(this);
    }
    return orElse();
  }
}

abstract class _UpdateTip implements BookingAmountEvent {
  const factory _UpdateTip(final int tip) = _$UpdateTipImpl;

  int get tip;

  /// Create a copy of BookingAmountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTipImplCopyWith<_$UpdateTipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCouponCodeImplCopyWith<$Res> {
  factory _$$UpdateCouponCodeImplCopyWith(_$UpdateCouponCodeImpl value,
          $Res Function(_$UpdateCouponCodeImpl) then) =
      __$$UpdateCouponCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$UpdateCouponCodeImplCopyWithImpl<$Res>
    extends _$BookingAmountEventCopyWithImpl<$Res, _$UpdateCouponCodeImpl>
    implements _$$UpdateCouponCodeImplCopyWith<$Res> {
  __$$UpdateCouponCodeImplCopyWithImpl(_$UpdateCouponCodeImpl _value,
      $Res Function(_$UpdateCouponCodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingAmountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$UpdateCouponCodeImpl(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateCouponCodeImpl implements _UpdateCouponCode {
  const _$UpdateCouponCodeImpl(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'BookingAmountEvent.updateCouponCode(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCouponCodeImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of BookingAmountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCouponCodeImplCopyWith<_$UpdateCouponCodeImpl> get copyWith =>
      __$$UpdateCouponCodeImplCopyWithImpl<_$UpdateCouponCodeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function() fetchTotalAmount,
    required TResult Function(int tip) updateTip,
    required TResult Function(String code) updateCouponCode,
    required TResult Function(String categoryId) initial,
  }) {
    return updateCouponCode(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function()? fetchTotalAmount,
    TResult? Function(int tip)? updateTip,
    TResult? Function(String code)? updateCouponCode,
    TResult? Function(String categoryId)? initial,
  }) {
    return updateCouponCode?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? fetchTotalAmount,
    TResult Function(int tip)? updateTip,
    TResult Function(String code)? updateCouponCode,
    TResult Function(String categoryId)? initial,
    required TResult orElse(),
  }) {
    if (updateCouponCode != null) {
      return updateCouponCode(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_FetchTotalAmount value) fetchTotalAmount,
    required TResult Function(_UpdateTip value) updateTip,
    required TResult Function(_UpdateCouponCode value) updateCouponCode,
    required TResult Function(_Initial value) initial,
  }) {
    return updateCouponCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_FetchTotalAmount value)? fetchTotalAmount,
    TResult? Function(_UpdateTip value)? updateTip,
    TResult? Function(_UpdateCouponCode value)? updateCouponCode,
    TResult? Function(_Initial value)? initial,
  }) {
    return updateCouponCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_FetchTotalAmount value)? fetchTotalAmount,
    TResult Function(_UpdateTip value)? updateTip,
    TResult Function(_UpdateCouponCode value)? updateCouponCode,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (updateCouponCode != null) {
      return updateCouponCode(this);
    }
    return orElse();
  }
}

abstract class _UpdateCouponCode implements BookingAmountEvent {
  const factory _UpdateCouponCode(final String code) = _$UpdateCouponCodeImpl;

  String get code;

  /// Create a copy of BookingAmountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCouponCodeImplCopyWith<_$UpdateCouponCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryId});
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
    Object? categoryId = null,
  }) {
    return _then(_$InitialImpl(
      null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(this.categoryId);

  @override
  final String categoryId;

  @override
  String toString() {
    return 'BookingAmountEvent.initial(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

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
    required TResult Function() reset,
    required TResult Function() fetchTotalAmount,
    required TResult Function(int tip) updateTip,
    required TResult Function(String code) updateCouponCode,
    required TResult Function(String categoryId) initial,
  }) {
    return initial(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function()? fetchTotalAmount,
    TResult? Function(int tip)? updateTip,
    TResult? Function(String code)? updateCouponCode,
    TResult? Function(String categoryId)? initial,
  }) {
    return initial?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? fetchTotalAmount,
    TResult Function(int tip)? updateTip,
    TResult Function(String code)? updateCouponCode,
    TResult Function(String categoryId)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_FetchTotalAmount value) fetchTotalAmount,
    required TResult Function(_UpdateTip value) updateTip,
    required TResult Function(_UpdateCouponCode value) updateCouponCode,
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_FetchTotalAmount value)? fetchTotalAmount,
    TResult? Function(_UpdateTip value)? updateTip,
    TResult? Function(_UpdateCouponCode value)? updateCouponCode,
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_FetchTotalAmount value)? fetchTotalAmount,
    TResult Function(_UpdateTip value)? updateTip,
    TResult Function(_UpdateCouponCode value)? updateCouponCode,
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
  const factory _Initial(final String categoryId) = _$InitialImpl;

  String get categoryId;

  /// Create a copy of BookingAmountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookingAmountState {
  AmountModel? get amount => throw _privateConstructorUsedError;
  int get tip => throw _privateConstructorUsedError;
  String get couponCode => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  MainFailure? get failure => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;

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
  $Res call(
      {AmountModel? amount,
      int tip,
      String couponCode,
      bool isLoading,
      MainFailure? failure,
      String categoryId});

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
    Object? amount = freezed,
    Object? tip = null,
    Object? couponCode = null,
    Object? isLoading = null,
    Object? failure = freezed,
    Object? categoryId = null,
  }) {
    return _then(_value.copyWith(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as AmountModel?,
      tip: null == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as int,
      couponCode: null == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as MainFailure?,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call(
      {AmountModel? amount,
      int tip,
      String couponCode,
      bool isLoading,
      MainFailure? failure,
      String categoryId});

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
    Object? amount = freezed,
    Object? tip = null,
    Object? couponCode = null,
    Object? isLoading = null,
    Object? failure = freezed,
    Object? categoryId = null,
  }) {
    return _then(_$BookingAmountStateImpl(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as AmountModel?,
      tip: null == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as int,
      couponCode: null == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as MainFailure?,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BookingAmountStateImpl implements _BookingAmountState {
  const _$BookingAmountStateImpl(
      {required this.amount,
      required this.tip,
      required this.couponCode,
      required this.isLoading,
      required this.failure,
      required this.categoryId});

  @override
  final AmountModel? amount;
  @override
  final int tip;
  @override
  final String couponCode;
  @override
  final bool isLoading;
  @override
  final MainFailure? failure;
  @override
  final String categoryId;

  @override
  String toString() {
    return 'BookingAmountState(amount: $amount, tip: $tip, couponCode: $couponCode, isLoading: $isLoading, failure: $failure, categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingAmountStateImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.tip, tip) || other.tip == tip) &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, amount, tip, couponCode, isLoading, failure, categoryId);

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
      {required final AmountModel? amount,
      required final int tip,
      required final String couponCode,
      required final bool isLoading,
      required final MainFailure? failure,
      required final String categoryId}) = _$BookingAmountStateImpl;

  @override
  AmountModel? get amount;
  @override
  int get tip;
  @override
  String get couponCode;
  @override
  bool get isLoading;
  @override
  MainFailure? get failure;
  @override
  String get categoryId;

  /// Create a copy of BookingAmountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingAmountStateImplCopyWith<_$BookingAmountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
