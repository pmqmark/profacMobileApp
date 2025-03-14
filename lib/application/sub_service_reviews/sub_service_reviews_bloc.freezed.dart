// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_service_reviews_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubServiceReviewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String subServiceId) getReviews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String subServiceId)? getReviews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String subServiceId)? getReviews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetReviews value) getReviews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetReviews value)? getReviews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetReviews value)? getReviews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubServiceReviewsEventCopyWith<$Res> {
  factory $SubServiceReviewsEventCopyWith(SubServiceReviewsEvent value,
          $Res Function(SubServiceReviewsEvent) then) =
      _$SubServiceReviewsEventCopyWithImpl<$Res, SubServiceReviewsEvent>;
}

/// @nodoc
class _$SubServiceReviewsEventCopyWithImpl<$Res,
        $Val extends SubServiceReviewsEvent>
    implements $SubServiceReviewsEventCopyWith<$Res> {
  _$SubServiceReviewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubServiceReviewsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SubServiceReviewsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubServiceReviewsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'SubServiceReviewsEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String subServiceId) getReviews,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String subServiceId)? getReviews,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String subServiceId)? getReviews,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetReviews value) getReviews,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetReviews value)? getReviews,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetReviews value)? getReviews,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SubServiceReviewsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetReviewsImplCopyWith<$Res> {
  factory _$$GetReviewsImplCopyWith(
          _$GetReviewsImpl value, $Res Function(_$GetReviewsImpl) then) =
      __$$GetReviewsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String subServiceId});
}

/// @nodoc
class __$$GetReviewsImplCopyWithImpl<$Res>
    extends _$SubServiceReviewsEventCopyWithImpl<$Res, _$GetReviewsImpl>
    implements _$$GetReviewsImplCopyWith<$Res> {
  __$$GetReviewsImplCopyWithImpl(
      _$GetReviewsImpl _value, $Res Function(_$GetReviewsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubServiceReviewsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subServiceId = null,
  }) {
    return _then(_$GetReviewsImpl(
      null == subServiceId
          ? _value.subServiceId
          : subServiceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetReviewsImpl implements _GetReviews {
  const _$GetReviewsImpl(this.subServiceId);

  @override
  final String subServiceId;

  @override
  String toString() {
    return 'SubServiceReviewsEvent.getReviews(subServiceId: $subServiceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetReviewsImpl &&
            (identical(other.subServiceId, subServiceId) ||
                other.subServiceId == subServiceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subServiceId);

  /// Create a copy of SubServiceReviewsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetReviewsImplCopyWith<_$GetReviewsImpl> get copyWith =>
      __$$GetReviewsImplCopyWithImpl<_$GetReviewsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String subServiceId) getReviews,
  }) {
    return getReviews(subServiceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String subServiceId)? getReviews,
  }) {
    return getReviews?.call(subServiceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String subServiceId)? getReviews,
    required TResult orElse(),
  }) {
    if (getReviews != null) {
      return getReviews(subServiceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetReviews value) getReviews,
  }) {
    return getReviews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetReviews value)? getReviews,
  }) {
    return getReviews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetReviews value)? getReviews,
    required TResult orElse(),
  }) {
    if (getReviews != null) {
      return getReviews(this);
    }
    return orElse();
  }
}

abstract class _GetReviews implements SubServiceReviewsEvent {
  const factory _GetReviews(final String subServiceId) = _$GetReviewsImpl;

  String get subServiceId;

  /// Create a copy of SubServiceReviewsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetReviewsImplCopyWith<_$GetReviewsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubServiceReviewsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<ReviewModel> get reviews => throw _privateConstructorUsedError;
  Option<Either<MainFailure, void>> get failureOrReviews =>
      throw _privateConstructorUsedError;

  /// Create a copy of SubServiceReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubServiceReviewsStateCopyWith<SubServiceReviewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubServiceReviewsStateCopyWith<$Res> {
  factory $SubServiceReviewsStateCopyWith(SubServiceReviewsState value,
          $Res Function(SubServiceReviewsState) then) =
      _$SubServiceReviewsStateCopyWithImpl<$Res, SubServiceReviewsState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<ReviewModel> reviews,
      Option<Either<MainFailure, void>> failureOrReviews});
}

/// @nodoc
class _$SubServiceReviewsStateCopyWithImpl<$Res,
        $Val extends SubServiceReviewsState>
    implements $SubServiceReviewsStateCopyWith<$Res> {
  _$SubServiceReviewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubServiceReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? reviews = null,
    Object? failureOrReviews = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewModel>,
      failureOrReviews: null == failureOrReviews
          ? _value.failureOrReviews
          : failureOrReviews // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, void>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubServiceReviewsStateImplCopyWith<$Res>
    implements $SubServiceReviewsStateCopyWith<$Res> {
  factory _$$SubServiceReviewsStateImplCopyWith(
          _$SubServiceReviewsStateImpl value,
          $Res Function(_$SubServiceReviewsStateImpl) then) =
      __$$SubServiceReviewsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<ReviewModel> reviews,
      Option<Either<MainFailure, void>> failureOrReviews});
}

/// @nodoc
class __$$SubServiceReviewsStateImplCopyWithImpl<$Res>
    extends _$SubServiceReviewsStateCopyWithImpl<$Res,
        _$SubServiceReviewsStateImpl>
    implements _$$SubServiceReviewsStateImplCopyWith<$Res> {
  __$$SubServiceReviewsStateImplCopyWithImpl(
      _$SubServiceReviewsStateImpl _value,
      $Res Function(_$SubServiceReviewsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubServiceReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? reviews = null,
    Object? failureOrReviews = null,
  }) {
    return _then(_$SubServiceReviewsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewModel>,
      failureOrReviews: null == failureOrReviews
          ? _value.failureOrReviews
          : failureOrReviews // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, void>>,
    ));
  }
}

/// @nodoc

class _$SubServiceReviewsStateImpl implements _SubServiceReviewsState {
  const _$SubServiceReviewsStateImpl(
      {required this.isLoading,
      required final List<ReviewModel> reviews,
      required this.failureOrReviews})
      : _reviews = reviews;

  @override
  final bool isLoading;
  final List<ReviewModel> _reviews;
  @override
  List<ReviewModel> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  final Option<Either<MainFailure, void>> failureOrReviews;

  @override
  String toString() {
    return 'SubServiceReviewsState(isLoading: $isLoading, reviews: $reviews, failureOrReviews: $failureOrReviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubServiceReviewsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.failureOrReviews, failureOrReviews) ||
                other.failureOrReviews == failureOrReviews));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_reviews), failureOrReviews);

  /// Create a copy of SubServiceReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubServiceReviewsStateImplCopyWith<_$SubServiceReviewsStateImpl>
      get copyWith => __$$SubServiceReviewsStateImplCopyWithImpl<
          _$SubServiceReviewsStateImpl>(this, _$identity);
}

abstract class _SubServiceReviewsState implements SubServiceReviewsState {
  const factory _SubServiceReviewsState(
          {required final bool isLoading,
          required final List<ReviewModel> reviews,
          required final Option<Either<MainFailure, void>> failureOrReviews}) =
      _$SubServiceReviewsStateImpl;

  @override
  bool get isLoading;
  @override
  List<ReviewModel> get reviews;
  @override
  Option<Either<MainFailure, void>> get failureOrReviews;

  /// Create a copy of SubServiceReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubServiceReviewsStateImplCopyWith<_$SubServiceReviewsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
