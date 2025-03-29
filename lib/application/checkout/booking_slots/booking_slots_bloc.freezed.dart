// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_slots_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookingSlotsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(String categoryId) getSlots,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function(String categoryId)? getSlots,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(String categoryId)? getSlots,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_GetSlots value) getSlots,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_GetSlots value)? getSlots,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_GetSlots value)? getSlots,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingSlotsEventCopyWith<$Res> {
  factory $BookingSlotsEventCopyWith(
          BookingSlotsEvent value, $Res Function(BookingSlotsEvent) then) =
      _$BookingSlotsEventCopyWithImpl<$Res, BookingSlotsEvent>;
}

/// @nodoc
class _$BookingSlotsEventCopyWithImpl<$Res, $Val extends BookingSlotsEvent>
    implements $BookingSlotsEventCopyWith<$Res> {
  _$BookingSlotsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingSlotsEvent
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
    extends _$BookingSlotsEventCopyWithImpl<$Res, _$ResetImpl>
    implements _$$ResetImplCopyWith<$Res> {
  __$$ResetImplCopyWithImpl(
      _$ResetImpl _value, $Res Function(_$ResetImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingSlotsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetImpl implements _Reset {
  const _$ResetImpl();

  @override
  String toString() {
    return 'BookingSlotsEvent.reset()';
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
    required TResult Function(String categoryId) getSlots,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function(String categoryId)? getSlots,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(String categoryId)? getSlots,
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
    required TResult Function(_GetSlots value) getSlots,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_GetSlots value)? getSlots,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_GetSlots value)? getSlots,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements BookingSlotsEvent {
  const factory _Reset() = _$ResetImpl;
}

/// @nodoc
abstract class _$$GetSlotsImplCopyWith<$Res> {
  factory _$$GetSlotsImplCopyWith(
          _$GetSlotsImpl value, $Res Function(_$GetSlotsImpl) then) =
      __$$GetSlotsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryId});
}

/// @nodoc
class __$$GetSlotsImplCopyWithImpl<$Res>
    extends _$BookingSlotsEventCopyWithImpl<$Res, _$GetSlotsImpl>
    implements _$$GetSlotsImplCopyWith<$Res> {
  __$$GetSlotsImplCopyWithImpl(
      _$GetSlotsImpl _value, $Res Function(_$GetSlotsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingSlotsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_$GetSlotsImpl(
      null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSlotsImpl implements _GetSlots {
  const _$GetSlotsImpl(this.categoryId);

  @override
  final String categoryId;

  @override
  String toString() {
    return 'BookingSlotsEvent.getSlots(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSlotsImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  /// Create a copy of BookingSlotsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSlotsImplCopyWith<_$GetSlotsImpl> get copyWith =>
      __$$GetSlotsImplCopyWithImpl<_$GetSlotsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(String categoryId) getSlots,
  }) {
    return getSlots(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function(String categoryId)? getSlots,
  }) {
    return getSlots?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(String categoryId)? getSlots,
    required TResult orElse(),
  }) {
    if (getSlots != null) {
      return getSlots(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_GetSlots value) getSlots,
  }) {
    return getSlots(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_GetSlots value)? getSlots,
  }) {
    return getSlots?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_GetSlots value)? getSlots,
    required TResult orElse(),
  }) {
    if (getSlots != null) {
      return getSlots(this);
    }
    return orElse();
  }
}

abstract class _GetSlots implements BookingSlotsEvent {
  const factory _GetSlots(final String categoryId) = _$GetSlotsImpl;

  String get categoryId;

  /// Create a copy of BookingSlotsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSlotsImplCopyWith<_$GetSlotsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookingSlotsState {
  List<SlotDateModel> get bookingSlots => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  MainFailure? get failure => throw _privateConstructorUsedError;

  /// Create a copy of BookingSlotsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingSlotsStateCopyWith<BookingSlotsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingSlotsStateCopyWith<$Res> {
  factory $BookingSlotsStateCopyWith(
          BookingSlotsState value, $Res Function(BookingSlotsState) then) =
      _$BookingSlotsStateCopyWithImpl<$Res, BookingSlotsState>;
  @useResult
  $Res call(
      {List<SlotDateModel> bookingSlots, bool isLoading, MainFailure? failure});

  $MainFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$BookingSlotsStateCopyWithImpl<$Res, $Val extends BookingSlotsState>
    implements $BookingSlotsStateCopyWith<$Res> {
  _$BookingSlotsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingSlotsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingSlots = null,
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      bookingSlots: null == bookingSlots
          ? _value.bookingSlots
          : bookingSlots // ignore: cast_nullable_to_non_nullable
              as List<SlotDateModel>,
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

  /// Create a copy of BookingSlotsState
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
abstract class _$$BookingSlotsStateImplCopyWith<$Res>
    implements $BookingSlotsStateCopyWith<$Res> {
  factory _$$BookingSlotsStateImplCopyWith(_$BookingSlotsStateImpl value,
          $Res Function(_$BookingSlotsStateImpl) then) =
      __$$BookingSlotsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SlotDateModel> bookingSlots, bool isLoading, MainFailure? failure});

  @override
  $MainFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$BookingSlotsStateImplCopyWithImpl<$Res>
    extends _$BookingSlotsStateCopyWithImpl<$Res, _$BookingSlotsStateImpl>
    implements _$$BookingSlotsStateImplCopyWith<$Res> {
  __$$BookingSlotsStateImplCopyWithImpl(_$BookingSlotsStateImpl _value,
      $Res Function(_$BookingSlotsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingSlotsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingSlots = null,
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_$BookingSlotsStateImpl(
      bookingSlots: null == bookingSlots
          ? _value._bookingSlots
          : bookingSlots // ignore: cast_nullable_to_non_nullable
              as List<SlotDateModel>,
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

class _$BookingSlotsStateImpl implements _BookingSlotsState {
  const _$BookingSlotsStateImpl(
      {required final List<SlotDateModel> bookingSlots,
      required this.isLoading,
      required this.failure})
      : _bookingSlots = bookingSlots;

  final List<SlotDateModel> _bookingSlots;
  @override
  List<SlotDateModel> get bookingSlots {
    if (_bookingSlots is EqualUnmodifiableListView) return _bookingSlots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookingSlots);
  }

  @override
  final bool isLoading;
  @override
  final MainFailure? failure;

  @override
  String toString() {
    return 'BookingSlotsState(bookingSlots: $bookingSlots, isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingSlotsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._bookingSlots, _bookingSlots) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_bookingSlots), isLoading, failure);

  /// Create a copy of BookingSlotsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingSlotsStateImplCopyWith<_$BookingSlotsStateImpl> get copyWith =>
      __$$BookingSlotsStateImplCopyWithImpl<_$BookingSlotsStateImpl>(
          this, _$identity);
}

abstract class _BookingSlotsState implements BookingSlotsState {
  const factory _BookingSlotsState(
      {required final List<SlotDateModel> bookingSlots,
      required final bool isLoading,
      required final MainFailure? failure}) = _$BookingSlotsStateImpl;

  @override
  List<SlotDateModel> get bookingSlots;
  @override
  bool get isLoading;
  @override
  MainFailure? get failure;

  /// Create a copy of BookingSlotsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingSlotsStateImplCopyWith<_$BookingSlotsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
