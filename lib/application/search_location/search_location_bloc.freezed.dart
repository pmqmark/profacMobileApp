// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchLocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) searchLocation,
    required TResult Function(LatLng address) selectLocationLatLng,
    required TResult Function() getCurrentLocation,
    required TResult Function(GMapAddress address) setLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? searchLocation,
    TResult? Function(LatLng address)? selectLocationLatLng,
    TResult? Function()? getCurrentLocation,
    TResult? Function(GMapAddress address)? setLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? searchLocation,
    TResult Function(LatLng address)? selectLocationLatLng,
    TResult Function()? getCurrentLocation,
    TResult Function(GMapAddress address)? setLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchLocation value) searchLocation,
    required TResult Function(_SelectLocationLatLng value) selectLocationLatLng,
    required TResult Function(_GetCurrentLocation value) getCurrentLocation,
    required TResult Function(_SetLocation value) setLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchLocation value)? searchLocation,
    TResult? Function(_SelectLocationLatLng value)? selectLocationLatLng,
    TResult? Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult? Function(_SetLocation value)? setLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchLocation value)? searchLocation,
    TResult Function(_SelectLocationLatLng value)? selectLocationLatLng,
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_SetLocation value)? setLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchLocationEventCopyWith<$Res> {
  factory $SearchLocationEventCopyWith(
          SearchLocationEvent value, $Res Function(SearchLocationEvent) then) =
      _$SearchLocationEventCopyWithImpl<$Res, SearchLocationEvent>;
}

/// @nodoc
class _$SearchLocationEventCopyWithImpl<$Res, $Val extends SearchLocationEvent>
    implements $SearchLocationEventCopyWith<$Res> {
  _$SearchLocationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchLocationEvent
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
    extends _$SearchLocationEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchLocationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'SearchLocationEvent.started()';
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
    required TResult Function(String query) searchLocation,
    required TResult Function(LatLng address) selectLocationLatLng,
    required TResult Function() getCurrentLocation,
    required TResult Function(GMapAddress address) setLocation,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? searchLocation,
    TResult? Function(LatLng address)? selectLocationLatLng,
    TResult? Function()? getCurrentLocation,
    TResult? Function(GMapAddress address)? setLocation,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? searchLocation,
    TResult Function(LatLng address)? selectLocationLatLng,
    TResult Function()? getCurrentLocation,
    TResult Function(GMapAddress address)? setLocation,
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
    required TResult Function(_SearchLocation value) searchLocation,
    required TResult Function(_SelectLocationLatLng value) selectLocationLatLng,
    required TResult Function(_GetCurrentLocation value) getCurrentLocation,
    required TResult Function(_SetLocation value) setLocation,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchLocation value)? searchLocation,
    TResult? Function(_SelectLocationLatLng value)? selectLocationLatLng,
    TResult? Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult? Function(_SetLocation value)? setLocation,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchLocation value)? searchLocation,
    TResult Function(_SelectLocationLatLng value)? selectLocationLatLng,
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_SetLocation value)? setLocation,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SearchLocationEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SearchLocationImplCopyWith<$Res> {
  factory _$$SearchLocationImplCopyWith(_$SearchLocationImpl value,
          $Res Function(_$SearchLocationImpl) then) =
      __$$SearchLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchLocationImplCopyWithImpl<$Res>
    extends _$SearchLocationEventCopyWithImpl<$Res, _$SearchLocationImpl>
    implements _$$SearchLocationImplCopyWith<$Res> {
  __$$SearchLocationImplCopyWithImpl(
      _$SearchLocationImpl _value, $Res Function(_$SearchLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchLocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchLocationImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchLocationImpl implements _SearchLocation {
  const _$SearchLocationImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchLocationEvent.searchLocation(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLocationImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SearchLocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchLocationImplCopyWith<_$SearchLocationImpl> get copyWith =>
      __$$SearchLocationImplCopyWithImpl<_$SearchLocationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) searchLocation,
    required TResult Function(LatLng address) selectLocationLatLng,
    required TResult Function() getCurrentLocation,
    required TResult Function(GMapAddress address) setLocation,
  }) {
    return searchLocation(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? searchLocation,
    TResult? Function(LatLng address)? selectLocationLatLng,
    TResult? Function()? getCurrentLocation,
    TResult? Function(GMapAddress address)? setLocation,
  }) {
    return searchLocation?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? searchLocation,
    TResult Function(LatLng address)? selectLocationLatLng,
    TResult Function()? getCurrentLocation,
    TResult Function(GMapAddress address)? setLocation,
    required TResult orElse(),
  }) {
    if (searchLocation != null) {
      return searchLocation(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchLocation value) searchLocation,
    required TResult Function(_SelectLocationLatLng value) selectLocationLatLng,
    required TResult Function(_GetCurrentLocation value) getCurrentLocation,
    required TResult Function(_SetLocation value) setLocation,
  }) {
    return searchLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchLocation value)? searchLocation,
    TResult? Function(_SelectLocationLatLng value)? selectLocationLatLng,
    TResult? Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult? Function(_SetLocation value)? setLocation,
  }) {
    return searchLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchLocation value)? searchLocation,
    TResult Function(_SelectLocationLatLng value)? selectLocationLatLng,
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_SetLocation value)? setLocation,
    required TResult orElse(),
  }) {
    if (searchLocation != null) {
      return searchLocation(this);
    }
    return orElse();
  }
}

abstract class _SearchLocation implements SearchLocationEvent {
  const factory _SearchLocation(final String query) = _$SearchLocationImpl;

  String get query;

  /// Create a copy of SearchLocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchLocationImplCopyWith<_$SearchLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectLocationLatLngImplCopyWith<$Res> {
  factory _$$SelectLocationLatLngImplCopyWith(_$SelectLocationLatLngImpl value,
          $Res Function(_$SelectLocationLatLngImpl) then) =
      __$$SelectLocationLatLngImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng address});
}

/// @nodoc
class __$$SelectLocationLatLngImplCopyWithImpl<$Res>
    extends _$SearchLocationEventCopyWithImpl<$Res, _$SelectLocationLatLngImpl>
    implements _$$SelectLocationLatLngImplCopyWith<$Res> {
  __$$SelectLocationLatLngImplCopyWithImpl(_$SelectLocationLatLngImpl _value,
      $Res Function(_$SelectLocationLatLngImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchLocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$SelectLocationLatLngImpl(
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$SelectLocationLatLngImpl implements _SelectLocationLatLng {
  const _$SelectLocationLatLngImpl(this.address);

  @override
  final LatLng address;

  @override
  String toString() {
    return 'SearchLocationEvent.selectLocationLatLng(address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectLocationLatLngImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  /// Create a copy of SearchLocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectLocationLatLngImplCopyWith<_$SelectLocationLatLngImpl>
      get copyWith =>
          __$$SelectLocationLatLngImplCopyWithImpl<_$SelectLocationLatLngImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) searchLocation,
    required TResult Function(LatLng address) selectLocationLatLng,
    required TResult Function() getCurrentLocation,
    required TResult Function(GMapAddress address) setLocation,
  }) {
    return selectLocationLatLng(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? searchLocation,
    TResult? Function(LatLng address)? selectLocationLatLng,
    TResult? Function()? getCurrentLocation,
    TResult? Function(GMapAddress address)? setLocation,
  }) {
    return selectLocationLatLng?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? searchLocation,
    TResult Function(LatLng address)? selectLocationLatLng,
    TResult Function()? getCurrentLocation,
    TResult Function(GMapAddress address)? setLocation,
    required TResult orElse(),
  }) {
    if (selectLocationLatLng != null) {
      return selectLocationLatLng(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchLocation value) searchLocation,
    required TResult Function(_SelectLocationLatLng value) selectLocationLatLng,
    required TResult Function(_GetCurrentLocation value) getCurrentLocation,
    required TResult Function(_SetLocation value) setLocation,
  }) {
    return selectLocationLatLng(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchLocation value)? searchLocation,
    TResult? Function(_SelectLocationLatLng value)? selectLocationLatLng,
    TResult? Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult? Function(_SetLocation value)? setLocation,
  }) {
    return selectLocationLatLng?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchLocation value)? searchLocation,
    TResult Function(_SelectLocationLatLng value)? selectLocationLatLng,
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_SetLocation value)? setLocation,
    required TResult orElse(),
  }) {
    if (selectLocationLatLng != null) {
      return selectLocationLatLng(this);
    }
    return orElse();
  }
}

abstract class _SelectLocationLatLng implements SearchLocationEvent {
  const factory _SelectLocationLatLng(final LatLng address) =
      _$SelectLocationLatLngImpl;

  LatLng get address;

  /// Create a copy of SearchLocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectLocationLatLngImplCopyWith<_$SelectLocationLatLngImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCurrentLocationImplCopyWith<$Res> {
  factory _$$GetCurrentLocationImplCopyWith(_$GetCurrentLocationImpl value,
          $Res Function(_$GetCurrentLocationImpl) then) =
      __$$GetCurrentLocationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCurrentLocationImplCopyWithImpl<$Res>
    extends _$SearchLocationEventCopyWithImpl<$Res, _$GetCurrentLocationImpl>
    implements _$$GetCurrentLocationImplCopyWith<$Res> {
  __$$GetCurrentLocationImplCopyWithImpl(_$GetCurrentLocationImpl _value,
      $Res Function(_$GetCurrentLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchLocationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCurrentLocationImpl implements _GetCurrentLocation {
  const _$GetCurrentLocationImpl();

  @override
  String toString() {
    return 'SearchLocationEvent.getCurrentLocation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCurrentLocationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) searchLocation,
    required TResult Function(LatLng address) selectLocationLatLng,
    required TResult Function() getCurrentLocation,
    required TResult Function(GMapAddress address) setLocation,
  }) {
    return getCurrentLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? searchLocation,
    TResult? Function(LatLng address)? selectLocationLatLng,
    TResult? Function()? getCurrentLocation,
    TResult? Function(GMapAddress address)? setLocation,
  }) {
    return getCurrentLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? searchLocation,
    TResult Function(LatLng address)? selectLocationLatLng,
    TResult Function()? getCurrentLocation,
    TResult Function(GMapAddress address)? setLocation,
    required TResult orElse(),
  }) {
    if (getCurrentLocation != null) {
      return getCurrentLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchLocation value) searchLocation,
    required TResult Function(_SelectLocationLatLng value) selectLocationLatLng,
    required TResult Function(_GetCurrentLocation value) getCurrentLocation,
    required TResult Function(_SetLocation value) setLocation,
  }) {
    return getCurrentLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchLocation value)? searchLocation,
    TResult? Function(_SelectLocationLatLng value)? selectLocationLatLng,
    TResult? Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult? Function(_SetLocation value)? setLocation,
  }) {
    return getCurrentLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchLocation value)? searchLocation,
    TResult Function(_SelectLocationLatLng value)? selectLocationLatLng,
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_SetLocation value)? setLocation,
    required TResult orElse(),
  }) {
    if (getCurrentLocation != null) {
      return getCurrentLocation(this);
    }
    return orElse();
  }
}

abstract class _GetCurrentLocation implements SearchLocationEvent {
  const factory _GetCurrentLocation() = _$GetCurrentLocationImpl;
}

/// @nodoc
abstract class _$$SetLocationImplCopyWith<$Res> {
  factory _$$SetLocationImplCopyWith(
          _$SetLocationImpl value, $Res Function(_$SetLocationImpl) then) =
      __$$SetLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GMapAddress address});
}

/// @nodoc
class __$$SetLocationImplCopyWithImpl<$Res>
    extends _$SearchLocationEventCopyWithImpl<$Res, _$SetLocationImpl>
    implements _$$SetLocationImplCopyWith<$Res> {
  __$$SetLocationImplCopyWithImpl(
      _$SetLocationImpl _value, $Res Function(_$SetLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchLocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$SetLocationImpl(
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as GMapAddress,
    ));
  }
}

/// @nodoc

class _$SetLocationImpl implements _SetLocation {
  const _$SetLocationImpl(this.address);

  @override
  final GMapAddress address;

  @override
  String toString() {
    return 'SearchLocationEvent.setLocation(address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetLocationImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  /// Create a copy of SearchLocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetLocationImplCopyWith<_$SetLocationImpl> get copyWith =>
      __$$SetLocationImplCopyWithImpl<_$SetLocationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) searchLocation,
    required TResult Function(LatLng address) selectLocationLatLng,
    required TResult Function() getCurrentLocation,
    required TResult Function(GMapAddress address) setLocation,
  }) {
    return setLocation(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? searchLocation,
    TResult? Function(LatLng address)? selectLocationLatLng,
    TResult? Function()? getCurrentLocation,
    TResult? Function(GMapAddress address)? setLocation,
  }) {
    return setLocation?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? searchLocation,
    TResult Function(LatLng address)? selectLocationLatLng,
    TResult Function()? getCurrentLocation,
    TResult Function(GMapAddress address)? setLocation,
    required TResult orElse(),
  }) {
    if (setLocation != null) {
      return setLocation(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchLocation value) searchLocation,
    required TResult Function(_SelectLocationLatLng value) selectLocationLatLng,
    required TResult Function(_GetCurrentLocation value) getCurrentLocation,
    required TResult Function(_SetLocation value) setLocation,
  }) {
    return setLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchLocation value)? searchLocation,
    TResult? Function(_SelectLocationLatLng value)? selectLocationLatLng,
    TResult? Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult? Function(_SetLocation value)? setLocation,
  }) {
    return setLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchLocation value)? searchLocation,
    TResult Function(_SelectLocationLatLng value)? selectLocationLatLng,
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_SetLocation value)? setLocation,
    required TResult orElse(),
  }) {
    if (setLocation != null) {
      return setLocation(this);
    }
    return orElse();
  }
}

abstract class _SetLocation implements SearchLocationEvent {
  const factory _SetLocation(final GMapAddress address) = _$SetLocationImpl;

  GMapAddress get address;

  /// Create a copy of SearchLocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetLocationImplCopyWith<_$SetLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchLocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GMapLocationAddressModel address) loaded,
    required TResult Function(GMapAddress? address) loadedLatLng,
    required TResult Function(MainFailure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GMapLocationAddressModel address)? loaded,
    TResult? Function(GMapAddress? address)? loadedLatLng,
    TResult? Function(MainFailure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GMapLocationAddressModel address)? loaded,
    TResult Function(GMapAddress? address)? loadedLatLng,
    TResult Function(MainFailure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLocationLoading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedLatLng value) loadedLatLng,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLocationLoading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedLatLng value)? loadedLatLng,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLocationLoading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedLatLng value)? loadedLatLng,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchLocationStateCopyWith<$Res> {
  factory $SearchLocationStateCopyWith(
          SearchLocationState value, $Res Function(SearchLocationState) then) =
      _$SearchLocationStateCopyWithImpl<$Res, SearchLocationState>;
}

/// @nodoc
class _$SearchLocationStateCopyWithImpl<$Res, $Val extends SearchLocationState>
    implements $SearchLocationStateCopyWith<$Res> {
  _$SearchLocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchLocationState
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
    extends _$SearchLocationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchLocationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SearchLocationState.initial()';
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
    required TResult Function(GMapLocationAddressModel address) loaded,
    required TResult Function(GMapAddress? address) loadedLatLng,
    required TResult Function(MainFailure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GMapLocationAddressModel address)? loaded,
    TResult? Function(GMapAddress? address)? loadedLatLng,
    TResult? Function(MainFailure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GMapLocationAddressModel address)? loaded,
    TResult Function(GMapAddress? address)? loadedLatLng,
    TResult Function(MainFailure failure)? error,
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
    required TResult Function(SearchLocationLoading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedLatLng value) loadedLatLng,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLocationLoading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedLatLng value)? loadedLatLng,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLocationLoading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedLatLng value)? loadedLatLng,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchLocationState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SearchLocationLoadingImplCopyWith<$Res> {
  factory _$$SearchLocationLoadingImplCopyWith(
          _$SearchLocationLoadingImpl value,
          $Res Function(_$SearchLocationLoadingImpl) then) =
      __$$SearchLocationLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchLocationLoadingImplCopyWithImpl<$Res>
    extends _$SearchLocationStateCopyWithImpl<$Res, _$SearchLocationLoadingImpl>
    implements _$$SearchLocationLoadingImplCopyWith<$Res> {
  __$$SearchLocationLoadingImplCopyWithImpl(_$SearchLocationLoadingImpl _value,
      $Res Function(_$SearchLocationLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchLocationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchLocationLoadingImpl implements SearchLocationLoading {
  const _$SearchLocationLoadingImpl();

  @override
  String toString() {
    return 'SearchLocationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLocationLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GMapLocationAddressModel address) loaded,
    required TResult Function(GMapAddress? address) loadedLatLng,
    required TResult Function(MainFailure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GMapLocationAddressModel address)? loaded,
    TResult? Function(GMapAddress? address)? loadedLatLng,
    TResult? Function(MainFailure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GMapLocationAddressModel address)? loaded,
    TResult Function(GMapAddress? address)? loadedLatLng,
    TResult Function(MainFailure failure)? error,
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
    required TResult Function(SearchLocationLoading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedLatLng value) loadedLatLng,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLocationLoading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedLatLng value)? loadedLatLng,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLocationLoading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedLatLng value)? loadedLatLng,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SearchLocationLoading implements SearchLocationState {
  const factory SearchLocationLoading() = _$SearchLocationLoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GMapLocationAddressModel address});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$SearchLocationStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchLocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$LoadedImpl(
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as GMapLocationAddressModel,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(this.address);

  @override
  final GMapLocationAddressModel address;

  @override
  String toString() {
    return 'SearchLocationState.loaded(address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  /// Create a copy of SearchLocationState
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
    required TResult Function(GMapLocationAddressModel address) loaded,
    required TResult Function(GMapAddress? address) loadedLatLng,
    required TResult Function(MainFailure failure) error,
  }) {
    return loaded(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GMapLocationAddressModel address)? loaded,
    TResult? Function(GMapAddress? address)? loadedLatLng,
    TResult? Function(MainFailure failure)? error,
  }) {
    return loaded?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GMapLocationAddressModel address)? loaded,
    TResult Function(GMapAddress? address)? loadedLatLng,
    TResult Function(MainFailure failure)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLocationLoading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedLatLng value) loadedLatLng,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLocationLoading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedLatLng value)? loadedLatLng,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLocationLoading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedLatLng value)? loadedLatLng,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements SearchLocationState {
  const factory _Loaded(final GMapLocationAddressModel address) = _$LoadedImpl;

  GMapLocationAddressModel get address;

  /// Create a copy of SearchLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedLatLngImplCopyWith<$Res> {
  factory _$$LoadedLatLngImplCopyWith(
          _$LoadedLatLngImpl value, $Res Function(_$LoadedLatLngImpl) then) =
      __$$LoadedLatLngImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GMapAddress? address});
}

/// @nodoc
class __$$LoadedLatLngImplCopyWithImpl<$Res>
    extends _$SearchLocationStateCopyWithImpl<$Res, _$LoadedLatLngImpl>
    implements _$$LoadedLatLngImplCopyWith<$Res> {
  __$$LoadedLatLngImplCopyWithImpl(
      _$LoadedLatLngImpl _value, $Res Function(_$LoadedLatLngImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchLocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(_$LoadedLatLngImpl(
      freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as GMapAddress?,
    ));
  }
}

/// @nodoc

class _$LoadedLatLngImpl implements _LoadedLatLng {
  const _$LoadedLatLngImpl(this.address);

  @override
  final GMapAddress? address;

  @override
  String toString() {
    return 'SearchLocationState.loadedLatLng(address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedLatLngImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  /// Create a copy of SearchLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedLatLngImplCopyWith<_$LoadedLatLngImpl> get copyWith =>
      __$$LoadedLatLngImplCopyWithImpl<_$LoadedLatLngImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GMapLocationAddressModel address) loaded,
    required TResult Function(GMapAddress? address) loadedLatLng,
    required TResult Function(MainFailure failure) error,
  }) {
    return loadedLatLng(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GMapLocationAddressModel address)? loaded,
    TResult? Function(GMapAddress? address)? loadedLatLng,
    TResult? Function(MainFailure failure)? error,
  }) {
    return loadedLatLng?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GMapLocationAddressModel address)? loaded,
    TResult Function(GMapAddress? address)? loadedLatLng,
    TResult Function(MainFailure failure)? error,
    required TResult orElse(),
  }) {
    if (loadedLatLng != null) {
      return loadedLatLng(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLocationLoading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedLatLng value) loadedLatLng,
    required TResult Function(_Error value) error,
  }) {
    return loadedLatLng(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLocationLoading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedLatLng value)? loadedLatLng,
    TResult? Function(_Error value)? error,
  }) {
    return loadedLatLng?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLocationLoading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedLatLng value)? loadedLatLng,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedLatLng != null) {
      return loadedLatLng(this);
    }
    return orElse();
  }
}

abstract class _LoadedLatLng implements SearchLocationState {
  const factory _LoadedLatLng(final GMapAddress? address) = _$LoadedLatLngImpl;

  GMapAddress? get address;

  /// Create a copy of SearchLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedLatLngImplCopyWith<_$LoadedLatLngImpl> get copyWith =>
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
    extends _$SearchLocationStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchLocationState
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

  /// Create a copy of SearchLocationState
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
    return 'SearchLocationState.error(failure: $failure)';
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

  /// Create a copy of SearchLocationState
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
    required TResult Function(GMapLocationAddressModel address) loaded,
    required TResult Function(GMapAddress? address) loadedLatLng,
    required TResult Function(MainFailure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GMapLocationAddressModel address)? loaded,
    TResult? Function(GMapAddress? address)? loadedLatLng,
    TResult? Function(MainFailure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GMapLocationAddressModel address)? loaded,
    TResult Function(GMapAddress? address)? loadedLatLng,
    TResult Function(MainFailure failure)? error,
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
    required TResult Function(SearchLocationLoading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedLatLng value) loadedLatLng,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLocationLoading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedLatLng value)? loadedLatLng,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLocationLoading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedLatLng value)? loadedLatLng,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SearchLocationState {
  const factory _Error(final MainFailure failure) = _$ErrorImpl;

  MainFailure get failure;

  /// Create a copy of SearchLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
