// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_booking_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailedBookingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(String bookingId) getDeailedBooking,
    required TResult Function(String bookingId) cancelBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function(String bookingId)? getDeailedBooking,
    TResult? Function(String bookingId)? cancelBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(String bookingId)? getDeailedBooking,
    TResult Function(String bookingId)? cancelBooking,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_GetDeailedBooking value) getDeailedBooking,
    required TResult Function(_CancelBooking value) cancelBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_GetDeailedBooking value)? getDeailedBooking,
    TResult? Function(_CancelBooking value)? cancelBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_GetDeailedBooking value)? getDeailedBooking,
    TResult Function(_CancelBooking value)? cancelBooking,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedBookingEventCopyWith<$Res> {
  factory $DetailedBookingEventCopyWith(DetailedBookingEvent value,
          $Res Function(DetailedBookingEvent) then) =
      _$DetailedBookingEventCopyWithImpl<$Res, DetailedBookingEvent>;
}

/// @nodoc
class _$DetailedBookingEventCopyWithImpl<$Res,
        $Val extends DetailedBookingEvent>
    implements $DetailedBookingEventCopyWith<$Res> {
  _$DetailedBookingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailedBookingEvent
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
    extends _$DetailedBookingEventCopyWithImpl<$Res, _$ResetImpl>
    implements _$$ResetImplCopyWith<$Res> {
  __$$ResetImplCopyWithImpl(
      _$ResetImpl _value, $Res Function(_$ResetImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailedBookingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetImpl implements _Reset {
  const _$ResetImpl();

  @override
  String toString() {
    return 'DetailedBookingEvent.reset()';
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
    required TResult Function(String bookingId) getDeailedBooking,
    required TResult Function(String bookingId) cancelBooking,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function(String bookingId)? getDeailedBooking,
    TResult? Function(String bookingId)? cancelBooking,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(String bookingId)? getDeailedBooking,
    TResult Function(String bookingId)? cancelBooking,
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
    required TResult Function(_GetDeailedBooking value) getDeailedBooking,
    required TResult Function(_CancelBooking value) cancelBooking,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_GetDeailedBooking value)? getDeailedBooking,
    TResult? Function(_CancelBooking value)? cancelBooking,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_GetDeailedBooking value)? getDeailedBooking,
    TResult Function(_CancelBooking value)? cancelBooking,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements DetailedBookingEvent {
  const factory _Reset() = _$ResetImpl;
}

/// @nodoc
abstract class _$$GetDeailedBookingImplCopyWith<$Res> {
  factory _$$GetDeailedBookingImplCopyWith(_$GetDeailedBookingImpl value,
          $Res Function(_$GetDeailedBookingImpl) then) =
      __$$GetDeailedBookingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bookingId});
}

/// @nodoc
class __$$GetDeailedBookingImplCopyWithImpl<$Res>
    extends _$DetailedBookingEventCopyWithImpl<$Res, _$GetDeailedBookingImpl>
    implements _$$GetDeailedBookingImplCopyWith<$Res> {
  __$$GetDeailedBookingImplCopyWithImpl(_$GetDeailedBookingImpl _value,
      $Res Function(_$GetDeailedBookingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailedBookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
  }) {
    return _then(_$GetDeailedBookingImpl(
      null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetDeailedBookingImpl implements _GetDeailedBooking {
  const _$GetDeailedBookingImpl(this.bookingId);

  @override
  final String bookingId;

  @override
  String toString() {
    return 'DetailedBookingEvent.getDeailedBooking(bookingId: $bookingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDeailedBookingImpl &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingId);

  /// Create a copy of DetailedBookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDeailedBookingImplCopyWith<_$GetDeailedBookingImpl> get copyWith =>
      __$$GetDeailedBookingImplCopyWithImpl<_$GetDeailedBookingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(String bookingId) getDeailedBooking,
    required TResult Function(String bookingId) cancelBooking,
  }) {
    return getDeailedBooking(bookingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function(String bookingId)? getDeailedBooking,
    TResult? Function(String bookingId)? cancelBooking,
  }) {
    return getDeailedBooking?.call(bookingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(String bookingId)? getDeailedBooking,
    TResult Function(String bookingId)? cancelBooking,
    required TResult orElse(),
  }) {
    if (getDeailedBooking != null) {
      return getDeailedBooking(bookingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_GetDeailedBooking value) getDeailedBooking,
    required TResult Function(_CancelBooking value) cancelBooking,
  }) {
    return getDeailedBooking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_GetDeailedBooking value)? getDeailedBooking,
    TResult? Function(_CancelBooking value)? cancelBooking,
  }) {
    return getDeailedBooking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_GetDeailedBooking value)? getDeailedBooking,
    TResult Function(_CancelBooking value)? cancelBooking,
    required TResult orElse(),
  }) {
    if (getDeailedBooking != null) {
      return getDeailedBooking(this);
    }
    return orElse();
  }
}

abstract class _GetDeailedBooking implements DetailedBookingEvent {
  const factory _GetDeailedBooking(final String bookingId) =
      _$GetDeailedBookingImpl;

  String get bookingId;

  /// Create a copy of DetailedBookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDeailedBookingImplCopyWith<_$GetDeailedBookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelBookingImplCopyWith<$Res> {
  factory _$$CancelBookingImplCopyWith(
          _$CancelBookingImpl value, $Res Function(_$CancelBookingImpl) then) =
      __$$CancelBookingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bookingId});
}

/// @nodoc
class __$$CancelBookingImplCopyWithImpl<$Res>
    extends _$DetailedBookingEventCopyWithImpl<$Res, _$CancelBookingImpl>
    implements _$$CancelBookingImplCopyWith<$Res> {
  __$$CancelBookingImplCopyWithImpl(
      _$CancelBookingImpl _value, $Res Function(_$CancelBookingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailedBookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
  }) {
    return _then(_$CancelBookingImpl(
      null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CancelBookingImpl implements _CancelBooking {
  const _$CancelBookingImpl(this.bookingId);

  @override
  final String bookingId;

  @override
  String toString() {
    return 'DetailedBookingEvent.cancelBooking(bookingId: $bookingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelBookingImpl &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingId);

  /// Create a copy of DetailedBookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelBookingImplCopyWith<_$CancelBookingImpl> get copyWith =>
      __$$CancelBookingImplCopyWithImpl<_$CancelBookingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(String bookingId) getDeailedBooking,
    required TResult Function(String bookingId) cancelBooking,
  }) {
    return cancelBooking(bookingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function(String bookingId)? getDeailedBooking,
    TResult? Function(String bookingId)? cancelBooking,
  }) {
    return cancelBooking?.call(bookingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(String bookingId)? getDeailedBooking,
    TResult Function(String bookingId)? cancelBooking,
    required TResult orElse(),
  }) {
    if (cancelBooking != null) {
      return cancelBooking(bookingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_GetDeailedBooking value) getDeailedBooking,
    required TResult Function(_CancelBooking value) cancelBooking,
  }) {
    return cancelBooking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_GetDeailedBooking value)? getDeailedBooking,
    TResult? Function(_CancelBooking value)? cancelBooking,
  }) {
    return cancelBooking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_GetDeailedBooking value)? getDeailedBooking,
    TResult Function(_CancelBooking value)? cancelBooking,
    required TResult orElse(),
  }) {
    if (cancelBooking != null) {
      return cancelBooking(this);
    }
    return orElse();
  }
}

abstract class _CancelBooking implements DetailedBookingEvent {
  const factory _CancelBooking(final String bookingId) = _$CancelBookingImpl;

  String get bookingId;

  /// Create a copy of DetailedBookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CancelBookingImplCopyWith<_$CancelBookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailedBookingState {
  bool get isLoading => throw _privateConstructorUsedError;
  DetailedBookingModel? get detailedBookingModel =>
      throw _privateConstructorUsedError;
  MainFailure? get failure => throw _privateConstructorUsedError;

  /// Create a copy of DetailedBookingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailedBookingStateCopyWith<DetailedBookingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedBookingStateCopyWith<$Res> {
  factory $DetailedBookingStateCopyWith(DetailedBookingState value,
          $Res Function(DetailedBookingState) then) =
      _$DetailedBookingStateCopyWithImpl<$Res, DetailedBookingState>;
  @useResult
  $Res call(
      {bool isLoading,
      DetailedBookingModel? detailedBookingModel,
      MainFailure? failure});

  $MainFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$DetailedBookingStateCopyWithImpl<$Res,
        $Val extends DetailedBookingState>
    implements $DetailedBookingStateCopyWith<$Res> {
  _$DetailedBookingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailedBookingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? detailedBookingModel = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      detailedBookingModel: freezed == detailedBookingModel
          ? _value.detailedBookingModel
          : detailedBookingModel // ignore: cast_nullable_to_non_nullable
              as DetailedBookingModel?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as MainFailure?,
    ) as $Val);
  }

  /// Create a copy of DetailedBookingState
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
abstract class _$$DetailedBookingStateImplCopyWith<$Res>
    implements $DetailedBookingStateCopyWith<$Res> {
  factory _$$DetailedBookingStateImplCopyWith(_$DetailedBookingStateImpl value,
          $Res Function(_$DetailedBookingStateImpl) then) =
      __$$DetailedBookingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      DetailedBookingModel? detailedBookingModel,
      MainFailure? failure});

  @override
  $MainFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$DetailedBookingStateImplCopyWithImpl<$Res>
    extends _$DetailedBookingStateCopyWithImpl<$Res, _$DetailedBookingStateImpl>
    implements _$$DetailedBookingStateImplCopyWith<$Res> {
  __$$DetailedBookingStateImplCopyWithImpl(_$DetailedBookingStateImpl _value,
      $Res Function(_$DetailedBookingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailedBookingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? detailedBookingModel = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$DetailedBookingStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      detailedBookingModel: freezed == detailedBookingModel
          ? _value.detailedBookingModel
          : detailedBookingModel // ignore: cast_nullable_to_non_nullable
              as DetailedBookingModel?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as MainFailure?,
    ));
  }
}

/// @nodoc

class _$DetailedBookingStateImpl implements _DetailedBookingState {
  const _$DetailedBookingStateImpl(
      {required this.isLoading,
      required this.detailedBookingModel,
      required this.failure});

  @override
  final bool isLoading;
  @override
  final DetailedBookingModel? detailedBookingModel;
  @override
  final MainFailure? failure;

  @override
  String toString() {
    return 'DetailedBookingState(isLoading: $isLoading, detailedBookingModel: $detailedBookingModel, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedBookingStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.detailedBookingModel, detailedBookingModel) ||
                other.detailedBookingModel == detailedBookingModel) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, detailedBookingModel, failure);

  /// Create a copy of DetailedBookingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedBookingStateImplCopyWith<_$DetailedBookingStateImpl>
      get copyWith =>
          __$$DetailedBookingStateImplCopyWithImpl<_$DetailedBookingStateImpl>(
              this, _$identity);
}

abstract class _DetailedBookingState implements DetailedBookingState {
  const factory _DetailedBookingState(
      {required final bool isLoading,
      required final DetailedBookingModel? detailedBookingModel,
      required final MainFailure? failure}) = _$DetailedBookingStateImpl;

  @override
  bool get isLoading;
  @override
  DetailedBookingModel? get detailedBookingModel;
  @override
  MainFailure? get failure;

  /// Create a copy of DetailedBookingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailedBookingStateImplCopyWith<_$DetailedBookingStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
