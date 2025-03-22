// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupons_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CouponsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCoupons,
    required TResult Function(CouponModel coupon) selectCoupon,
    required TResult Function() removeCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCoupons,
    TResult? Function(CouponModel coupon)? selectCoupon,
    TResult? Function()? removeCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCoupons,
    TResult Function(CouponModel coupon)? selectCoupon,
    TResult Function()? removeCoupon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCoupons value) getCoupons,
    required TResult Function(_SelectCoupon value) selectCoupon,
    required TResult Function(_RemoveCoupon value) removeCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCoupons value)? getCoupons,
    TResult? Function(_SelectCoupon value)? selectCoupon,
    TResult? Function(_RemoveCoupon value)? removeCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCoupons value)? getCoupons,
    TResult Function(_SelectCoupon value)? selectCoupon,
    TResult Function(_RemoveCoupon value)? removeCoupon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponsEventCopyWith<$Res> {
  factory $CouponsEventCopyWith(
          CouponsEvent value, $Res Function(CouponsEvent) then) =
      _$CouponsEventCopyWithImpl<$Res, CouponsEvent>;
}

/// @nodoc
class _$CouponsEventCopyWithImpl<$Res, $Val extends CouponsEvent>
    implements $CouponsEventCopyWith<$Res> {
  _$CouponsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CouponsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetCouponsImplCopyWith<$Res> {
  factory _$$GetCouponsImplCopyWith(
          _$GetCouponsImpl value, $Res Function(_$GetCouponsImpl) then) =
      __$$GetCouponsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCouponsImplCopyWithImpl<$Res>
    extends _$CouponsEventCopyWithImpl<$Res, _$GetCouponsImpl>
    implements _$$GetCouponsImplCopyWith<$Res> {
  __$$GetCouponsImplCopyWithImpl(
      _$GetCouponsImpl _value, $Res Function(_$GetCouponsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CouponsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCouponsImpl implements _GetCoupons {
  const _$GetCouponsImpl();

  @override
  String toString() {
    return 'CouponsEvent.getCoupons()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCouponsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCoupons,
    required TResult Function(CouponModel coupon) selectCoupon,
    required TResult Function() removeCoupon,
  }) {
    return getCoupons();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCoupons,
    TResult? Function(CouponModel coupon)? selectCoupon,
    TResult? Function()? removeCoupon,
  }) {
    return getCoupons?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCoupons,
    TResult Function(CouponModel coupon)? selectCoupon,
    TResult Function()? removeCoupon,
    required TResult orElse(),
  }) {
    if (getCoupons != null) {
      return getCoupons();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCoupons value) getCoupons,
    required TResult Function(_SelectCoupon value) selectCoupon,
    required TResult Function(_RemoveCoupon value) removeCoupon,
  }) {
    return getCoupons(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCoupons value)? getCoupons,
    TResult? Function(_SelectCoupon value)? selectCoupon,
    TResult? Function(_RemoveCoupon value)? removeCoupon,
  }) {
    return getCoupons?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCoupons value)? getCoupons,
    TResult Function(_SelectCoupon value)? selectCoupon,
    TResult Function(_RemoveCoupon value)? removeCoupon,
    required TResult orElse(),
  }) {
    if (getCoupons != null) {
      return getCoupons(this);
    }
    return orElse();
  }
}

abstract class _GetCoupons implements CouponsEvent {
  const factory _GetCoupons() = _$GetCouponsImpl;
}

/// @nodoc
abstract class _$$SelectCouponImplCopyWith<$Res> {
  factory _$$SelectCouponImplCopyWith(
          _$SelectCouponImpl value, $Res Function(_$SelectCouponImpl) then) =
      __$$SelectCouponImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CouponModel coupon});
}

/// @nodoc
class __$$SelectCouponImplCopyWithImpl<$Res>
    extends _$CouponsEventCopyWithImpl<$Res, _$SelectCouponImpl>
    implements _$$SelectCouponImplCopyWith<$Res> {
  __$$SelectCouponImplCopyWithImpl(
      _$SelectCouponImpl _value, $Res Function(_$SelectCouponImpl) _then)
      : super(_value, _then);

  /// Create a copy of CouponsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coupon = null,
  }) {
    return _then(_$SelectCouponImpl(
      null == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as CouponModel,
    ));
  }
}

/// @nodoc

class _$SelectCouponImpl implements _SelectCoupon {
  const _$SelectCouponImpl(this.coupon);

  @override
  final CouponModel coupon;

  @override
  String toString() {
    return 'CouponsEvent.selectCoupon(coupon: $coupon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectCouponImpl &&
            (identical(other.coupon, coupon) || other.coupon == coupon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coupon);

  /// Create a copy of CouponsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectCouponImplCopyWith<_$SelectCouponImpl> get copyWith =>
      __$$SelectCouponImplCopyWithImpl<_$SelectCouponImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCoupons,
    required TResult Function(CouponModel coupon) selectCoupon,
    required TResult Function() removeCoupon,
  }) {
    return selectCoupon(coupon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCoupons,
    TResult? Function(CouponModel coupon)? selectCoupon,
    TResult? Function()? removeCoupon,
  }) {
    return selectCoupon?.call(coupon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCoupons,
    TResult Function(CouponModel coupon)? selectCoupon,
    TResult Function()? removeCoupon,
    required TResult orElse(),
  }) {
    if (selectCoupon != null) {
      return selectCoupon(coupon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCoupons value) getCoupons,
    required TResult Function(_SelectCoupon value) selectCoupon,
    required TResult Function(_RemoveCoupon value) removeCoupon,
  }) {
    return selectCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCoupons value)? getCoupons,
    TResult? Function(_SelectCoupon value)? selectCoupon,
    TResult? Function(_RemoveCoupon value)? removeCoupon,
  }) {
    return selectCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCoupons value)? getCoupons,
    TResult Function(_SelectCoupon value)? selectCoupon,
    TResult Function(_RemoveCoupon value)? removeCoupon,
    required TResult orElse(),
  }) {
    if (selectCoupon != null) {
      return selectCoupon(this);
    }
    return orElse();
  }
}

abstract class _SelectCoupon implements CouponsEvent {
  const factory _SelectCoupon(final CouponModel coupon) = _$SelectCouponImpl;

  CouponModel get coupon;

  /// Create a copy of CouponsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectCouponImplCopyWith<_$SelectCouponImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveCouponImplCopyWith<$Res> {
  factory _$$RemoveCouponImplCopyWith(
          _$RemoveCouponImpl value, $Res Function(_$RemoveCouponImpl) then) =
      __$$RemoveCouponImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveCouponImplCopyWithImpl<$Res>
    extends _$CouponsEventCopyWithImpl<$Res, _$RemoveCouponImpl>
    implements _$$RemoveCouponImplCopyWith<$Res> {
  __$$RemoveCouponImplCopyWithImpl(
      _$RemoveCouponImpl _value, $Res Function(_$RemoveCouponImpl) _then)
      : super(_value, _then);

  /// Create a copy of CouponsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RemoveCouponImpl implements _RemoveCoupon {
  const _$RemoveCouponImpl();

  @override
  String toString() {
    return 'CouponsEvent.removeCoupon()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveCouponImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCoupons,
    required TResult Function(CouponModel coupon) selectCoupon,
    required TResult Function() removeCoupon,
  }) {
    return removeCoupon();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCoupons,
    TResult? Function(CouponModel coupon)? selectCoupon,
    TResult? Function()? removeCoupon,
  }) {
    return removeCoupon?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCoupons,
    TResult Function(CouponModel coupon)? selectCoupon,
    TResult Function()? removeCoupon,
    required TResult orElse(),
  }) {
    if (removeCoupon != null) {
      return removeCoupon();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCoupons value) getCoupons,
    required TResult Function(_SelectCoupon value) selectCoupon,
    required TResult Function(_RemoveCoupon value) removeCoupon,
  }) {
    return removeCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCoupons value)? getCoupons,
    TResult? Function(_SelectCoupon value)? selectCoupon,
    TResult? Function(_RemoveCoupon value)? removeCoupon,
  }) {
    return removeCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCoupons value)? getCoupons,
    TResult Function(_SelectCoupon value)? selectCoupon,
    TResult Function(_RemoveCoupon value)? removeCoupon,
    required TResult orElse(),
  }) {
    if (removeCoupon != null) {
      return removeCoupon(this);
    }
    return orElse();
  }
}

abstract class _RemoveCoupon implements CouponsEvent {
  const factory _RemoveCoupon() = _$RemoveCouponImpl;
}

/// @nodoc
mixin _$CouponsState {
  List<CouponModel> get coupons => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  MainFailure? get failure => throw _privateConstructorUsedError;
  CouponModel? get selectedCoupon => throw _privateConstructorUsedError;

  /// Create a copy of CouponsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CouponsStateCopyWith<CouponsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponsStateCopyWith<$Res> {
  factory $CouponsStateCopyWith(
          CouponsState value, $Res Function(CouponsState) then) =
      _$CouponsStateCopyWithImpl<$Res, CouponsState>;
  @useResult
  $Res call(
      {List<CouponModel> coupons,
      bool isLoading,
      MainFailure? failure,
      CouponModel? selectedCoupon});

  $MainFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$CouponsStateCopyWithImpl<$Res, $Val extends CouponsState>
    implements $CouponsStateCopyWith<$Res> {
  _$CouponsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CouponsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coupons = null,
    Object? isLoading = null,
    Object? failure = freezed,
    Object? selectedCoupon = freezed,
  }) {
    return _then(_value.copyWith(
      coupons: null == coupons
          ? _value.coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<CouponModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as MainFailure?,
      selectedCoupon: freezed == selectedCoupon
          ? _value.selectedCoupon
          : selectedCoupon // ignore: cast_nullable_to_non_nullable
              as CouponModel?,
    ) as $Val);
  }

  /// Create a copy of CouponsState
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
abstract class _$$CouponsStateImplCopyWith<$Res>
    implements $CouponsStateCopyWith<$Res> {
  factory _$$CouponsStateImplCopyWith(
          _$CouponsStateImpl value, $Res Function(_$CouponsStateImpl) then) =
      __$$CouponsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CouponModel> coupons,
      bool isLoading,
      MainFailure? failure,
      CouponModel? selectedCoupon});

  @override
  $MainFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$CouponsStateImplCopyWithImpl<$Res>
    extends _$CouponsStateCopyWithImpl<$Res, _$CouponsStateImpl>
    implements _$$CouponsStateImplCopyWith<$Res> {
  __$$CouponsStateImplCopyWithImpl(
      _$CouponsStateImpl _value, $Res Function(_$CouponsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CouponsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coupons = null,
    Object? isLoading = null,
    Object? failure = freezed,
    Object? selectedCoupon = freezed,
  }) {
    return _then(_$CouponsStateImpl(
      coupons: null == coupons
          ? _value._coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<CouponModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as MainFailure?,
      selectedCoupon: freezed == selectedCoupon
          ? _value.selectedCoupon
          : selectedCoupon // ignore: cast_nullable_to_non_nullable
              as CouponModel?,
    ));
  }
}

/// @nodoc

class _$CouponsStateImpl implements _CouponsState {
  _$CouponsStateImpl(
      {required final List<CouponModel> coupons,
      required this.isLoading,
      required this.failure,
      required this.selectedCoupon})
      : _coupons = coupons;

  final List<CouponModel> _coupons;
  @override
  List<CouponModel> get coupons {
    if (_coupons is EqualUnmodifiableListView) return _coupons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coupons);
  }

  @override
  final bool isLoading;
  @override
  final MainFailure? failure;
  @override
  final CouponModel? selectedCoupon;

  @override
  String toString() {
    return 'CouponsState(coupons: $coupons, isLoading: $isLoading, failure: $failure, selectedCoupon: $selectedCoupon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponsStateImpl &&
            const DeepCollectionEquality().equals(other._coupons, _coupons) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.selectedCoupon, selectedCoupon) ||
                other.selectedCoupon == selectedCoupon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_coupons),
      isLoading,
      failure,
      selectedCoupon);

  /// Create a copy of CouponsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponsStateImplCopyWith<_$CouponsStateImpl> get copyWith =>
      __$$CouponsStateImplCopyWithImpl<_$CouponsStateImpl>(this, _$identity);
}

abstract class _CouponsState implements CouponsState {
  factory _CouponsState(
      {required final List<CouponModel> coupons,
      required final bool isLoading,
      required final MainFailure? failure,
      required final CouponModel? selectedCoupon}) = _$CouponsStateImpl;

  @override
  List<CouponModel> get coupons;
  @override
  bool get isLoading;
  @override
  MainFailure? get failure;
  @override
  CouponModel? get selectedCoupon;

  /// Create a copy of CouponsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CouponsStateImplCopyWith<_$CouponsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
