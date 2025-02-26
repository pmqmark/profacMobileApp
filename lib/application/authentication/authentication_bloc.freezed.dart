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
    required TResult Function() started,
    required TResult Function(int phoneNumber) sendOTP,
    required TResult Function(String otp, int mobileNumber) verifyOTP,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int phoneNumber)? sendOTP,
    TResult? Function(String otp, int mobileNumber)? verifyOTP,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int phoneNumber)? sendOTP,
    TResult Function(String otp, int mobileNumber)? verifyOTP,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendOTP value) sendOTP,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendOTP value)? sendOTP,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendOTP value)? sendOTP,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_Logout value)? logout,
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
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.started()';
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
    required TResult Function(int phoneNumber) sendOTP,
    required TResult Function(String otp, int mobileNumber) verifyOTP,
    required TResult Function() logout,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int phoneNumber)? sendOTP,
    TResult? Function(String otp, int mobileNumber)? verifyOTP,
    TResult? Function()? logout,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int phoneNumber)? sendOTP,
    TResult Function(String otp, int mobileNumber)? verifyOTP,
    TResult Function()? logout,
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
    required TResult Function(_SendOTP value) sendOTP,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_Logout value) logout,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendOTP value)? sendOTP,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_Logout value)? logout,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendOTP value)? sendOTP,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthenticationEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SendOTPImplCopyWith<$Res> {
  factory _$$SendOTPImplCopyWith(
          _$SendOTPImpl value, $Res Function(_$SendOTPImpl) then) =
      __$$SendOTPImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int phoneNumber});
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
    Object? phoneNumber = null,
  }) {
    return _then(_$SendOTPImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SendOTPImpl implements _SendOTP {
  const _$SendOTPImpl(this.phoneNumber);

  @override
  final int phoneNumber;

  @override
  String toString() {
    return 'AuthenticationEvent.sendOTP(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOTPImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

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
    required TResult Function() started,
    required TResult Function(int phoneNumber) sendOTP,
    required TResult Function(String otp, int mobileNumber) verifyOTP,
    required TResult Function() logout,
  }) {
    return sendOTP(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int phoneNumber)? sendOTP,
    TResult? Function(String otp, int mobileNumber)? verifyOTP,
    TResult? Function()? logout,
  }) {
    return sendOTP?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int phoneNumber)? sendOTP,
    TResult Function(String otp, int mobileNumber)? verifyOTP,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (sendOTP != null) {
      return sendOTP(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendOTP value) sendOTP,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_Logout value) logout,
  }) {
    return sendOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendOTP value)? sendOTP,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_Logout value)? logout,
  }) {
    return sendOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendOTP value)? sendOTP,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (sendOTP != null) {
      return sendOTP(this);
    }
    return orElse();
  }
}

abstract class _SendOTP implements AuthenticationEvent {
  const factory _SendOTP(final int phoneNumber) = _$SendOTPImpl;

  int get phoneNumber;

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
  $Res call({String otp, int mobileNumber});
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
    Object? mobileNumber = null,
  }) {
    return _then(_$VerifyOTPImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$VerifyOTPImpl implements _VerifyOTP {
  const _$VerifyOTPImpl({required this.otp, required this.mobileNumber});

  @override
  final String otp;
  @override
  final int mobileNumber;

  @override
  String toString() {
    return 'AuthenticationEvent.verifyOTP(otp: $otp, mobileNumber: $mobileNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOTPImpl &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp, mobileNumber);

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
    required TResult Function() started,
    required TResult Function(int phoneNumber) sendOTP,
    required TResult Function(String otp, int mobileNumber) verifyOTP,
    required TResult Function() logout,
  }) {
    return verifyOTP(otp, mobileNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int phoneNumber)? sendOTP,
    TResult? Function(String otp, int mobileNumber)? verifyOTP,
    TResult? Function()? logout,
  }) {
    return verifyOTP?.call(otp, mobileNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int phoneNumber)? sendOTP,
    TResult Function(String otp, int mobileNumber)? verifyOTP,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (verifyOTP != null) {
      return verifyOTP(otp, mobileNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendOTP value) sendOTP,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_Logout value) logout,
  }) {
    return verifyOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendOTP value)? sendOTP,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_Logout value)? logout,
  }) {
    return verifyOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendOTP value)? sendOTP,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_Logout value)? logout,
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
      required final int mobileNumber}) = _$VerifyOTPImpl;

  String get otp;
  int get mobileNumber;

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
    required TResult Function() started,
    required TResult Function(int phoneNumber) sendOTP,
    required TResult Function(String otp, int mobileNumber) verifyOTP,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int phoneNumber)? sendOTP,
    TResult? Function(String otp, int mobileNumber)? verifyOTP,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int phoneNumber)? sendOTP,
    TResult Function(String otp, int mobileNumber)? verifyOTP,
    TResult Function()? logout,
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
    required TResult Function(_Started value) started,
    required TResult Function(_SendOTP value) sendOTP,
    required TResult Function(_VerifyOTP value) verifyOTP,
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendOTP value)? sendOTP,
    TResult? Function(_VerifyOTP value)? verifyOTP,
    TResult? Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendOTP value)? sendOTP,
    TResult Function(_VerifyOTP value)? verifyOTP,
    TResult Function(_Logout value)? logout,
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
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int mobileNumber) otpSent,
    required TResult Function(AuthenticationType type) otpVerified,
    required TResult Function(MainFailure failure) error,
    required TResult Function(MainFailure failure) verificationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int mobileNumber)? otpSent,
    TResult? Function(AuthenticationType type)? otpVerified,
    TResult? Function(MainFailure failure)? error,
    TResult? Function(MainFailure failure)? verificationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int mobileNumber)? otpSent,
    TResult Function(AuthenticationType type)? otpVerified,
    TResult Function(MainFailure failure)? error,
    TResult Function(MainFailure failure)? verificationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_Error value) error,
    required TResult Function(_VerificationError value) verificationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_Error value)? error,
    TResult? Function(_VerificationError value)? verificationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_Error value)? error,
    TResult Function(_VerificationError value)? verificationError,
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
    required TResult Function(int mobileNumber) otpSent,
    required TResult Function(AuthenticationType type) otpVerified,
    required TResult Function(MainFailure failure) error,
    required TResult Function(MainFailure failure) verificationError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int mobileNumber)? otpSent,
    TResult? Function(AuthenticationType type)? otpVerified,
    TResult? Function(MainFailure failure)? error,
    TResult? Function(MainFailure failure)? verificationError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int mobileNumber)? otpSent,
    TResult Function(AuthenticationType type)? otpVerified,
    TResult Function(MainFailure failure)? error,
    TResult Function(MainFailure failure)? verificationError,
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
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_Error value) error,
    required TResult Function(_VerificationError value) verificationError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_Error value)? error,
    TResult? Function(_VerificationError value)? verificationError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_Error value)? error,
    TResult Function(_VerificationError value)? verificationError,
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
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthenticationState.loading()';
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
    required TResult Function(int mobileNumber) otpSent,
    required TResult Function(AuthenticationType type) otpVerified,
    required TResult Function(MainFailure failure) error,
    required TResult Function(MainFailure failure) verificationError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int mobileNumber)? otpSent,
    TResult? Function(AuthenticationType type)? otpVerified,
    TResult? Function(MainFailure failure)? error,
    TResult? Function(MainFailure failure)? verificationError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int mobileNumber)? otpSent,
    TResult Function(AuthenticationType type)? otpVerified,
    TResult Function(MainFailure failure)? error,
    TResult Function(MainFailure failure)? verificationError,
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
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_Error value) error,
    required TResult Function(_VerificationError value) verificationError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_Error value)? error,
    TResult? Function(_VerificationError value)? verificationError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_Error value)? error,
    TResult Function(_VerificationError value)? verificationError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthenticationState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$OtpSentImplCopyWith<$Res> {
  factory _$$OtpSentImplCopyWith(
          _$OtpSentImpl value, $Res Function(_$OtpSentImpl) then) =
      __$$OtpSentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int mobileNumber});
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
    Object? mobileNumber = null,
  }) {
    return _then(_$OtpSentImpl(
      null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OtpSentImpl implements _OtpSent {
  const _$OtpSentImpl(this.mobileNumber);

  @override
  final int mobileNumber;

  @override
  String toString() {
    return 'AuthenticationState.otpSent(mobileNumber: $mobileNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpSentImpl &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobileNumber);

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
    required TResult Function(int mobileNumber) otpSent,
    required TResult Function(AuthenticationType type) otpVerified,
    required TResult Function(MainFailure failure) error,
    required TResult Function(MainFailure failure) verificationError,
  }) {
    return otpSent(mobileNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int mobileNumber)? otpSent,
    TResult? Function(AuthenticationType type)? otpVerified,
    TResult? Function(MainFailure failure)? error,
    TResult? Function(MainFailure failure)? verificationError,
  }) {
    return otpSent?.call(mobileNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int mobileNumber)? otpSent,
    TResult Function(AuthenticationType type)? otpVerified,
    TResult Function(MainFailure failure)? error,
    TResult Function(MainFailure failure)? verificationError,
    required TResult orElse(),
  }) {
    if (otpSent != null) {
      return otpSent(mobileNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_Error value) error,
    required TResult Function(_VerificationError value) verificationError,
  }) {
    return otpSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_Error value)? error,
    TResult? Function(_VerificationError value)? verificationError,
  }) {
    return otpSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_Error value)? error,
    TResult Function(_VerificationError value)? verificationError,
    required TResult orElse(),
  }) {
    if (otpSent != null) {
      return otpSent(this);
    }
    return orElse();
  }
}

abstract class _OtpSent implements AuthenticationState {
  const factory _OtpSent(final int mobileNumber) = _$OtpSentImpl;

  int get mobileNumber;

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
  $Res call({AuthenticationType type});
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
  }) {
    return _then(_$OtpVerifiedImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AuthenticationType,
    ));
  }
}

/// @nodoc

class _$OtpVerifiedImpl implements _OtpVerified {
  const _$OtpVerifiedImpl(this.type);

  @override
  final AuthenticationType type;

  @override
  String toString() {
    return 'AuthenticationState.otpVerified(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpVerifiedImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

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
    required TResult Function(int mobileNumber) otpSent,
    required TResult Function(AuthenticationType type) otpVerified,
    required TResult Function(MainFailure failure) error,
    required TResult Function(MainFailure failure) verificationError,
  }) {
    return otpVerified(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int mobileNumber)? otpSent,
    TResult? Function(AuthenticationType type)? otpVerified,
    TResult? Function(MainFailure failure)? error,
    TResult? Function(MainFailure failure)? verificationError,
  }) {
    return otpVerified?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int mobileNumber)? otpSent,
    TResult Function(AuthenticationType type)? otpVerified,
    TResult Function(MainFailure failure)? error,
    TResult Function(MainFailure failure)? verificationError,
    required TResult orElse(),
  }) {
    if (otpVerified != null) {
      return otpVerified(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_Error value) error,
    required TResult Function(_VerificationError value) verificationError,
  }) {
    return otpVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_Error value)? error,
    TResult? Function(_VerificationError value)? verificationError,
  }) {
    return otpVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_Error value)? error,
    TResult Function(_VerificationError value)? verificationError,
    required TResult orElse(),
  }) {
    if (otpVerified != null) {
      return otpVerified(this);
    }
    return orElse();
  }
}

abstract class _OtpVerified implements AuthenticationState {
  const factory _OtpVerified(final AuthenticationType type) = _$OtpVerifiedImpl;

  AuthenticationType get type;

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
    required TResult Function(int mobileNumber) otpSent,
    required TResult Function(AuthenticationType type) otpVerified,
    required TResult Function(MainFailure failure) error,
    required TResult Function(MainFailure failure) verificationError,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int mobileNumber)? otpSent,
    TResult? Function(AuthenticationType type)? otpVerified,
    TResult? Function(MainFailure failure)? error,
    TResult? Function(MainFailure failure)? verificationError,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int mobileNumber)? otpSent,
    TResult Function(AuthenticationType type)? otpVerified,
    TResult Function(MainFailure failure)? error,
    TResult Function(MainFailure failure)? verificationError,
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
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_Error value) error,
    required TResult Function(_VerificationError value) verificationError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_Error value)? error,
    TResult? Function(_VerificationError value)? verificationError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_Error value)? error,
    TResult Function(_VerificationError value)? verificationError,
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
    required TResult Function(int mobileNumber) otpSent,
    required TResult Function(AuthenticationType type) otpVerified,
    required TResult Function(MainFailure failure) error,
    required TResult Function(MainFailure failure) verificationError,
  }) {
    return verificationError(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int mobileNumber)? otpSent,
    TResult? Function(AuthenticationType type)? otpVerified,
    TResult? Function(MainFailure failure)? error,
    TResult? Function(MainFailure failure)? verificationError,
  }) {
    return verificationError?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int mobileNumber)? otpSent,
    TResult Function(AuthenticationType type)? otpVerified,
    TResult Function(MainFailure failure)? error,
    TResult Function(MainFailure failure)? verificationError,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_OtpVerified value) otpVerified,
    required TResult Function(_Error value) error,
    required TResult Function(_VerificationError value) verificationError,
  }) {
    return verificationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_OtpVerified value)? otpVerified,
    TResult? Function(_Error value)? error,
    TResult? Function(_VerificationError value)? verificationError,
  }) {
    return verificationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_OtpVerified value)? otpVerified,
    TResult Function(_Error value)? error,
    TResult Function(_VerificationError value)? verificationError,
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
