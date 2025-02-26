// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddressEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Address address) setAddress,
    required TResult Function(GMapAddress location) setLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Address address)? setAddress,
    TResult? Function(GMapAddress location)? setLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Address address)? setAddress,
    TResult Function(GMapAddress location)? setLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetAddress value) setAddress,
    required TResult Function(_SetLocation value) setLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetAddress value)? setAddress,
    TResult? Function(_SetLocation value)? setLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetAddress value)? setAddress,
    TResult Function(_SetLocation value)? setLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressEventCopyWith<$Res> {
  factory $AddressEventCopyWith(
          AddressEvent value, $Res Function(AddressEvent) then) =
      _$AddressEventCopyWithImpl<$Res, AddressEvent>;
}

/// @nodoc
class _$AddressEventCopyWithImpl<$Res, $Val extends AddressEvent>
    implements $AddressEventCopyWith<$Res> {
  _$AddressEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressEvent
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
    extends _$AddressEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AddressEvent.started()';
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
    required TResult Function(Address address) setAddress,
    required TResult Function(GMapAddress location) setLocation,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Address address)? setAddress,
    TResult? Function(GMapAddress location)? setLocation,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Address address)? setAddress,
    TResult Function(GMapAddress location)? setLocation,
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
    required TResult Function(_SetAddress value) setAddress,
    required TResult Function(_SetLocation value) setLocation,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetAddress value)? setAddress,
    TResult? Function(_SetLocation value)? setLocation,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetAddress value)? setAddress,
    TResult Function(_SetLocation value)? setLocation,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AddressEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SetAddressImplCopyWith<$Res> {
  factory _$$SetAddressImplCopyWith(
          _$SetAddressImpl value, $Res Function(_$SetAddressImpl) then) =
      __$$SetAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Address address});
}

/// @nodoc
class __$$SetAddressImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$SetAddressImpl>
    implements _$$SetAddressImplCopyWith<$Res> {
  __$$SetAddressImplCopyWithImpl(
      _$SetAddressImpl _value, $Res Function(_$SetAddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$SetAddressImpl(
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc

class _$SetAddressImpl implements _SetAddress {
  const _$SetAddressImpl(this.address);

  @override
  final Address address;

  @override
  String toString() {
    return 'AddressEvent.setAddress(address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetAddressImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  /// Create a copy of AddressEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetAddressImplCopyWith<_$SetAddressImpl> get copyWith =>
      __$$SetAddressImplCopyWithImpl<_$SetAddressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Address address) setAddress,
    required TResult Function(GMapAddress location) setLocation,
  }) {
    return setAddress(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Address address)? setAddress,
    TResult? Function(GMapAddress location)? setLocation,
  }) {
    return setAddress?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Address address)? setAddress,
    TResult Function(GMapAddress location)? setLocation,
    required TResult orElse(),
  }) {
    if (setAddress != null) {
      return setAddress(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetAddress value) setAddress,
    required TResult Function(_SetLocation value) setLocation,
  }) {
    return setAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetAddress value)? setAddress,
    TResult? Function(_SetLocation value)? setLocation,
  }) {
    return setAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetAddress value)? setAddress,
    TResult Function(_SetLocation value)? setLocation,
    required TResult orElse(),
  }) {
    if (setAddress != null) {
      return setAddress(this);
    }
    return orElse();
  }
}

abstract class _SetAddress implements AddressEvent {
  const factory _SetAddress(final Address address) = _$SetAddressImpl;

  Address get address;

  /// Create a copy of AddressEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetAddressImplCopyWith<_$SetAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetLocationImplCopyWith<$Res> {
  factory _$$SetLocationImplCopyWith(
          _$SetLocationImpl value, $Res Function(_$SetLocationImpl) then) =
      __$$SetLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GMapAddress location});
}

/// @nodoc
class __$$SetLocationImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$SetLocationImpl>
    implements _$$SetLocationImplCopyWith<$Res> {
  __$$SetLocationImplCopyWithImpl(
      _$SetLocationImpl _value, $Res Function(_$SetLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_$SetLocationImpl(
      null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GMapAddress,
    ));
  }
}

/// @nodoc

class _$SetLocationImpl implements _SetLocation {
  const _$SetLocationImpl(this.location);

  @override
  final GMapAddress location;

  @override
  String toString() {
    return 'AddressEvent.setLocation(location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetLocationImpl &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  /// Create a copy of AddressEvent
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
    required TResult Function(Address address) setAddress,
    required TResult Function(GMapAddress location) setLocation,
  }) {
    return setLocation(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Address address)? setAddress,
    TResult? Function(GMapAddress location)? setLocation,
  }) {
    return setLocation?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Address address)? setAddress,
    TResult Function(GMapAddress location)? setLocation,
    required TResult orElse(),
  }) {
    if (setLocation != null) {
      return setLocation(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetAddress value) setAddress,
    required TResult Function(_SetLocation value) setLocation,
  }) {
    return setLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetAddress value)? setAddress,
    TResult? Function(_SetLocation value)? setLocation,
  }) {
    return setLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetAddress value)? setAddress,
    TResult Function(_SetLocation value)? setLocation,
    required TResult orElse(),
  }) {
    if (setLocation != null) {
      return setLocation(this);
    }
    return orElse();
  }
}

abstract class _SetLocation implements AddressEvent {
  const factory _SetLocation(final GMapAddress location) = _$SetLocationImpl;

  GMapAddress get location;

  /// Create a copy of AddressEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetLocationImplCopyWith<_$SetLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddressState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Address address) loadedAddress,
    required TResult Function(GMapAddress address) loadedLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Address address)? loadedAddress,
    TResult? Function(GMapAddress address)? loadedLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Address address)? loadedAddress,
    TResult Function(GMapAddress address)? loadedLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AddressLoading value) loading,
    required TResult Function(_LoadedAddress value) loadedAddress,
    required TResult Function(LoadedLocation value) loadedLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddressLoading value)? loading,
    TResult? Function(_LoadedAddress value)? loadedAddress,
    TResult? Function(LoadedLocation value)? loadedLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddressLoading value)? loading,
    TResult Function(_LoadedAddress value)? loadedAddress,
    TResult Function(LoadedLocation value)? loadedLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressStateCopyWith<$Res> {
  factory $AddressStateCopyWith(
          AddressState value, $Res Function(AddressState) then) =
      _$AddressStateCopyWithImpl<$Res, AddressState>;
}

/// @nodoc
class _$AddressStateCopyWithImpl<$Res, $Val extends AddressState>
    implements $AddressStateCopyWith<$Res> {
  _$AddressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressState
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
    extends _$AddressStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AddressState.initial()';
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
    required TResult Function(Address address) loadedAddress,
    required TResult Function(GMapAddress address) loadedLocation,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Address address)? loadedAddress,
    TResult? Function(GMapAddress address)? loadedLocation,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Address address)? loadedAddress,
    TResult Function(GMapAddress address)? loadedLocation,
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
    required TResult Function(AddressLoading value) loading,
    required TResult Function(_LoadedAddress value) loadedAddress,
    required TResult Function(LoadedLocation value) loadedLocation,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddressLoading value)? loading,
    TResult? Function(_LoadedAddress value)? loadedAddress,
    TResult? Function(LoadedLocation value)? loadedLocation,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddressLoading value)? loading,
    TResult Function(_LoadedAddress value)? loadedAddress,
    TResult Function(LoadedLocation value)? loadedLocation,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddressState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AddressLoadingImplCopyWith<$Res> {
  factory _$$AddressLoadingImplCopyWith(_$AddressLoadingImpl value,
          $Res Function(_$AddressLoadingImpl) then) =
      __$$AddressLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddressLoadingImplCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$AddressLoadingImpl>
    implements _$$AddressLoadingImplCopyWith<$Res> {
  __$$AddressLoadingImplCopyWithImpl(
      _$AddressLoadingImpl _value, $Res Function(_$AddressLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddressLoadingImpl implements AddressLoading {
  const _$AddressLoadingImpl();

  @override
  String toString() {
    return 'AddressState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddressLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Address address) loadedAddress,
    required TResult Function(GMapAddress address) loadedLocation,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Address address)? loadedAddress,
    TResult? Function(GMapAddress address)? loadedLocation,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Address address)? loadedAddress,
    TResult Function(GMapAddress address)? loadedLocation,
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
    required TResult Function(AddressLoading value) loading,
    required TResult Function(_LoadedAddress value) loadedAddress,
    required TResult Function(LoadedLocation value) loadedLocation,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddressLoading value)? loading,
    TResult? Function(_LoadedAddress value)? loadedAddress,
    TResult? Function(LoadedLocation value)? loadedLocation,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddressLoading value)? loading,
    TResult Function(_LoadedAddress value)? loadedAddress,
    TResult Function(LoadedLocation value)? loadedLocation,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AddressLoading implements AddressState {
  const factory AddressLoading() = _$AddressLoadingImpl;
}

/// @nodoc
abstract class _$$LoadedAddressImplCopyWith<$Res> {
  factory _$$LoadedAddressImplCopyWith(
          _$LoadedAddressImpl value, $Res Function(_$LoadedAddressImpl) then) =
      __$$LoadedAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Address address});
}

/// @nodoc
class __$$LoadedAddressImplCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$LoadedAddressImpl>
    implements _$$LoadedAddressImplCopyWith<$Res> {
  __$$LoadedAddressImplCopyWithImpl(
      _$LoadedAddressImpl _value, $Res Function(_$LoadedAddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$LoadedAddressImpl(
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc

class _$LoadedAddressImpl implements _LoadedAddress {
  const _$LoadedAddressImpl(this.address);

  @override
  final Address address;

  @override
  String toString() {
    return 'AddressState.loadedAddress(address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedAddressImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedAddressImplCopyWith<_$LoadedAddressImpl> get copyWith =>
      __$$LoadedAddressImplCopyWithImpl<_$LoadedAddressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Address address) loadedAddress,
    required TResult Function(GMapAddress address) loadedLocation,
  }) {
    return loadedAddress(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Address address)? loadedAddress,
    TResult? Function(GMapAddress address)? loadedLocation,
  }) {
    return loadedAddress?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Address address)? loadedAddress,
    TResult Function(GMapAddress address)? loadedLocation,
    required TResult orElse(),
  }) {
    if (loadedAddress != null) {
      return loadedAddress(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AddressLoading value) loading,
    required TResult Function(_LoadedAddress value) loadedAddress,
    required TResult Function(LoadedLocation value) loadedLocation,
  }) {
    return loadedAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddressLoading value)? loading,
    TResult? Function(_LoadedAddress value)? loadedAddress,
    TResult? Function(LoadedLocation value)? loadedLocation,
  }) {
    return loadedAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddressLoading value)? loading,
    TResult Function(_LoadedAddress value)? loadedAddress,
    TResult Function(LoadedLocation value)? loadedLocation,
    required TResult orElse(),
  }) {
    if (loadedAddress != null) {
      return loadedAddress(this);
    }
    return orElse();
  }
}

abstract class _LoadedAddress implements AddressState {
  const factory _LoadedAddress(final Address address) = _$LoadedAddressImpl;

  Address get address;

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedAddressImplCopyWith<_$LoadedAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedLocationImplCopyWith<$Res> {
  factory _$$LoadedLocationImplCopyWith(_$LoadedLocationImpl value,
          $Res Function(_$LoadedLocationImpl) then) =
      __$$LoadedLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GMapAddress address});
}

/// @nodoc
class __$$LoadedLocationImplCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$LoadedLocationImpl>
    implements _$$LoadedLocationImplCopyWith<$Res> {
  __$$LoadedLocationImplCopyWithImpl(
      _$LoadedLocationImpl _value, $Res Function(_$LoadedLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$LoadedLocationImpl(
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as GMapAddress,
    ));
  }
}

/// @nodoc

class _$LoadedLocationImpl implements LoadedLocation {
  const _$LoadedLocationImpl(this.address);

  @override
  final GMapAddress address;

  @override
  String toString() {
    return 'AddressState.loadedLocation(address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedLocationImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedLocationImplCopyWith<_$LoadedLocationImpl> get copyWith =>
      __$$LoadedLocationImplCopyWithImpl<_$LoadedLocationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Address address) loadedAddress,
    required TResult Function(GMapAddress address) loadedLocation,
  }) {
    return loadedLocation(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Address address)? loadedAddress,
    TResult? Function(GMapAddress address)? loadedLocation,
  }) {
    return loadedLocation?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Address address)? loadedAddress,
    TResult Function(GMapAddress address)? loadedLocation,
    required TResult orElse(),
  }) {
    if (loadedLocation != null) {
      return loadedLocation(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AddressLoading value) loading,
    required TResult Function(_LoadedAddress value) loadedAddress,
    required TResult Function(LoadedLocation value) loadedLocation,
  }) {
    return loadedLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AddressLoading value)? loading,
    TResult? Function(_LoadedAddress value)? loadedAddress,
    TResult? Function(LoadedLocation value)? loadedLocation,
  }) {
    return loadedLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AddressLoading value)? loading,
    TResult Function(_LoadedAddress value)? loadedAddress,
    TResult Function(LoadedLocation value)? loadedLocation,
    required TResult orElse(),
  }) {
    if (loadedLocation != null) {
      return loadedLocation(this);
    }
    return orElse();
  }
}

abstract class LoadedLocation implements AddressState {
  const factory LoadedLocation(final GMapAddress address) =
      _$LoadedLocationImpl;

  GMapAddress get address;

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedLocationImplCopyWith<_$LoadedLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
