// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function() serverFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String? message) otherFailure,
    required TResult Function() conflict,
    required TResult Function() permissionFailure,
    required TResult Function() locationOff,
    required TResult Function() noInternetConnection,
    required TResult Function() noData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFailure,
    TResult? Function()? serverFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String? message)? otherFailure,
    TResult? Function()? conflict,
    TResult? Function()? permissionFailure,
    TResult? Function()? locationOff,
    TResult? Function()? noInternetConnection,
    TResult? Function()? noData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String? message)? otherFailure,
    TResult Function()? conflict,
    TResult Function()? permissionFailure,
    TResult Function()? locationOff,
    TResult Function()? noInternetConnection,
    TResult Function()? noData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(OtherFailure value) otherFailure,
    required TResult Function(Conflict value) conflict,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(LocationOff value) locationOff,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(NoData value) noData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(OtherFailure value)? otherFailure,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(LocationOff value)? locationOff,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(NoData value)? noData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(OtherFailure value)? otherFailure,
    TResult Function(Conflict value)? conflict,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(LocationOff value)? locationOff,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(NoData value)? noData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainFailureCopyWith<$Res> {
  factory $MainFailureCopyWith(
          MainFailure value, $Res Function(MainFailure) then) =
      _$MainFailureCopyWithImpl<$Res, MainFailure>;
}

/// @nodoc
class _$MainFailureCopyWithImpl<$Res, $Val extends MainFailure>
    implements $MainFailureCopyWith<$Res> {
  _$MainFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ClientFailureImplCopyWith<$Res> {
  factory _$$ClientFailureImplCopyWith(
          _$ClientFailureImpl value, $Res Function(_$ClientFailureImpl) then) =
      __$$ClientFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientFailureImplCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$ClientFailureImpl>
    implements _$$ClientFailureImplCopyWith<$Res> {
  __$$ClientFailureImplCopyWithImpl(
      _$ClientFailureImpl _value, $Res Function(_$ClientFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClientFailureImpl
    with DiagnosticableTreeMixin
    implements _ClientFailure {
  const _$ClientFailureImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainFailure.clientFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MainFailure.clientFailure'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClientFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function() serverFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String? message) otherFailure,
    required TResult Function() conflict,
    required TResult Function() permissionFailure,
    required TResult Function() locationOff,
    required TResult Function() noInternetConnection,
    required TResult Function() noData,
  }) {
    return clientFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFailure,
    TResult? Function()? serverFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String? message)? otherFailure,
    TResult? Function()? conflict,
    TResult? Function()? permissionFailure,
    TResult? Function()? locationOff,
    TResult? Function()? noInternetConnection,
    TResult? Function()? noData,
  }) {
    return clientFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String? message)? otherFailure,
    TResult Function()? conflict,
    TResult Function()? permissionFailure,
    TResult Function()? locationOff,
    TResult Function()? noInternetConnection,
    TResult Function()? noData,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(OtherFailure value) otherFailure,
    required TResult Function(Conflict value) conflict,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(LocationOff value) locationOff,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(NoData value) noData,
  }) {
    return clientFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(OtherFailure value)? otherFailure,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(LocationOff value)? locationOff,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(NoData value)? noData,
  }) {
    return clientFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(OtherFailure value)? otherFailure,
    TResult Function(Conflict value)? conflict,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(LocationOff value)? locationOff,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(NoData value)? noData,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure(this);
    }
    return orElse();
  }
}

abstract class _ClientFailure implements MainFailure {
  const factory _ClientFailure() = _$ClientFailureImpl;
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ServerFailureImpl
    with DiagnosticableTreeMixin
    implements _ServerFailure {
  const _$ServerFailureImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainFailure.serverFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MainFailure.serverFailure'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function() serverFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String? message) otherFailure,
    required TResult Function() conflict,
    required TResult Function() permissionFailure,
    required TResult Function() locationOff,
    required TResult Function() noInternetConnection,
    required TResult Function() noData,
  }) {
    return serverFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFailure,
    TResult? Function()? serverFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String? message)? otherFailure,
    TResult? Function()? conflict,
    TResult? Function()? permissionFailure,
    TResult? Function()? locationOff,
    TResult? Function()? noInternetConnection,
    TResult? Function()? noData,
  }) {
    return serverFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String? message)? otherFailure,
    TResult Function()? conflict,
    TResult Function()? permissionFailure,
    TResult Function()? locationOff,
    TResult Function()? noInternetConnection,
    TResult Function()? noData,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(OtherFailure value) otherFailure,
    required TResult Function(Conflict value) conflict,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(LocationOff value) locationOff,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(NoData value) noData,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(OtherFailure value)? otherFailure,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(LocationOff value)? locationOff,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(NoData value)? noData,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(OtherFailure value)? otherFailure,
    TResult Function(Conflict value)? conflict,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(LocationOff value)? locationOff,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(NoData value)? noData,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements MainFailure {
  const factory _ServerFailure() = _$ServerFailureImpl;
}

/// @nodoc
abstract class _$$AuthFailureImplCopyWith<$Res> {
  factory _$$AuthFailureImplCopyWith(
          _$AuthFailureImpl value, $Res Function(_$AuthFailureImpl) then) =
      __$$AuthFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AuthFailureImplCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$AuthFailureImpl>
    implements _$$AuthFailureImplCopyWith<$Res> {
  __$$AuthFailureImplCopyWithImpl(
      _$AuthFailureImpl _value, $Res Function(_$AuthFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AuthFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthFailureImpl with DiagnosticableTreeMixin implements AuthFailure {
  const _$AuthFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainFailure.authFailure(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainFailure.authFailure'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MainFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthFailureImplCopyWith<_$AuthFailureImpl> get copyWith =>
      __$$AuthFailureImplCopyWithImpl<_$AuthFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function() serverFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String? message) otherFailure,
    required TResult Function() conflict,
    required TResult Function() permissionFailure,
    required TResult Function() locationOff,
    required TResult Function() noInternetConnection,
    required TResult Function() noData,
  }) {
    return authFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFailure,
    TResult? Function()? serverFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String? message)? otherFailure,
    TResult? Function()? conflict,
    TResult? Function()? permissionFailure,
    TResult? Function()? locationOff,
    TResult? Function()? noInternetConnection,
    TResult? Function()? noData,
  }) {
    return authFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String? message)? otherFailure,
    TResult Function()? conflict,
    TResult Function()? permissionFailure,
    TResult Function()? locationOff,
    TResult Function()? noInternetConnection,
    TResult Function()? noData,
    required TResult orElse(),
  }) {
    if (authFailure != null) {
      return authFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(OtherFailure value) otherFailure,
    required TResult Function(Conflict value) conflict,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(LocationOff value) locationOff,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(NoData value) noData,
  }) {
    return authFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(OtherFailure value)? otherFailure,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(LocationOff value)? locationOff,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(NoData value)? noData,
  }) {
    return authFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(OtherFailure value)? otherFailure,
    TResult Function(Conflict value)? conflict,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(LocationOff value)? locationOff,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(NoData value)? noData,
    required TResult orElse(),
  }) {
    if (authFailure != null) {
      return authFailure(this);
    }
    return orElse();
  }
}

abstract class AuthFailure implements MainFailure {
  const factory AuthFailure(final String message) = _$AuthFailureImpl;

  String get message;

  /// Create a copy of MainFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthFailureImplCopyWith<_$AuthFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtherFailureImplCopyWith<$Res> {
  factory _$$OtherFailureImplCopyWith(
          _$OtherFailureImpl value, $Res Function(_$OtherFailureImpl) then) =
      __$$OtherFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$OtherFailureImplCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$OtherFailureImpl>
    implements _$$OtherFailureImplCopyWith<$Res> {
  __$$OtherFailureImplCopyWithImpl(
      _$OtherFailureImpl _value, $Res Function(_$OtherFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$OtherFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OtherFailureImpl with DiagnosticableTreeMixin implements OtherFailure {
  const _$OtherFailureImpl({this.message});

  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainFailure.otherFailure(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainFailure.otherFailure'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MainFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherFailureImplCopyWith<_$OtherFailureImpl> get copyWith =>
      __$$OtherFailureImplCopyWithImpl<_$OtherFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function() serverFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String? message) otherFailure,
    required TResult Function() conflict,
    required TResult Function() permissionFailure,
    required TResult Function() locationOff,
    required TResult Function() noInternetConnection,
    required TResult Function() noData,
  }) {
    return otherFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFailure,
    TResult? Function()? serverFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String? message)? otherFailure,
    TResult? Function()? conflict,
    TResult? Function()? permissionFailure,
    TResult? Function()? locationOff,
    TResult? Function()? noInternetConnection,
    TResult? Function()? noData,
  }) {
    return otherFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String? message)? otherFailure,
    TResult Function()? conflict,
    TResult Function()? permissionFailure,
    TResult Function()? locationOff,
    TResult Function()? noInternetConnection,
    TResult Function()? noData,
    required TResult orElse(),
  }) {
    if (otherFailure != null) {
      return otherFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(OtherFailure value) otherFailure,
    required TResult Function(Conflict value) conflict,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(LocationOff value) locationOff,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(NoData value) noData,
  }) {
    return otherFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(OtherFailure value)? otherFailure,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(LocationOff value)? locationOff,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(NoData value)? noData,
  }) {
    return otherFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(OtherFailure value)? otherFailure,
    TResult Function(Conflict value)? conflict,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(LocationOff value)? locationOff,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(NoData value)? noData,
    required TResult orElse(),
  }) {
    if (otherFailure != null) {
      return otherFailure(this);
    }
    return orElse();
  }
}

abstract class OtherFailure implements MainFailure {
  const factory OtherFailure({final String? message}) = _$OtherFailureImpl;

  String? get message;

  /// Create a copy of MainFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtherFailureImplCopyWith<_$OtherFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConflictImplCopyWith<$Res> {
  factory _$$ConflictImplCopyWith(
          _$ConflictImpl value, $Res Function(_$ConflictImpl) then) =
      __$$ConflictImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConflictImplCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$ConflictImpl>
    implements _$$ConflictImplCopyWith<$Res> {
  __$$ConflictImplCopyWithImpl(
      _$ConflictImpl _value, $Res Function(_$ConflictImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConflictImpl with DiagnosticableTreeMixin implements Conflict {
  const _$ConflictImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainFailure.conflict()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MainFailure.conflict'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConflictImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function() serverFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String? message) otherFailure,
    required TResult Function() conflict,
    required TResult Function() permissionFailure,
    required TResult Function() locationOff,
    required TResult Function() noInternetConnection,
    required TResult Function() noData,
  }) {
    return conflict();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFailure,
    TResult? Function()? serverFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String? message)? otherFailure,
    TResult? Function()? conflict,
    TResult? Function()? permissionFailure,
    TResult? Function()? locationOff,
    TResult? Function()? noInternetConnection,
    TResult? Function()? noData,
  }) {
    return conflict?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String? message)? otherFailure,
    TResult Function()? conflict,
    TResult Function()? permissionFailure,
    TResult Function()? locationOff,
    TResult Function()? noInternetConnection,
    TResult Function()? noData,
    required TResult orElse(),
  }) {
    if (conflict != null) {
      return conflict();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(OtherFailure value) otherFailure,
    required TResult Function(Conflict value) conflict,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(LocationOff value) locationOff,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(NoData value) noData,
  }) {
    return conflict(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(OtherFailure value)? otherFailure,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(LocationOff value)? locationOff,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(NoData value)? noData,
  }) {
    return conflict?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(OtherFailure value)? otherFailure,
    TResult Function(Conflict value)? conflict,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(LocationOff value)? locationOff,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(NoData value)? noData,
    required TResult orElse(),
  }) {
    if (conflict != null) {
      return conflict(this);
    }
    return orElse();
  }
}

abstract class Conflict implements MainFailure {
  const factory Conflict() = _$ConflictImpl;
}

/// @nodoc
abstract class _$$PermissionFailureImplCopyWith<$Res> {
  factory _$$PermissionFailureImplCopyWith(_$PermissionFailureImpl value,
          $Res Function(_$PermissionFailureImpl) then) =
      __$$PermissionFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PermissionFailureImplCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$PermissionFailureImpl>
    implements _$$PermissionFailureImplCopyWith<$Res> {
  __$$PermissionFailureImplCopyWithImpl(_$PermissionFailureImpl _value,
      $Res Function(_$PermissionFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PermissionFailureImpl
    with DiagnosticableTreeMixin
    implements PermissionFailure {
  const _$PermissionFailureImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainFailure.permissionFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainFailure.permissionFailure'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PermissionFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function() serverFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String? message) otherFailure,
    required TResult Function() conflict,
    required TResult Function() permissionFailure,
    required TResult Function() locationOff,
    required TResult Function() noInternetConnection,
    required TResult Function() noData,
  }) {
    return permissionFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFailure,
    TResult? Function()? serverFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String? message)? otherFailure,
    TResult? Function()? conflict,
    TResult? Function()? permissionFailure,
    TResult? Function()? locationOff,
    TResult? Function()? noInternetConnection,
    TResult? Function()? noData,
  }) {
    return permissionFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String? message)? otherFailure,
    TResult Function()? conflict,
    TResult Function()? permissionFailure,
    TResult Function()? locationOff,
    TResult Function()? noInternetConnection,
    TResult Function()? noData,
    required TResult orElse(),
  }) {
    if (permissionFailure != null) {
      return permissionFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(OtherFailure value) otherFailure,
    required TResult Function(Conflict value) conflict,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(LocationOff value) locationOff,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(NoData value) noData,
  }) {
    return permissionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(OtherFailure value)? otherFailure,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(LocationOff value)? locationOff,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(NoData value)? noData,
  }) {
    return permissionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(OtherFailure value)? otherFailure,
    TResult Function(Conflict value)? conflict,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(LocationOff value)? locationOff,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(NoData value)? noData,
    required TResult orElse(),
  }) {
    if (permissionFailure != null) {
      return permissionFailure(this);
    }
    return orElse();
  }
}

abstract class PermissionFailure implements MainFailure {
  const factory PermissionFailure() = _$PermissionFailureImpl;
}

/// @nodoc
abstract class _$$LocationOffImplCopyWith<$Res> {
  factory _$$LocationOffImplCopyWith(
          _$LocationOffImpl value, $Res Function(_$LocationOffImpl) then) =
      __$$LocationOffImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationOffImplCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$LocationOffImpl>
    implements _$$LocationOffImplCopyWith<$Res> {
  __$$LocationOffImplCopyWithImpl(
      _$LocationOffImpl _value, $Res Function(_$LocationOffImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LocationOffImpl with DiagnosticableTreeMixin implements LocationOff {
  const _$LocationOffImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainFailure.locationOff()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MainFailure.locationOff'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocationOffImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function() serverFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String? message) otherFailure,
    required TResult Function() conflict,
    required TResult Function() permissionFailure,
    required TResult Function() locationOff,
    required TResult Function() noInternetConnection,
    required TResult Function() noData,
  }) {
    return locationOff();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFailure,
    TResult? Function()? serverFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String? message)? otherFailure,
    TResult? Function()? conflict,
    TResult? Function()? permissionFailure,
    TResult? Function()? locationOff,
    TResult? Function()? noInternetConnection,
    TResult? Function()? noData,
  }) {
    return locationOff?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String? message)? otherFailure,
    TResult Function()? conflict,
    TResult Function()? permissionFailure,
    TResult Function()? locationOff,
    TResult Function()? noInternetConnection,
    TResult Function()? noData,
    required TResult orElse(),
  }) {
    if (locationOff != null) {
      return locationOff();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(OtherFailure value) otherFailure,
    required TResult Function(Conflict value) conflict,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(LocationOff value) locationOff,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(NoData value) noData,
  }) {
    return locationOff(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(OtherFailure value)? otherFailure,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(LocationOff value)? locationOff,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(NoData value)? noData,
  }) {
    return locationOff?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(OtherFailure value)? otherFailure,
    TResult Function(Conflict value)? conflict,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(LocationOff value)? locationOff,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(NoData value)? noData,
    required TResult orElse(),
  }) {
    if (locationOff != null) {
      return locationOff(this);
    }
    return orElse();
  }
}

abstract class LocationOff implements MainFailure {
  const factory LocationOff() = _$LocationOffImpl;
}

/// @nodoc
abstract class _$$NoInternetConnectionImplCopyWith<$Res> {
  factory _$$NoInternetConnectionImplCopyWith(_$NoInternetConnectionImpl value,
          $Res Function(_$NoInternetConnectionImpl) then) =
      __$$NoInternetConnectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoInternetConnectionImplCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$NoInternetConnectionImpl>
    implements _$$NoInternetConnectionImplCopyWith<$Res> {
  __$$NoInternetConnectionImplCopyWithImpl(_$NoInternetConnectionImpl _value,
      $Res Function(_$NoInternetConnectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoInternetConnectionImpl
    with DiagnosticableTreeMixin
    implements NoInternetConnection {
  const _$NoInternetConnectionImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainFailure.noInternetConnection()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainFailure.noInternetConnection'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoInternetConnectionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function() serverFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String? message) otherFailure,
    required TResult Function() conflict,
    required TResult Function() permissionFailure,
    required TResult Function() locationOff,
    required TResult Function() noInternetConnection,
    required TResult Function() noData,
  }) {
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFailure,
    TResult? Function()? serverFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String? message)? otherFailure,
    TResult? Function()? conflict,
    TResult? Function()? permissionFailure,
    TResult? Function()? locationOff,
    TResult? Function()? noInternetConnection,
    TResult? Function()? noData,
  }) {
    return noInternetConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String? message)? otherFailure,
    TResult Function()? conflict,
    TResult Function()? permissionFailure,
    TResult Function()? locationOff,
    TResult Function()? noInternetConnection,
    TResult Function()? noData,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(OtherFailure value) otherFailure,
    required TResult Function(Conflict value) conflict,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(LocationOff value) locationOff,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(NoData value) noData,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(OtherFailure value)? otherFailure,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(LocationOff value)? locationOff,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(NoData value)? noData,
  }) {
    return noInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(OtherFailure value)? otherFailure,
    TResult Function(Conflict value)? conflict,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(LocationOff value)? locationOff,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(NoData value)? noData,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class NoInternetConnection implements MainFailure {
  const factory NoInternetConnection() = _$NoInternetConnectionImpl;
}

/// @nodoc
abstract class _$$NoDataImplCopyWith<$Res> {
  factory _$$NoDataImplCopyWith(
          _$NoDataImpl value, $Res Function(_$NoDataImpl) then) =
      __$$NoDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoDataImplCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$NoDataImpl>
    implements _$$NoDataImplCopyWith<$Res> {
  __$$NoDataImplCopyWithImpl(
      _$NoDataImpl _value, $Res Function(_$NoDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoDataImpl with DiagnosticableTreeMixin implements NoData {
  const _$NoDataImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainFailure.noData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MainFailure.noData'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function() serverFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String? message) otherFailure,
    required TResult Function() conflict,
    required TResult Function() permissionFailure,
    required TResult Function() locationOff,
    required TResult Function() noInternetConnection,
    required TResult Function() noData,
  }) {
    return noData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFailure,
    TResult? Function()? serverFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function(String? message)? otherFailure,
    TResult? Function()? conflict,
    TResult? Function()? permissionFailure,
    TResult? Function()? locationOff,
    TResult? Function()? noInternetConnection,
    TResult? Function()? noData,
  }) {
    return noData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String? message)? otherFailure,
    TResult Function()? conflict,
    TResult Function()? permissionFailure,
    TResult Function()? locationOff,
    TResult Function()? noInternetConnection,
    TResult Function()? noData,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(OtherFailure value) otherFailure,
    required TResult Function(Conflict value) conflict,
    required TResult Function(PermissionFailure value) permissionFailure,
    required TResult Function(LocationOff value) locationOff,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(NoData value) noData,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(OtherFailure value)? otherFailure,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(PermissionFailure value)? permissionFailure,
    TResult? Function(LocationOff value)? locationOff,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(NoData value)? noData,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(OtherFailure value)? otherFailure,
    TResult Function(Conflict value)? conflict,
    TResult Function(PermissionFailure value)? permissionFailure,
    TResult Function(LocationOff value)? locationOff,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(NoData value)? noData,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class NoData implements MainFailure {
  const factory NoData() = _$NoDataImpl;
}
