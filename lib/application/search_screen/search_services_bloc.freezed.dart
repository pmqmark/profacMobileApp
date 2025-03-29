// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_services_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchServicesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(String query) search,
    required TResult Function() popularAndRecentSearches,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function(String query)? search,
    TResult? Function()? popularAndRecentSearches,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(String query)? search,
    TResult Function()? popularAndRecentSearches,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_Search value) search,
    required TResult Function(_popularAndRecentSearches value)
        popularAndRecentSearches,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_Search value)? search,
    TResult? Function(_popularAndRecentSearches value)?
        popularAndRecentSearches,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Search value)? search,
    TResult Function(_popularAndRecentSearches value)? popularAndRecentSearches,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchServicesEventCopyWith<$Res> {
  factory $SearchServicesEventCopyWith(
          SearchServicesEvent value, $Res Function(SearchServicesEvent) then) =
      _$SearchServicesEventCopyWithImpl<$Res, SearchServicesEvent>;
}

/// @nodoc
class _$SearchServicesEventCopyWithImpl<$Res, $Val extends SearchServicesEvent>
    implements $SearchServicesEventCopyWith<$Res> {
  _$SearchServicesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchServicesEvent
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
    extends _$SearchServicesEventCopyWithImpl<$Res, _$ResetImpl>
    implements _$$ResetImplCopyWith<$Res> {
  __$$ResetImplCopyWithImpl(
      _$ResetImpl _value, $Res Function(_$ResetImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchServicesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetImpl implements _Reset {
  const _$ResetImpl();

  @override
  String toString() {
    return 'SearchServicesEvent.reset()';
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
    required TResult Function(String query) search,
    required TResult Function() popularAndRecentSearches,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function(String query)? search,
    TResult? Function()? popularAndRecentSearches,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(String query)? search,
    TResult Function()? popularAndRecentSearches,
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
    required TResult Function(_Search value) search,
    required TResult Function(_popularAndRecentSearches value)
        popularAndRecentSearches,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_Search value)? search,
    TResult? Function(_popularAndRecentSearches value)?
        popularAndRecentSearches,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Search value)? search,
    TResult Function(_popularAndRecentSearches value)? popularAndRecentSearches,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements SearchServicesEvent {
  const factory _Reset() = _$ResetImpl;
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$SearchServicesEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchServicesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchImpl implements _Search {
  const _$SearchImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchServicesEvent.search(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SearchServicesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(String query) search,
    required TResult Function() popularAndRecentSearches,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function(String query)? search,
    TResult? Function()? popularAndRecentSearches,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(String query)? search,
    TResult Function()? popularAndRecentSearches,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_Search value) search,
    required TResult Function(_popularAndRecentSearches value)
        popularAndRecentSearches,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_Search value)? search,
    TResult? Function(_popularAndRecentSearches value)?
        popularAndRecentSearches,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Search value)? search,
    TResult Function(_popularAndRecentSearches value)? popularAndRecentSearches,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements SearchServicesEvent {
  const factory _Search(final String query) = _$SearchImpl;

  String get query;

  /// Create a copy of SearchServicesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$popularAndRecentSearchesImplCopyWith<$Res> {
  factory _$$popularAndRecentSearchesImplCopyWith(
          _$popularAndRecentSearchesImpl value,
          $Res Function(_$popularAndRecentSearchesImpl) then) =
      __$$popularAndRecentSearchesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$popularAndRecentSearchesImplCopyWithImpl<$Res>
    extends _$SearchServicesEventCopyWithImpl<$Res,
        _$popularAndRecentSearchesImpl>
    implements _$$popularAndRecentSearchesImplCopyWith<$Res> {
  __$$popularAndRecentSearchesImplCopyWithImpl(
      _$popularAndRecentSearchesImpl _value,
      $Res Function(_$popularAndRecentSearchesImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchServicesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$popularAndRecentSearchesImpl implements _popularAndRecentSearches {
  const _$popularAndRecentSearchesImpl();

  @override
  String toString() {
    return 'SearchServicesEvent.popularAndRecentSearches()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$popularAndRecentSearchesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(String query) search,
    required TResult Function() popularAndRecentSearches,
  }) {
    return popularAndRecentSearches();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function(String query)? search,
    TResult? Function()? popularAndRecentSearches,
  }) {
    return popularAndRecentSearches?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(String query)? search,
    TResult Function()? popularAndRecentSearches,
    required TResult orElse(),
  }) {
    if (popularAndRecentSearches != null) {
      return popularAndRecentSearches();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_Search value) search,
    required TResult Function(_popularAndRecentSearches value)
        popularAndRecentSearches,
  }) {
    return popularAndRecentSearches(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_Search value)? search,
    TResult? Function(_popularAndRecentSearches value)?
        popularAndRecentSearches,
  }) {
    return popularAndRecentSearches?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Search value)? search,
    TResult Function(_popularAndRecentSearches value)? popularAndRecentSearches,
    required TResult orElse(),
  }) {
    if (popularAndRecentSearches != null) {
      return popularAndRecentSearches(this);
    }
    return orElse();
  }
}

abstract class _popularAndRecentSearches implements SearchServicesEvent {
  const factory _popularAndRecentSearches() = _$popularAndRecentSearchesImpl;
}

/// @nodoc
mixin _$SearchServicesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                searchResults)
        loaded,
    required TResult Function(MainFailure failure) error,
    required TResult Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                popularSearches,
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                recentSearches)
        recentAndPopularLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                searchResults)?
        loaded,
    TResult? Function(MainFailure failure)? error,
    TResult? Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                popularSearches,
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                recentSearches)?
        recentAndPopularLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                searchResults)?
        loaded,
    TResult Function(MainFailure failure)? error,
    TResult Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                popularSearches,
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                recentSearches)?
        recentAndPopularLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_RecentAndPopularLoaded value)
        recentAndPopularLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_RecentAndPopularLoaded value)? recentAndPopularLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_RecentAndPopularLoaded value)? recentAndPopularLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchServicesStateCopyWith<$Res> {
  factory $SearchServicesStateCopyWith(
          SearchServicesState value, $Res Function(SearchServicesState) then) =
      _$SearchServicesStateCopyWithImpl<$Res, SearchServicesState>;
}

/// @nodoc
class _$SearchServicesStateCopyWithImpl<$Res, $Val extends SearchServicesState>
    implements $SearchServicesStateCopyWith<$Res> {
  _$SearchServicesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchServicesState
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
    extends _$SearchServicesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchServicesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SearchServicesState.initial()';
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
    required TResult Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                searchResults)
        loaded,
    required TResult Function(MainFailure failure) error,
    required TResult Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                popularSearches,
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                recentSearches)
        recentAndPopularLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                searchResults)?
        loaded,
    TResult? Function(MainFailure failure)? error,
    TResult? Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                popularSearches,
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                recentSearches)?
        recentAndPopularLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                searchResults)?
        loaded,
    TResult Function(MainFailure failure)? error,
    TResult Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                popularSearches,
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                recentSearches)?
        recentAndPopularLoaded,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_RecentAndPopularLoaded value)
        recentAndPopularLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_RecentAndPopularLoaded value)? recentAndPopularLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_RecentAndPopularLoaded value)? recentAndPopularLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchServicesState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$SearchServicesStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchServicesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'SearchServicesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                searchResults)
        loaded,
    required TResult Function(MainFailure failure) error,
    required TResult Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                popularSearches,
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                recentSearches)
        recentAndPopularLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                searchResults)?
        loaded,
    TResult? Function(MainFailure failure)? error,
    TResult? Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                popularSearches,
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                recentSearches)?
        recentAndPopularLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                searchResults)?
        loaded,
    TResult Function(MainFailure failure)? error,
    TResult Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                popularSearches,
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                recentSearches)?
        recentAndPopularLoaded,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_RecentAndPopularLoaded value)
        recentAndPopularLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_RecentAndPopularLoaded value)? recentAndPopularLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_RecentAndPopularLoaded value)? recentAndPopularLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SearchServicesState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Either<SearchSubServiceModel, SearchCategoryModel>> searchResults});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$SearchServicesStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchServicesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResults = null,
  }) {
    return _then(_$LoadedImpl(
      null == searchResults
          ? _value._searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as List<Either<SearchSubServiceModel, SearchCategoryModel>>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      final List<Either<SearchSubServiceModel, SearchCategoryModel>>
          searchResults)
      : _searchResults = searchResults;

  final List<Either<SearchSubServiceModel, SearchCategoryModel>> _searchResults;
  @override
  List<Either<SearchSubServiceModel, SearchCategoryModel>> get searchResults {
    if (_searchResults is EqualUnmodifiableListView) return _searchResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResults);
  }

  @override
  String toString() {
    return 'SearchServicesState.loaded(searchResults: $searchResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._searchResults, _searchResults));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_searchResults));

  /// Create a copy of SearchServicesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                searchResults)
        loaded,
    required TResult Function(MainFailure failure) error,
    required TResult Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                popularSearches,
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                recentSearches)
        recentAndPopularLoaded,
  }) {
    return loaded(searchResults);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                searchResults)?
        loaded,
    TResult? Function(MainFailure failure)? error,
    TResult? Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                popularSearches,
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                recentSearches)?
        recentAndPopularLoaded,
  }) {
    return loaded?.call(searchResults);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                searchResults)?
        loaded,
    TResult Function(MainFailure failure)? error,
    TResult Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                popularSearches,
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                recentSearches)?
        recentAndPopularLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(searchResults);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_RecentAndPopularLoaded value)
        recentAndPopularLoaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_RecentAndPopularLoaded value)? recentAndPopularLoaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_RecentAndPopularLoaded value)? recentAndPopularLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements SearchServicesState {
  const factory _Loaded(
      final List<Either<SearchSubServiceModel, SearchCategoryModel>>
          searchResults) = _$LoadedImpl;

  List<Either<SearchSubServiceModel, SearchCategoryModel>> get searchResults;

  /// Create a copy of SearchServicesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MainFailure failure});

  $MainFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$SearchServicesStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchServicesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ErrorImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as MainFailure,
    ));
  }

  /// Create a copy of SearchServicesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainFailureCopyWith<$Res> get failure {
    return $MainFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.failure);

  @override
  final MainFailure failure;

  @override
  String toString() {
    return 'SearchServicesState.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of SearchServicesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                searchResults)
        loaded,
    required TResult Function(MainFailure failure) error,
    required TResult Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                popularSearches,
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                recentSearches)
        recentAndPopularLoaded,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                searchResults)?
        loaded,
    TResult? Function(MainFailure failure)? error,
    TResult? Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                popularSearches,
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                recentSearches)?
        recentAndPopularLoaded,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                searchResults)?
        loaded,
    TResult Function(MainFailure failure)? error,
    TResult Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                popularSearches,
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                recentSearches)?
        recentAndPopularLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_RecentAndPopularLoaded value)
        recentAndPopularLoaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_RecentAndPopularLoaded value)? recentAndPopularLoaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_RecentAndPopularLoaded value)? recentAndPopularLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SearchServicesState {
  const factory _Error(final MainFailure failure) = _$ErrorImpl;

  MainFailure get failure;

  /// Create a copy of SearchServicesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecentAndPopularLoadedImplCopyWith<$Res> {
  factory _$$RecentAndPopularLoadedImplCopyWith(
          _$RecentAndPopularLoadedImpl value,
          $Res Function(_$RecentAndPopularLoadedImpl) then) =
      __$$RecentAndPopularLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Either<SearchSubServiceModel, SearchCategoryModel>> popularSearches,
      List<Either<SearchSubServiceModel, SearchCategoryModel>> recentSearches});
}

/// @nodoc
class __$$RecentAndPopularLoadedImplCopyWithImpl<$Res>
    extends _$SearchServicesStateCopyWithImpl<$Res,
        _$RecentAndPopularLoadedImpl>
    implements _$$RecentAndPopularLoadedImplCopyWith<$Res> {
  __$$RecentAndPopularLoadedImplCopyWithImpl(
      _$RecentAndPopularLoadedImpl _value,
      $Res Function(_$RecentAndPopularLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchServicesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? popularSearches = null,
    Object? recentSearches = null,
  }) {
    return _then(_$RecentAndPopularLoadedImpl(
      popularSearches: null == popularSearches
          ? _value._popularSearches
          : popularSearches // ignore: cast_nullable_to_non_nullable
              as List<Either<SearchSubServiceModel, SearchCategoryModel>>,
      recentSearches: null == recentSearches
          ? _value._recentSearches
          : recentSearches // ignore: cast_nullable_to_non_nullable
              as List<Either<SearchSubServiceModel, SearchCategoryModel>>,
    ));
  }
}

/// @nodoc

class _$RecentAndPopularLoadedImpl implements _RecentAndPopularLoaded {
  const _$RecentAndPopularLoadedImpl(
      {required final List<Either<SearchSubServiceModel, SearchCategoryModel>>
          popularSearches,
      required final List<Either<SearchSubServiceModel, SearchCategoryModel>>
          recentSearches})
      : _popularSearches = popularSearches,
        _recentSearches = recentSearches;

  final List<Either<SearchSubServiceModel, SearchCategoryModel>>
      _popularSearches;
  @override
  List<Either<SearchSubServiceModel, SearchCategoryModel>> get popularSearches {
    if (_popularSearches is EqualUnmodifiableListView) return _popularSearches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularSearches);
  }

  final List<Either<SearchSubServiceModel, SearchCategoryModel>>
      _recentSearches;
  @override
  List<Either<SearchSubServiceModel, SearchCategoryModel>> get recentSearches {
    if (_recentSearches is EqualUnmodifiableListView) return _recentSearches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentSearches);
  }

  @override
  String toString() {
    return 'SearchServicesState.recentAndPopularLoaded(popularSearches: $popularSearches, recentSearches: $recentSearches)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentAndPopularLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._popularSearches, _popularSearches) &&
            const DeepCollectionEquality()
                .equals(other._recentSearches, _recentSearches));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_popularSearches),
      const DeepCollectionEquality().hash(_recentSearches));

  /// Create a copy of SearchServicesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecentAndPopularLoadedImplCopyWith<_$RecentAndPopularLoadedImpl>
      get copyWith => __$$RecentAndPopularLoadedImplCopyWithImpl<
          _$RecentAndPopularLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                searchResults)
        loaded,
    required TResult Function(MainFailure failure) error,
    required TResult Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                popularSearches,
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                recentSearches)
        recentAndPopularLoaded,
  }) {
    return recentAndPopularLoaded(popularSearches, recentSearches);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                searchResults)?
        loaded,
    TResult? Function(MainFailure failure)? error,
    TResult? Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                popularSearches,
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                recentSearches)?
        recentAndPopularLoaded,
  }) {
    return recentAndPopularLoaded?.call(popularSearches, recentSearches);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                searchResults)?
        loaded,
    TResult Function(MainFailure failure)? error,
    TResult Function(
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                popularSearches,
            List<Either<SearchSubServiceModel, SearchCategoryModel>>
                recentSearches)?
        recentAndPopularLoaded,
    required TResult orElse(),
  }) {
    if (recentAndPopularLoaded != null) {
      return recentAndPopularLoaded(popularSearches, recentSearches);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_RecentAndPopularLoaded value)
        recentAndPopularLoaded,
  }) {
    return recentAndPopularLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_RecentAndPopularLoaded value)? recentAndPopularLoaded,
  }) {
    return recentAndPopularLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_RecentAndPopularLoaded value)? recentAndPopularLoaded,
    required TResult orElse(),
  }) {
    if (recentAndPopularLoaded != null) {
      return recentAndPopularLoaded(this);
    }
    return orElse();
  }
}

abstract class _RecentAndPopularLoaded implements SearchServicesState {
  const factory _RecentAndPopularLoaded(
      {required final List<Either<SearchSubServiceModel, SearchCategoryModel>>
          popularSearches,
      required final List<Either<SearchSubServiceModel, SearchCategoryModel>>
          recentSearches}) = _$RecentAndPopularLoadedImpl;

  List<Either<SearchSubServiceModel, SearchCategoryModel>> get popularSearches;
  List<Either<SearchSubServiceModel, SearchCategoryModel>> get recentSearches;

  /// Create a copy of SearchServicesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecentAndPopularLoadedImplCopyWith<_$RecentAndPopularLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
