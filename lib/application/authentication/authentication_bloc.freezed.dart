// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(String email) sendOTP,
    required TResult Function(String otp, String email) verifyOTP,
    required TResult Function() logout,
    required TResult Function() googleSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function(String email)? sendOTP,
    TResult? Function(String otp, String email)? verifyOTP,
    TResult? Function()? logout,
    TResult? Function()? googleSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(String email)? sendOTP,
    TResult Function(String otp, String email)? verifyOTP,
    TResult Function()? logout,
    TResult Function()? googleSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_SendOTP value) sendOTP,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_Logout value) logout,
    required TResult Function(_GoogleSignIn value) googleSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_SendOTP value)? sendOTP,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_GoogleSignIn value)? googleSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_SendOTP value)? sendOTP,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_Logout value)? logout,
    TResult Function(_GoogleSignIn value)? googleSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthenticationEvent
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
    extends _$AuthenticationEventCopyWithImpl<$Res, _$ResetImpl>
    implements _$$ResetImplCopyWith<$Res> {
  __$$ResetImplCopyWithImpl(
      _$ResetImpl _value, $Res Function(_$ResetImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetImpl implements _Reset {
  const _$ResetImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.reset()';
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
    required TResult Function(String email) sendOTP,
    required TResult Function(String otp, String email) verifyOTP,
    required TResult Function() logout,
    required TResult Function() googleSignIn,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function(String email)? sendOTP,
    TResult? Function(String otp, String email)? verifyOTP,
    TResult? Function()? logout,
    TResult? Function()? googleSignIn,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(String email)? sendOTP,
    TResult Function(String otp, String email)? verifyOTP,
    TResult Function()? logout,
    TResult Function()? googleSignIn,
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
    required TResult Function(_SendOTP value) sendOTP,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_Logout value) logout,
    required TResult Function(_GoogleSignIn value) googleSignIn,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_SendOTP value)? sendOTP,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_GoogleSignIn value)? googleSignIn,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_SendOTP value)? sendOTP,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_Logout value)? logout,
    TResult Function(_GoogleSignIn value)? googleSignIn,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements AuthenticationEvent {
  const factory _Reset() = _$ResetImpl;
}

/// @nodoc
abstract class _$$SendOTPImplCopyWith<$Res> {
  factory _$$SendOTPImplCopyWith(
          _$SendOTPImpl value, $Res Function(_$SendOTPImpl) then) =
      __$$SendOTPImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SendOTPImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$SendOTPImpl>
    implements _$$SendOTPImplCopyWith<$Res> {
  __$$SendOTPImplCopyWithImpl(
      _$SendOTPImpl _value, $Res Function(_$SendOTPImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SendOTPImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendOTPImpl implements _SendOTP {
  const _$SendOTPImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthenticationEvent.sendOTP(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOTPImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOTPImplCopyWith<_$SendOTPImpl> get copyWith =>
      __$$SendOTPImplCopyWithImpl<_$SendOTPImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(String email) sendOTP,
    required TResult Function(String otp, String email) verifyOTP,
    required TResult Function() logout,
    required TResult Function() googleSignIn,
  }) {
    return sendOTP(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function(String email)? sendOTP,
    TResult? Function(String otp, String email)? verifyOTP,
    TResult? Function()? logout,
    TResult? Function()? googleSignIn,
  }) {
    return sendOTP?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(String email)? sendOTP,
    TResult Function(String otp, String email)? verifyOTP,
    TResult Function()? logout,
    TResult Function()? googleSignIn,
    required TResult orElse(),
  }) {
    if (sendOTP != null) {
      return sendOTP(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_SendOTP value) sendOTP,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_Logout value) logout,
    required TResult Function(_GoogleSignIn value) googleSignIn,
  }) {
    return sendOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_SendOTP value)? sendOTP,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_GoogleSignIn value)? googleSignIn,
  }) {
    return sendOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_SendOTP value)? sendOTP,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_Logout value)? logout,
    TResult Function(_GoogleSignIn value)? googleSignIn,
    required TResult orElse(),
  }) {
    if (sendOTP != null) {
      return sendOTP(this);
    }
    return orElse();
  }
}

abstract class _SendOTP implements AuthenticationEvent {
  const factory _SendOTP(final String email) = _$SendOTPImpl;

  String get email;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendOTPImplCopyWith<_$SendOTPImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOTPImplCopyWith<$Res> {
  factory _$$VerifyOTPImplCopyWith(
          _$VerifyOTPImpl value, $Res Function(_$VerifyOTPImpl) then) =
      __$$VerifyOTPImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otp, String email});
}

/// @nodoc
class __$$VerifyOTPImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$VerifyOTPImpl>
    implements _$$VerifyOTPImplCopyWith<$Res> {
  __$$VerifyOTPImplCopyWithImpl(
      _$VerifyOTPImpl _value, $Res Function(_$VerifyOTPImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? email = null,
  }) {
    return _then(_$VerifyOTPImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyOTPImpl implements _VerifyOTP {
  const _$VerifyOTPImpl({required this.otp, required this.email});

  @override
  final String otp;
  @override
  final String email;

  @override
  String toString() {
    return 'AuthenticationEvent.verifyOTP(otp: $otp, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOTPImpl &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp, email);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOTPImplCopyWith<_$VerifyOTPImpl> get copyWith =>
      __$$VerifyOTPImplCopyWithImpl<_$VerifyOTPImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(String email) sendOTP,
    required TResult Function(String otp, String email) verifyOTP,
    required TResult Function() logout,
    required TResult Function() googleSignIn,
  }) {
    return verifyOTP(otp, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function(String email)? sendOTP,
    TResult? Function(String otp, String email)? verifyOTP,
    TResult? Function()? logout,
    TResult? Function()? googleSignIn,
  }) {
    return verifyOTP?.call(otp, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(String email)? sendOTP,
    TResult Function(String otp, String email)? verifyOTP,
    TResult Function()? logout,
    TResult Function()? googleSignIn,
    required TResult orElse(),
  }) {
    if (verifyOTP != null) {
      return verifyOTP(otp, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_SendOTP value) sendOTP,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_Logout value) logout,
    required TResult Function(_GoogleSignIn value) googleSignIn,
  }) {
    return verifyOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_SendOTP value)? sendOTP,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_GoogleSignIn value)? googleSignIn,
  }) {
    return verifyOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_SendOTP value)? sendOTP,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_Logout value)? logout,
    TResult Function(_GoogleSignIn value)? googleSignIn,
    required TResult orElse(),
  }) {
    if (verifyOTP != null) {
      return verifyOTP(this);
    }
    return orElse();
  }
}

abstract class _VerifyOTP implements AuthenticationEvent {
  const factory _VerifyOTP(
      {required final String otp,
      required final String email}) = _$VerifyOTPImpl;

  String get otp;
  String get email;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyOTPImplCopyWith<_$VerifyOTPImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutImpl implements _Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(String email) sendOTP,
    required TResult Function(String otp, String email) verifyOTP,
    required TResult Function() logout,
    required TResult Function() googleSignIn,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function(String email)? sendOTP,
    TResult? Function(String otp, String email)? verifyOTP,
    TResult? Function()? logout,
    TResult? Function()? googleSignIn,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(String email)? sendOTP,
    TResult Function(String otp, String email)? verifyOTP,
    TResult Function()? logout,
    TResult Function()? googleSignIn,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_SendOTP value) sendOTP,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_Logout value) logout,
    required TResult Function(_GoogleSignIn value) googleSignIn,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_SendOTP value)? sendOTP,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_GoogleSignIn value)? googleSignIn,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_SendOTP value)? sendOTP,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_Logout value)? logout,
    TResult Function(_GoogleSignIn value)? googleSignIn,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthenticationEvent {
  const factory _Logout() = _$LogoutImpl;
}

/// @nodoc
abstract class _$$GoogleSignInImplCopyWith<$Res> {
  factory _$$GoogleSignInImplCopyWith(
          _$GoogleSignInImpl value, $Res Function(_$GoogleSignInImpl) then) =
      __$$GoogleSignInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoogleSignInImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$GoogleSignInImpl>
    implements _$$GoogleSignInImplCopyWith<$Res> {
  __$$GoogleSignInImplCopyWithImpl(
      _$GoogleSignInImpl _value, $Res Function(_$GoogleSignInImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GoogleSignInImpl implements _GoogleSignIn {
  const _$GoogleSignInImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.googleSignIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoogleSignInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(String email) sendOTP,
    required TResult Function(String otp, String email) verifyOTP,
    required TResult Function() logout,
    required TResult Function() googleSignIn,
  }) {
    return googleSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function(String email)? sendOTP,
    TResult? Function(String otp, String email)? verifyOTP,
    TResult? Function()? logout,
    TResult? Function()? googleSignIn,
  }) {
    return googleSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(String email)? sendOTP,
    TResult Function(String otp, String email)? verifyOTP,
    TResult Function()? logout,
    TResult Function()? googleSignIn,
    required TResult orElse(),
  }) {
    if (googleSignIn != null) {
      return googleSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_SendOTP value) sendOTP,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_Logout value) logout,
    required TResult Function(_GoogleSignIn value) googleSignIn,
  }) {
    return googleSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_SendOTP value)? sendOTP,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_GoogleSignIn value)? googleSignIn,
  }) {
    return googleSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_SendOTP value)? sendOTP,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_Logout value)? logout,
    TResult Function(_GoogleSignIn value)? googleSignIn,
    required TResult orElse(),
  }) {
    if (googleSignIn != null) {
      return googleSignIn(this);
    }
    return orElse();
  }
}

abstract class _GoogleSignIn implements AuthenticationEvent {
  const factory _GoogleSignIn() = _$GoogleSignInImpl;
}

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String email) otpSent,
    required TResult Function(AuthenticationType type, String? name)
        otpVerified,
    required TResult Function(MainFailure failure) error,
    required TResult Function(MainFailure failure) verificationError,
    required TResult Function() logingOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String email)? otpSent,
    TResult? Function(AuthenticationType type, String? name)? otpVerified,
    TResult? Function(MainFailure failure)? error,
    TResult? Function(MainFailure failure)? verificationError,
    TResult? Function()? logingOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String email)? otpSent,
    TResult Function(AuthenticationType type, String? name)? otpVerified,
    TResult Function(MainFailure failure)? error,
    TResult Function(MainFailure failure)? verificationError,
    TResult Function()? logingOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_Error value) error,
    required TResult Function(_VerificationError value) verificationError,
    required TResult Function(_LogingOut value) logingOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_Error value)? error,
    TResult? Function(_VerificationError value)? verificationError,
    TResult? Function(_LogingOut value)? logingOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_Error value)? error,
    TResult Function(_VerificationError value)? verificationError,
    TResult Function(_LogingOut value)? logingOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthenticationState
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
    extends _$AuthenticationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthenticationState.initial()';
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
    required TResult Function(String email) otpSent,
    required TResult Function(AuthenticationType type, String? name)
        otpVerified,
    required TResult Function(MainFailure failure) error,
    required TResult Function(MainFailure failure) verificationError,
    required TResult Function() logingOut,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String email)? otpSent,
    TResult? Function(AuthenticationType type, String? name)? otpVerified,
    TResult? Function(MainFailure failure)? error,
    TResult? Function(MainFailure failure)? verificationError,
    TResult? Function()? logingOut,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String email)? otpSent,
    TResult Function(AuthenticationType type, String? name)? otpVerified,
    TResult Function(MainFailure failure)? error,
    TResult Function(MainFailure failure)? verificationError,
    TResult Function()? logingOut,
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
    required TResult Function(AuthLoading value) loading,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_Error value) error,
    required TResult Function(_VerificationError value) verificationError,
    required TResult Function(_LogingOut value) logingOut,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_Error value)? error,
    TResult? Function(_VerificationError value)? verificationError,
    TResult? Function(_LogingOut value)? logingOut,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_Error value)? error,
    TResult Function(_VerificationError value)? verificationError,
    TResult Function(_LogingOut value)? logingOut,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthenticationState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AuthLoadingImplCopyWith<$Res> {
  factory _$$AuthLoadingImplCopyWith(
          _$AuthLoadingImpl value, $Res Function(_$AuthLoadingImpl) then) =
      __$$AuthLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLoadingImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$AuthLoadingImpl>
    implements _$$AuthLoadingImplCopyWith<$Res> {
  __$$AuthLoadingImplCopyWithImpl(
      _$AuthLoadingImpl _value, $Res Function(_$AuthLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthLoadingImpl implements AuthLoading {
  const _$AuthLoadingImpl();

  @override
  String toString() {
    return 'AuthenticationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String email) otpSent,
    required TResult Function(AuthenticationType type, String? name)
        otpVerified,
    required TResult Function(MainFailure failure) error,
    required TResult Function(MainFailure failure) verificationError,
    required TResult Function() logingOut,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String email)? otpSent,
    TResult? Function(AuthenticationType type, String? name)? otpVerified,
    TResult? Function(MainFailure failure)? error,
    TResult? Function(MainFailure failure)? verificationError,
    TResult? Function()? logingOut,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String email)? otpSent,
    TResult Function(AuthenticationType type, String? name)? otpVerified,
    TResult Function(MainFailure failure)? error,
    TResult Function(MainFailure failure)? verificationError,
    TResult Function()? logingOut,
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
    required TResult Function(AuthLoading value) loading,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_Error value) error,
    required TResult Function(_VerificationError value) verificationError,
    required TResult Function(_LogingOut value) logingOut,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_Error value)? error,
    TResult? Function(_VerificationError value)? verificationError,
    TResult? Function(_LogingOut value)? logingOut,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_Error value)? error,
    TResult Function(_VerificationError value)? verificationError,
    TResult Function(_LogingOut value)? logingOut,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthLoading implements AuthenticationState {
  const factory AuthLoading() = _$AuthLoadingImpl;
}

/// @nodoc
abstract class _$$OtpSentImplCopyWith<$Res> {
  factory _$$OtpSentImplCopyWith(
          _$OtpSentImpl value, $Res Function(_$OtpSentImpl) then) =
      __$$OtpSentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$OtpSentImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$OtpSentImpl>
    implements _$$OtpSentImplCopyWith<$Res> {
  __$$OtpSentImplCopyWithImpl(
      _$OtpSentImpl _value, $Res Function(_$OtpSentImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$OtpSentImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpSentImpl implements _OtpSent {
  const _$OtpSentImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthenticationState.otpSent(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpSentImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpSentImplCopyWith<_$OtpSentImpl> get copyWith =>
      __$$OtpSentImplCopyWithImpl<_$OtpSentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String email) otpSent,
    required TResult Function(AuthenticationType type, String? name)
        otpVerified,
    required TResult Function(MainFailure failure) error,
    required TResult Function(MainFailure failure) verificationError,
    required TResult Function() logingOut,
  }) {
    return otpSent(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String email)? otpSent,
    TResult? Function(AuthenticationType type, String? name)? otpVerified,
    TResult? Function(MainFailure failure)? error,
    TResult? Function(MainFailure failure)? verificationError,
    TResult? Function()? logingOut,
  }) {
    return otpSent?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String email)? otpSent,
    TResult Function(AuthenticationType type, String? name)? otpVerified,
    TResult Function(MainFailure failure)? error,
    TResult Function(MainFailure failure)? verificationError,
    TResult Function()? logingOut,
    required TResult orElse(),
  }) {
    if (otpSent != null) {
      return otpSent(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_Error value) error,
    required TResult Function(_VerificationError value) verificationError,
    required TResult Function(_LogingOut value) logingOut,
  }) {
    return otpSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_Error value)? error,
    TResult? Function(_VerificationError value)? verificationError,
    TResult? Function(_LogingOut value)? logingOut,
  }) {
    return otpSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_Error value)? error,
    TResult Function(_VerificationError value)? verificationError,
    TResult Function(_LogingOut value)? logingOut,
    required TResult orElse(),
  }) {
    if (otpSent != null) {
      return otpSent(this);
    }
    return orElse();
  }
}

abstract class _OtpSent implements AuthenticationState {
  const factory _OtpSent(final String email) = _$OtpSentImpl;

  String get email;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpSentImplCopyWith<_$OtpSentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpVerifiedImplCopyWith<$Res> {
  factory _$$OtpVerifiedImplCopyWith(
          _$OtpVerifiedImpl value, $Res Function(_$OtpVerifiedImpl) then) =
      __$$OtpVerifiedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthenticationType type, String? name});
}

/// @nodoc
class __$$OtpVerifiedImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$OtpVerifiedImpl>
    implements _$$OtpVerifiedImplCopyWith<$Res> {
  __$$OtpVerifiedImplCopyWithImpl(
      _$OtpVerifiedImpl _value, $Res Function(_$OtpVerifiedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = freezed,
  }) {
    return _then(_$OtpVerifiedImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AuthenticationType,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OtpVerifiedImpl implements _OtpVerified {
  const _$OtpVerifiedImpl({required this.type, this.name});

  @override
  final AuthenticationType type;
  @override
  final String? name;

  @override
  String toString() {
    return 'AuthenticationState.otpVerified(type: $type, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpVerifiedImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, name);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpVerifiedImplCopyWith<_$OtpVerifiedImpl> get copyWith =>
      __$$OtpVerifiedImplCopyWithImpl<_$OtpVerifiedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String email) otpSent,
    required TResult Function(AuthenticationType type, String? name)
        otpVerified,
    required TResult Function(MainFailure failure) error,
    required TResult Function(MainFailure failure) verificationError,
    required TResult Function() logingOut,
  }) {
    return otpVerified(type, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String email)? otpSent,
    TResult? Function(AuthenticationType type, String? name)? otpVerified,
    TResult? Function(MainFailure failure)? error,
    TResult? Function(MainFailure failure)? verificationError,
    TResult? Function()? logingOut,
  }) {
    return otpVerified?.call(type, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String email)? otpSent,
    TResult Function(AuthenticationType type, String? name)? otpVerified,
    TResult Function(MainFailure failure)? error,
    TResult Function(MainFailure failure)? verificationError,
    TResult Function()? logingOut,
    required TResult orElse(),
  }) {
    if (otpVerified != null) {
      return otpVerified(type, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_Error value) error,
    required TResult Function(_VerificationError value) verificationError,
    required TResult Function(_LogingOut value) logingOut,
  }) {
    return otpVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_Error value)? error,
    TResult? Function(_VerificationError value)? verificationError,
    TResult? Function(_LogingOut value)? logingOut,
  }) {
    return otpVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_Error value)? error,
    TResult Function(_VerificationError value)? verificationError,
    TResult Function(_LogingOut value)? logingOut,
    required TResult orElse(),
  }) {
    if (otpVerified != null) {
      return otpVerified(this);
    }
    return orElse();
  }
}

abstract class _OtpVerified implements AuthenticationState {
  const factory _OtpVerified(
      {required final AuthenticationType type,
      final String? name}) = _$OtpVerifiedImpl;

  AuthenticationType get type;
  String? get name;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpVerifiedImplCopyWith<_$OtpVerifiedImpl> get copyWith =>
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
    extends _$AuthenticationStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationState
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

  /// Create a copy of AuthenticationState
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
    return 'AuthenticationState.error(failure: $failure)';
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

  /// Create a copy of AuthenticationState
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
    required TResult Function(String email) otpSent,
    required TResult Function(AuthenticationType type, String? name)
        otpVerified,
    required TResult Function(MainFailure failure) error,
    required TResult Function(MainFailure failure) verificationError,
    required TResult Function() logingOut,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String email)? otpSent,
    TResult? Function(AuthenticationType type, String? name)? otpVerified,
    TResult? Function(MainFailure failure)? error,
    TResult? Function(MainFailure failure)? verificationError,
    TResult? Function()? logingOut,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String email)? otpSent,
    TResult Function(AuthenticationType type, String? name)? otpVerified,
    TResult Function(MainFailure failure)? error,
    TResult Function(MainFailure failure)? verificationError,
    TResult Function()? logingOut,
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
    required TResult Function(AuthLoading value) loading,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_Error value) error,
    required TResult Function(_VerificationError value) verificationError,
    required TResult Function(_LogingOut value) logingOut,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_Error value)? error,
    TResult? Function(_VerificationError value)? verificationError,
    TResult? Function(_LogingOut value)? logingOut,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_Error value)? error,
    TResult Function(_VerificationError value)? verificationError,
    TResult Function(_LogingOut value)? logingOut,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthenticationState {
  const factory _Error(final MainFailure failure) = _$ErrorImpl;

  MainFailure get failure;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerificationErrorImplCopyWith<$Res> {
  factory _$$VerificationErrorImplCopyWith(_$VerificationErrorImpl value,
          $Res Function(_$VerificationErrorImpl) then) =
      __$$VerificationErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MainFailure failure});

  $MainFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$VerificationErrorImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$VerificationErrorImpl>
    implements _$$VerificationErrorImplCopyWith<$Res> {
  __$$VerificationErrorImplCopyWithImpl(_$VerificationErrorImpl _value,
      $Res Function(_$VerificationErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$VerificationErrorImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as MainFailure,
    ));
  }

  /// Create a copy of AuthenticationState
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

class _$VerificationErrorImpl implements _VerificationError {
  const _$VerificationErrorImpl(this.failure);

  @override
  final MainFailure failure;

  @override
  String toString() {
    return 'AuthenticationState.verificationError(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationErrorImplCopyWith<_$VerificationErrorImpl> get copyWith =>
      __$$VerificationErrorImplCopyWithImpl<_$VerificationErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String email) otpSent,
    required TResult Function(AuthenticationType type, String? name)
        otpVerified,
    required TResult Function(MainFailure failure) error,
    required TResult Function(MainFailure failure) verificationError,
    required TResult Function() logingOut,
  }) {
    return verificationError(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String email)? otpSent,
    TResult? Function(AuthenticationType type, String? name)? otpVerified,
    TResult? Function(MainFailure failure)? error,
    TResult? Function(MainFailure failure)? verificationError,
    TResult? Function()? logingOut,
  }) {
    return verificationError?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String email)? otpSent,
    TResult Function(AuthenticationType type, String? name)? otpVerified,
    TResult Function(MainFailure failure)? error,
    TResult Function(MainFailure failure)? verificationError,
    TResult Function()? logingOut,
    required TResult orElse(),
  }) {
    if (verificationError != null) {
      return verificationError(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_Error value) error,
    required TResult Function(_VerificationError value) verificationError,
    required TResult Function(_LogingOut value) logingOut,
  }) {
    return verificationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_Error value)? error,
    TResult? Function(_VerificationError value)? verificationError,
    TResult? Function(_LogingOut value)? logingOut,
  }) {
    return verificationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_Error value)? error,
    TResult Function(_VerificationError value)? verificationError,
    TResult Function(_LogingOut value)? logingOut,
    required TResult orElse(),
  }) {
    if (verificationError != null) {
      return verificationError(this);
    }
    return orElse();
  }
}

abstract class _VerificationError implements AuthenticationState {
  const factory _VerificationError(final MainFailure failure) =
      _$VerificationErrorImpl;

  MainFailure get failure;

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationErrorImplCopyWith<_$VerificationErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogingOutImplCopyWith<$Res> {
  factory _$$LogingOutImplCopyWith(
          _$LogingOutImpl value, $Res Function(_$LogingOutImpl) then) =
      __$$LogingOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogingOutImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$LogingOutImpl>
    implements _$$LogingOutImplCopyWith<$Res> {
  __$$LogingOutImplCopyWithImpl(
      _$LogingOutImpl _value, $Res Function(_$LogingOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogingOutImpl implements _LogingOut {
  const _$LogingOutImpl();

  @override
  String toString() {
    return 'AuthenticationState.logingOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogingOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String email) otpSent,
    required TResult Function(AuthenticationType type, String? name)
        otpVerified,
    required TResult Function(MainFailure failure) error,
    required TResult Function(MainFailure failure) verificationError,
    required TResult Function() logingOut,
  }) {
    return logingOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String email)? otpSent,
    TResult? Function(AuthenticationType type, String? name)? otpVerified,
    TResult? Function(MainFailure failure)? error,
    TResult? Function(MainFailure failure)? verificationError,
    TResult? Function()? logingOut,
  }) {
    return logingOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String email)? otpSent,
    TResult Function(AuthenticationType type, String? name)? otpVerified,
    TResult Function(MainFailure failure)? error,
    TResult Function(MainFailure failure)? verificationError,
    TResult Function()? logingOut,
    required TResult orElse(),
  }) {
    if (logingOut != null) {
      return logingOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_Error value) error,
    required TResult Function(_VerificationError value) verificationError,
    required TResult Function(_LogingOut value) logingOut,
  }) {
    return logingOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_Error value)? error,
    TResult? Function(_VerificationError value)? verificationError,
    TResult? Function(_LogingOut value)? logingOut,
  }) {
    return logingOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_Error value)? error,
    TResult Function(_VerificationError value)? verificationError,
    TResult Function(_LogingOut value)? logingOut,
    required TResult orElse(),
  }) {
    if (logingOut != null) {
      return logingOut(this);
    }
    return orElse();
  }
}

abstract class _LogingOut implements AuthenticationState {
  const factory _LogingOut() = _$LogingOutImpl;
}
