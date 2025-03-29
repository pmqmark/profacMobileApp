// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function() loadProfile,
    required TResult Function(String? name, String? phoneNumber, String? email)
        updateProfileFields,
    required TResult Function(ProfileModel profile) updateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function()? loadProfile,
    TResult? Function(String? name, String? phoneNumber, String? email)?
        updateProfileFields,
    TResult? Function(ProfileModel profile)? updateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? loadProfile,
    TResult Function(String? name, String? phoneNumber, String? email)?
        updateProfileFields,
    TResult Function(ProfileModel profile)? updateProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_LoadProfile value) loadProfile,
    required TResult Function(_UpdateProfileFields value) updateProfileFields,
    required TResult Function(_UpdateProfile value) updateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_LoadProfile value)? loadProfile,
    TResult? Function(_UpdateProfileFields value)? updateProfileFields,
    TResult? Function(_UpdateProfile value)? updateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_LoadProfile value)? loadProfile,
    TResult Function(_UpdateProfileFields value)? updateProfileFields,
    TResult Function(_UpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileEvent
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
    extends _$ProfileEventCopyWithImpl<$Res, _$ResetImpl>
    implements _$$ResetImplCopyWith<$Res> {
  __$$ResetImplCopyWithImpl(
      _$ResetImpl _value, $Res Function(_$ResetImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetImpl implements _Reset {
  const _$ResetImpl();

  @override
  String toString() {
    return 'ProfileEvent.reset()';
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
    required TResult Function() loadProfile,
    required TResult Function(String? name, String? phoneNumber, String? email)
        updateProfileFields,
    required TResult Function(ProfileModel profile) updateProfile,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function()? loadProfile,
    TResult? Function(String? name, String? phoneNumber, String? email)?
        updateProfileFields,
    TResult? Function(ProfileModel profile)? updateProfile,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? loadProfile,
    TResult Function(String? name, String? phoneNumber, String? email)?
        updateProfileFields,
    TResult Function(ProfileModel profile)? updateProfile,
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
    required TResult Function(_LoadProfile value) loadProfile,
    required TResult Function(_UpdateProfileFields value) updateProfileFields,
    required TResult Function(_UpdateProfile value) updateProfile,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_LoadProfile value)? loadProfile,
    TResult? Function(_UpdateProfileFields value)? updateProfileFields,
    TResult? Function(_UpdateProfile value)? updateProfile,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_LoadProfile value)? loadProfile,
    TResult Function(_UpdateProfileFields value)? updateProfileFields,
    TResult Function(_UpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements ProfileEvent {
  const factory _Reset() = _$ResetImpl;
}

/// @nodoc
abstract class _$$LoadProfileImplCopyWith<$Res> {
  factory _$$LoadProfileImplCopyWith(
          _$LoadProfileImpl value, $Res Function(_$LoadProfileImpl) then) =
      __$$LoadProfileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadProfileImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$LoadProfileImpl>
    implements _$$LoadProfileImplCopyWith<$Res> {
  __$$LoadProfileImplCopyWithImpl(
      _$LoadProfileImpl _value, $Res Function(_$LoadProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadProfileImpl implements _LoadProfile {
  const _$LoadProfileImpl();

  @override
  String toString() {
    return 'ProfileEvent.loadProfile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadProfileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function() loadProfile,
    required TResult Function(String? name, String? phoneNumber, String? email)
        updateProfileFields,
    required TResult Function(ProfileModel profile) updateProfile,
  }) {
    return loadProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function()? loadProfile,
    TResult? Function(String? name, String? phoneNumber, String? email)?
        updateProfileFields,
    TResult? Function(ProfileModel profile)? updateProfile,
  }) {
    return loadProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? loadProfile,
    TResult Function(String? name, String? phoneNumber, String? email)?
        updateProfileFields,
    TResult Function(ProfileModel profile)? updateProfile,
    required TResult orElse(),
  }) {
    if (loadProfile != null) {
      return loadProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_LoadProfile value) loadProfile,
    required TResult Function(_UpdateProfileFields value) updateProfileFields,
    required TResult Function(_UpdateProfile value) updateProfile,
  }) {
    return loadProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_LoadProfile value)? loadProfile,
    TResult? Function(_UpdateProfileFields value)? updateProfileFields,
    TResult? Function(_UpdateProfile value)? updateProfile,
  }) {
    return loadProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_LoadProfile value)? loadProfile,
    TResult Function(_UpdateProfileFields value)? updateProfileFields,
    TResult Function(_UpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) {
    if (loadProfile != null) {
      return loadProfile(this);
    }
    return orElse();
  }
}

abstract class _LoadProfile implements ProfileEvent {
  const factory _LoadProfile() = _$LoadProfileImpl;
}

/// @nodoc
abstract class _$$UpdateProfileFieldsImplCopyWith<$Res> {
  factory _$$UpdateProfileFieldsImplCopyWith(_$UpdateProfileFieldsImpl value,
          $Res Function(_$UpdateProfileFieldsImpl) then) =
      __$$UpdateProfileFieldsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? name, String? phoneNumber, String? email});
}

/// @nodoc
class __$$UpdateProfileFieldsImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateProfileFieldsImpl>
    implements _$$UpdateProfileFieldsImplCopyWith<$Res> {
  __$$UpdateProfileFieldsImplCopyWithImpl(_$UpdateProfileFieldsImpl _value,
      $Res Function(_$UpdateProfileFieldsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
  }) {
    return _then(_$UpdateProfileFieldsImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdateProfileFieldsImpl implements _UpdateProfileFields {
  const _$UpdateProfileFieldsImpl({this.name, this.phoneNumber, this.email});

  @override
  final String? name;
  @override
  final String? phoneNumber;
  @override
  final String? email;

  @override
  String toString() {
    return 'ProfileEvent.updateProfileFields(name: $name, phoneNumber: $phoneNumber, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileFieldsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, phoneNumber, email);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileFieldsImplCopyWith<_$UpdateProfileFieldsImpl> get copyWith =>
      __$$UpdateProfileFieldsImplCopyWithImpl<_$UpdateProfileFieldsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function() loadProfile,
    required TResult Function(String? name, String? phoneNumber, String? email)
        updateProfileFields,
    required TResult Function(ProfileModel profile) updateProfile,
  }) {
    return updateProfileFields(name, phoneNumber, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function()? loadProfile,
    TResult? Function(String? name, String? phoneNumber, String? email)?
        updateProfileFields,
    TResult? Function(ProfileModel profile)? updateProfile,
  }) {
    return updateProfileFields?.call(name, phoneNumber, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? loadProfile,
    TResult Function(String? name, String? phoneNumber, String? email)?
        updateProfileFields,
    TResult Function(ProfileModel profile)? updateProfile,
    required TResult orElse(),
  }) {
    if (updateProfileFields != null) {
      return updateProfileFields(name, phoneNumber, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_LoadProfile value) loadProfile,
    required TResult Function(_UpdateProfileFields value) updateProfileFields,
    required TResult Function(_UpdateProfile value) updateProfile,
  }) {
    return updateProfileFields(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_LoadProfile value)? loadProfile,
    TResult? Function(_UpdateProfileFields value)? updateProfileFields,
    TResult? Function(_UpdateProfile value)? updateProfile,
  }) {
    return updateProfileFields?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_LoadProfile value)? loadProfile,
    TResult Function(_UpdateProfileFields value)? updateProfileFields,
    TResult Function(_UpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) {
    if (updateProfileFields != null) {
      return updateProfileFields(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfileFields implements ProfileEvent {
  const factory _UpdateProfileFields(
      {final String? name,
      final String? phoneNumber,
      final String? email}) = _$UpdateProfileFieldsImpl;

  String? get name;
  String? get phoneNumber;
  String? get email;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProfileFieldsImplCopyWith<_$UpdateProfileFieldsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProfileImplCopyWith<$Res> {
  factory _$$UpdateProfileImplCopyWith(
          _$UpdateProfileImpl value, $Res Function(_$UpdateProfileImpl) then) =
      __$$UpdateProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileModel profile});
}

/// @nodoc
class __$$UpdateProfileImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateProfileImpl>
    implements _$$UpdateProfileImplCopyWith<$Res> {
  __$$UpdateProfileImplCopyWithImpl(
      _$UpdateProfileImpl _value, $Res Function(_$UpdateProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$UpdateProfileImpl(
      null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileModel,
    ));
  }
}

/// @nodoc

class _$UpdateProfileImpl implements _UpdateProfile {
  const _$UpdateProfileImpl(this.profile);

  @override
  final ProfileModel profile;

  @override
  String toString() {
    return 'ProfileEvent.updateProfile(profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileImpl &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileImplCopyWith<_$UpdateProfileImpl> get copyWith =>
      __$$UpdateProfileImplCopyWithImpl<_$UpdateProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function() loadProfile,
    required TResult Function(String? name, String? phoneNumber, String? email)
        updateProfileFields,
    required TResult Function(ProfileModel profile) updateProfile,
  }) {
    return updateProfile(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function()? loadProfile,
    TResult? Function(String? name, String? phoneNumber, String? email)?
        updateProfileFields,
    TResult? Function(ProfileModel profile)? updateProfile,
  }) {
    return updateProfile?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? loadProfile,
    TResult Function(String? name, String? phoneNumber, String? email)?
        updateProfileFields,
    TResult Function(ProfileModel profile)? updateProfile,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_LoadProfile value) loadProfile,
    required TResult Function(_UpdateProfileFields value) updateProfileFields,
    required TResult Function(_UpdateProfile value) updateProfile,
  }) {
    return updateProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_LoadProfile value)? loadProfile,
    TResult? Function(_UpdateProfileFields value)? updateProfileFields,
    TResult? Function(_UpdateProfile value)? updateProfile,
  }) {
    return updateProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_LoadProfile value)? loadProfile,
    TResult Function(_UpdateProfileFields value)? updateProfileFields,
    TResult Function(_UpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfile implements ProfileEvent {
  const factory _UpdateProfile(final ProfileModel profile) =
      _$UpdateProfileImpl;

  ProfileModel get profile;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProfileImplCopyWith<_$UpdateProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProfileModel model) profileLoaded,
    required TResult Function(ProfileModel model) profileUpdated,
    required TResult Function(MainFailure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProfileModel model)? profileLoaded,
    TResult? Function(ProfileModel model)? profileUpdated,
    TResult? Function(MainFailure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProfileModel model)? profileLoaded,
    TResult Function(ProfileModel model)? profileUpdated,
    TResult Function(MainFailure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileLoaded value) profileLoaded,
    required TResult Function(_ProfileUpdated value) profileUpdated,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileLoaded value)? profileLoaded,
    TResult? Function(_ProfileUpdated value)? profileUpdated,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileLoaded value)? profileLoaded,
    TResult Function(_ProfileUpdated value)? profileUpdated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileState
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
    extends _$ProfileStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ProfileState.initial()';
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
    required TResult Function(ProfileModel model) profileLoaded,
    required TResult Function(ProfileModel model) profileUpdated,
    required TResult Function(MainFailure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProfileModel model)? profileLoaded,
    TResult? Function(ProfileModel model)? profileUpdated,
    TResult? Function(MainFailure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProfileModel model)? profileLoaded,
    TResult Function(ProfileModel model)? profileUpdated,
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
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileLoaded value) profileLoaded,
    required TResult Function(_ProfileUpdated value) profileUpdated,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileLoaded value)? profileLoaded,
    TResult? Function(_ProfileUpdated value)? profileUpdated,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileLoaded value)? profileLoaded,
    TResult Function(_ProfileUpdated value)? profileUpdated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProfileState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ProfileLoadingImplCopyWith<$Res> {
  factory _$$ProfileLoadingImplCopyWith(_$ProfileLoadingImpl value,
          $Res Function(_$ProfileLoadingImpl) then) =
      __$$ProfileLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileLoadingImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileLoadingImpl>
    implements _$$ProfileLoadingImplCopyWith<$Res> {
  __$$ProfileLoadingImplCopyWithImpl(
      _$ProfileLoadingImpl _value, $Res Function(_$ProfileLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileLoadingImpl implements ProfileLoading {
  const _$ProfileLoadingImpl();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProfileModel model) profileLoaded,
    required TResult Function(ProfileModel model) profileUpdated,
    required TResult Function(MainFailure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProfileModel model)? profileLoaded,
    TResult? Function(ProfileModel model)? profileUpdated,
    TResult? Function(MainFailure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProfileModel model)? profileLoaded,
    TResult Function(ProfileModel model)? profileUpdated,
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
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileLoaded value) profileLoaded,
    required TResult Function(_ProfileUpdated value) profileUpdated,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileLoaded value)? profileLoaded,
    TResult? Function(_ProfileUpdated value)? profileUpdated,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileLoaded value)? profileLoaded,
    TResult Function(_ProfileUpdated value)? profileUpdated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProfileLoading implements ProfileState {
  const factory ProfileLoading() = _$ProfileLoadingImpl;
}

/// @nodoc
abstract class _$$ProfileLoadedImplCopyWith<$Res> {
  factory _$$ProfileLoadedImplCopyWith(
          _$ProfileLoadedImpl value, $Res Function(_$ProfileLoadedImpl) then) =
      __$$ProfileLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileModel model});
}

/// @nodoc
class __$$ProfileLoadedImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileLoadedImpl>
    implements _$$ProfileLoadedImplCopyWith<$Res> {
  __$$ProfileLoadedImplCopyWithImpl(
      _$ProfileLoadedImpl _value, $Res Function(_$ProfileLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$ProfileLoadedImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ProfileModel,
    ));
  }
}

/// @nodoc

class _$ProfileLoadedImpl implements ProfileLoaded {
  const _$ProfileLoadedImpl(this.model);

  @override
  final ProfileModel model;

  @override
  String toString() {
    return 'ProfileState.profileLoaded(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileLoadedImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileLoadedImplCopyWith<_$ProfileLoadedImpl> get copyWith =>
      __$$ProfileLoadedImplCopyWithImpl<_$ProfileLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProfileModel model) profileLoaded,
    required TResult Function(ProfileModel model) profileUpdated,
    required TResult Function(MainFailure failure) error,
  }) {
    return profileLoaded(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProfileModel model)? profileLoaded,
    TResult? Function(ProfileModel model)? profileUpdated,
    TResult? Function(MainFailure failure)? error,
  }) {
    return profileLoaded?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProfileModel model)? profileLoaded,
    TResult Function(ProfileModel model)? profileUpdated,
    TResult Function(MainFailure failure)? error,
    required TResult orElse(),
  }) {
    if (profileLoaded != null) {
      return profileLoaded(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileLoaded value) profileLoaded,
    required TResult Function(_ProfileUpdated value) profileUpdated,
    required TResult Function(_Error value) error,
  }) {
    return profileLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileLoaded value)? profileLoaded,
    TResult? Function(_ProfileUpdated value)? profileUpdated,
    TResult? Function(_Error value)? error,
  }) {
    return profileLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileLoaded value)? profileLoaded,
    TResult Function(_ProfileUpdated value)? profileUpdated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (profileLoaded != null) {
      return profileLoaded(this);
    }
    return orElse();
  }
}

abstract class ProfileLoaded implements ProfileState {
  const factory ProfileLoaded(final ProfileModel model) = _$ProfileLoadedImpl;

  ProfileModel get model;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileLoadedImplCopyWith<_$ProfileLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileUpdatedImplCopyWith<$Res> {
  factory _$$ProfileUpdatedImplCopyWith(_$ProfileUpdatedImpl value,
          $Res Function(_$ProfileUpdatedImpl) then) =
      __$$ProfileUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileModel model});
}

/// @nodoc
class __$$ProfileUpdatedImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileUpdatedImpl>
    implements _$$ProfileUpdatedImplCopyWith<$Res> {
  __$$ProfileUpdatedImplCopyWithImpl(
      _$ProfileUpdatedImpl _value, $Res Function(_$ProfileUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$ProfileUpdatedImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ProfileModel,
    ));
  }
}

/// @nodoc

class _$ProfileUpdatedImpl implements _ProfileUpdated {
  const _$ProfileUpdatedImpl(this.model);

  @override
  final ProfileModel model;

  @override
  String toString() {
    return 'ProfileState.profileUpdated(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileUpdatedImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileUpdatedImplCopyWith<_$ProfileUpdatedImpl> get copyWith =>
      __$$ProfileUpdatedImplCopyWithImpl<_$ProfileUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProfileModel model) profileLoaded,
    required TResult Function(ProfileModel model) profileUpdated,
    required TResult Function(MainFailure failure) error,
  }) {
    return profileUpdated(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProfileModel model)? profileLoaded,
    TResult? Function(ProfileModel model)? profileUpdated,
    TResult? Function(MainFailure failure)? error,
  }) {
    return profileUpdated?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProfileModel model)? profileLoaded,
    TResult Function(ProfileModel model)? profileUpdated,
    TResult Function(MainFailure failure)? error,
    required TResult orElse(),
  }) {
    if (profileUpdated != null) {
      return profileUpdated(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileLoaded value) profileLoaded,
    required TResult Function(_ProfileUpdated value) profileUpdated,
    required TResult Function(_Error value) error,
  }) {
    return profileUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileLoaded value)? profileLoaded,
    TResult? Function(_ProfileUpdated value)? profileUpdated,
    TResult? Function(_Error value)? error,
  }) {
    return profileUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileLoaded value)? profileLoaded,
    TResult Function(_ProfileUpdated value)? profileUpdated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (profileUpdated != null) {
      return profileUpdated(this);
    }
    return orElse();
  }
}

abstract class _ProfileUpdated implements ProfileState {
  const factory _ProfileUpdated(final ProfileModel model) =
      _$ProfileUpdatedImpl;

  ProfileModel get model;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileUpdatedImplCopyWith<_$ProfileUpdatedImpl> get copyWith =>
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
    extends _$ProfileStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
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

  /// Create a copy of ProfileState
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
    return 'ProfileState.error(failure: $failure)';
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

  /// Create a copy of ProfileState
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
    required TResult Function(ProfileModel model) profileLoaded,
    required TResult Function(ProfileModel model) profileUpdated,
    required TResult Function(MainFailure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProfileModel model)? profileLoaded,
    TResult? Function(ProfileModel model)? profileUpdated,
    TResult? Function(MainFailure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProfileModel model)? profileLoaded,
    TResult Function(ProfileModel model)? profileUpdated,
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
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileLoaded value) profileLoaded,
    required TResult Function(_ProfileUpdated value) profileUpdated,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileLoaded value)? profileLoaded,
    TResult? Function(_ProfileUpdated value)? profileUpdated,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileLoaded value)? profileLoaded,
    TResult Function(_ProfileUpdated value)? profileUpdated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ProfileState {
  const factory _Error(final MainFailure failure) = _$ErrorImpl;

  MainFailure get failure;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
