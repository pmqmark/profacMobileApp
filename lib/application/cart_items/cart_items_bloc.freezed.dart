// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_items_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartItemsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(CartItemModel cartItem) addCartItem,
    required TResult Function(CartItemModel cartItem) updateCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function(CartItemModel cartItem)? addCartItem,
    TResult? Function(CartItemModel cartItem)? updateCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(CartItemModel cartItem)? addCartItem,
    TResult Function(CartItemModel cartItem)? updateCartItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_AddCartItem value) addCartItem,
    required TResult Function(_UpdateCartItem value) updateCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_AddCartItem value)? addCartItem,
    TResult? Function(_UpdateCartItem value)? updateCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_AddCartItem value)? addCartItem,
    TResult Function(_UpdateCartItem value)? updateCartItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemsEventCopyWith<$Res> {
  factory $CartItemsEventCopyWith(
          CartItemsEvent value, $Res Function(CartItemsEvent) then) =
      _$CartItemsEventCopyWithImpl<$Res, CartItemsEvent>;
}

/// @nodoc
class _$CartItemsEventCopyWithImpl<$Res, $Val extends CartItemsEvent>
    implements $CartItemsEventCopyWith<$Res> {
  _$CartItemsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartItemsEvent
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
    extends _$CartItemsEventCopyWithImpl<$Res, _$ResetImpl>
    implements _$$ResetImplCopyWith<$Res> {
  __$$ResetImplCopyWithImpl(
      _$ResetImpl _value, $Res Function(_$ResetImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartItemsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetImpl implements _Reset {
  const _$ResetImpl();

  @override
  String toString() {
    return 'CartItemsEvent.reset()';
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
    required TResult Function(CartItemModel cartItem) addCartItem,
    required TResult Function(CartItemModel cartItem) updateCartItem,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function(CartItemModel cartItem)? addCartItem,
    TResult? Function(CartItemModel cartItem)? updateCartItem,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(CartItemModel cartItem)? addCartItem,
    TResult Function(CartItemModel cartItem)? updateCartItem,
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
    required TResult Function(_AddCartItem value) addCartItem,
    required TResult Function(_UpdateCartItem value) updateCartItem,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_AddCartItem value)? addCartItem,
    TResult? Function(_UpdateCartItem value)? updateCartItem,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_AddCartItem value)? addCartItem,
    TResult Function(_UpdateCartItem value)? updateCartItem,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements CartItemsEvent {
  const factory _Reset() = _$ResetImpl;
}

/// @nodoc
abstract class _$$AddCartItemImplCopyWith<$Res> {
  factory _$$AddCartItemImplCopyWith(
          _$AddCartItemImpl value, $Res Function(_$AddCartItemImpl) then) =
      __$$AddCartItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CartItemModel cartItem});
}

/// @nodoc
class __$$AddCartItemImplCopyWithImpl<$Res>
    extends _$CartItemsEventCopyWithImpl<$Res, _$AddCartItemImpl>
    implements _$$AddCartItemImplCopyWith<$Res> {
  __$$AddCartItemImplCopyWithImpl(
      _$AddCartItemImpl _value, $Res Function(_$AddCartItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartItemsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItem = null,
  }) {
    return _then(_$AddCartItemImpl(
      null == cartItem
          ? _value.cartItem
          : cartItem // ignore: cast_nullable_to_non_nullable
              as CartItemModel,
    ));
  }
}

/// @nodoc

class _$AddCartItemImpl implements _AddCartItem {
  const _$AddCartItemImpl(this.cartItem);

  @override
  final CartItemModel cartItem;

  @override
  String toString() {
    return 'CartItemsEvent.addCartItem(cartItem: $cartItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCartItemImpl &&
            (identical(other.cartItem, cartItem) ||
                other.cartItem == cartItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartItem);

  /// Create a copy of CartItemsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCartItemImplCopyWith<_$AddCartItemImpl> get copyWith =>
      __$$AddCartItemImplCopyWithImpl<_$AddCartItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(CartItemModel cartItem) addCartItem,
    required TResult Function(CartItemModel cartItem) updateCartItem,
  }) {
    return addCartItem(cartItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function(CartItemModel cartItem)? addCartItem,
    TResult? Function(CartItemModel cartItem)? updateCartItem,
  }) {
    return addCartItem?.call(cartItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(CartItemModel cartItem)? addCartItem,
    TResult Function(CartItemModel cartItem)? updateCartItem,
    required TResult orElse(),
  }) {
    if (addCartItem != null) {
      return addCartItem(cartItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_AddCartItem value) addCartItem,
    required TResult Function(_UpdateCartItem value) updateCartItem,
  }) {
    return addCartItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_AddCartItem value)? addCartItem,
    TResult? Function(_UpdateCartItem value)? updateCartItem,
  }) {
    return addCartItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_AddCartItem value)? addCartItem,
    TResult Function(_UpdateCartItem value)? updateCartItem,
    required TResult orElse(),
  }) {
    if (addCartItem != null) {
      return addCartItem(this);
    }
    return orElse();
  }
}

abstract class _AddCartItem implements CartItemsEvent {
  const factory _AddCartItem(final CartItemModel cartItem) = _$AddCartItemImpl;

  CartItemModel get cartItem;

  /// Create a copy of CartItemsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddCartItemImplCopyWith<_$AddCartItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCartItemImplCopyWith<$Res> {
  factory _$$UpdateCartItemImplCopyWith(_$UpdateCartItemImpl value,
          $Res Function(_$UpdateCartItemImpl) then) =
      __$$UpdateCartItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CartItemModel cartItem});
}

/// @nodoc
class __$$UpdateCartItemImplCopyWithImpl<$Res>
    extends _$CartItemsEventCopyWithImpl<$Res, _$UpdateCartItemImpl>
    implements _$$UpdateCartItemImplCopyWith<$Res> {
  __$$UpdateCartItemImplCopyWithImpl(
      _$UpdateCartItemImpl _value, $Res Function(_$UpdateCartItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartItemsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItem = null,
  }) {
    return _then(_$UpdateCartItemImpl(
      null == cartItem
          ? _value.cartItem
          : cartItem // ignore: cast_nullable_to_non_nullable
              as CartItemModel,
    ));
  }
}

/// @nodoc

class _$UpdateCartItemImpl implements _UpdateCartItem {
  const _$UpdateCartItemImpl(this.cartItem);

  @override
  final CartItemModel cartItem;

  @override
  String toString() {
    return 'CartItemsEvent.updateCartItem(cartItem: $cartItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCartItemImpl &&
            (identical(other.cartItem, cartItem) ||
                other.cartItem == cartItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartItem);

  /// Create a copy of CartItemsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCartItemImplCopyWith<_$UpdateCartItemImpl> get copyWith =>
      __$$UpdateCartItemImplCopyWithImpl<_$UpdateCartItemImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(CartItemModel cartItem) addCartItem,
    required TResult Function(CartItemModel cartItem) updateCartItem,
  }) {
    return updateCartItem(cartItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function(CartItemModel cartItem)? addCartItem,
    TResult? Function(CartItemModel cartItem)? updateCartItem,
  }) {
    return updateCartItem?.call(cartItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(CartItemModel cartItem)? addCartItem,
    TResult Function(CartItemModel cartItem)? updateCartItem,
    required TResult orElse(),
  }) {
    if (updateCartItem != null) {
      return updateCartItem(cartItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_AddCartItem value) addCartItem,
    required TResult Function(_UpdateCartItem value) updateCartItem,
  }) {
    return updateCartItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_AddCartItem value)? addCartItem,
    TResult? Function(_UpdateCartItem value)? updateCartItem,
  }) {
    return updateCartItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_AddCartItem value)? addCartItem,
    TResult Function(_UpdateCartItem value)? updateCartItem,
    required TResult orElse(),
  }) {
    if (updateCartItem != null) {
      return updateCartItem(this);
    }
    return orElse();
  }
}

abstract class _UpdateCartItem implements CartItemsEvent {
  const factory _UpdateCartItem(final CartItemModel cartItem) =
      _$UpdateCartItemImpl;

  CartItemModel get cartItem;

  /// Create a copy of CartItemsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCartItemImplCopyWith<_$UpdateCartItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartItemsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CartItemModel> cartitems) hasItemsState1,
    required TResult Function(List<CartItemModel> cartitems) hasItemsState2,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CartItemModel> cartitems)? hasItemsState1,
    TResult? Function(List<CartItemModel> cartitems)? hasItemsState2,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CartItemModel> cartitems)? hasItemsState1,
    TResult Function(List<CartItemModel> cartitems)? hasItemsState2,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_HasItemsState1 value) hasItemsState1,
    required TResult Function(_HasItemsState2 value) hasItemsState2,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HasItemsState1 value)? hasItemsState1,
    TResult? Function(_HasItemsState2 value)? hasItemsState2,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HasItemsState1 value)? hasItemsState1,
    TResult Function(_HasItemsState2 value)? hasItemsState2,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemsStateCopyWith<$Res> {
  factory $CartItemsStateCopyWith(
          CartItemsState value, $Res Function(CartItemsState) then) =
      _$CartItemsStateCopyWithImpl<$Res, CartItemsState>;
}

/// @nodoc
class _$CartItemsStateCopyWithImpl<$Res, $Val extends CartItemsState>
    implements $CartItemsStateCopyWith<$Res> {
  _$CartItemsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartItemsState
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
    extends _$CartItemsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartItemsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CartItemsState.initial()';
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
    required TResult Function(List<CartItemModel> cartitems) hasItemsState1,
    required TResult Function(List<CartItemModel> cartitems) hasItemsState2,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CartItemModel> cartitems)? hasItemsState1,
    TResult? Function(List<CartItemModel> cartitems)? hasItemsState2,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CartItemModel> cartitems)? hasItemsState1,
    TResult Function(List<CartItemModel> cartitems)? hasItemsState2,
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
    required TResult Function(_HasItemsState1 value) hasItemsState1,
    required TResult Function(_HasItemsState2 value) hasItemsState2,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HasItemsState1 value)? hasItemsState1,
    TResult? Function(_HasItemsState2 value)? hasItemsState2,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HasItemsState1 value)? hasItemsState1,
    TResult Function(_HasItemsState2 value)? hasItemsState2,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CartItemsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$HasItemsState1ImplCopyWith<$Res> {
  factory _$$HasItemsState1ImplCopyWith(_$HasItemsState1Impl value,
          $Res Function(_$HasItemsState1Impl) then) =
      __$$HasItemsState1ImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CartItemModel> cartitems});
}

/// @nodoc
class __$$HasItemsState1ImplCopyWithImpl<$Res>
    extends _$CartItemsStateCopyWithImpl<$Res, _$HasItemsState1Impl>
    implements _$$HasItemsState1ImplCopyWith<$Res> {
  __$$HasItemsState1ImplCopyWithImpl(
      _$HasItemsState1Impl _value, $Res Function(_$HasItemsState1Impl) _then)
      : super(_value, _then);

  /// Create a copy of CartItemsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartitems = null,
  }) {
    return _then(_$HasItemsState1Impl(
      null == cartitems
          ? _value._cartitems
          : cartitems // ignore: cast_nullable_to_non_nullable
              as List<CartItemModel>,
    ));
  }
}

/// @nodoc

class _$HasItemsState1Impl implements _HasItemsState1 {
  const _$HasItemsState1Impl(final List<CartItemModel> cartitems)
      : _cartitems = cartitems;

  final List<CartItemModel> _cartitems;
  @override
  List<CartItemModel> get cartitems {
    if (_cartitems is EqualUnmodifiableListView) return _cartitems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartitems);
  }

  @override
  String toString() {
    return 'CartItemsState.hasItemsState1(cartitems: $cartitems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HasItemsState1Impl &&
            const DeepCollectionEquality()
                .equals(other._cartitems, _cartitems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cartitems));

  /// Create a copy of CartItemsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HasItemsState1ImplCopyWith<_$HasItemsState1Impl> get copyWith =>
      __$$HasItemsState1ImplCopyWithImpl<_$HasItemsState1Impl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CartItemModel> cartitems) hasItemsState1,
    required TResult Function(List<CartItemModel> cartitems) hasItemsState2,
  }) {
    return hasItemsState1(cartitems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CartItemModel> cartitems)? hasItemsState1,
    TResult? Function(List<CartItemModel> cartitems)? hasItemsState2,
  }) {
    return hasItemsState1?.call(cartitems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CartItemModel> cartitems)? hasItemsState1,
    TResult Function(List<CartItemModel> cartitems)? hasItemsState2,
    required TResult orElse(),
  }) {
    if (hasItemsState1 != null) {
      return hasItemsState1(cartitems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_HasItemsState1 value) hasItemsState1,
    required TResult Function(_HasItemsState2 value) hasItemsState2,
  }) {
    return hasItemsState1(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HasItemsState1 value)? hasItemsState1,
    TResult? Function(_HasItemsState2 value)? hasItemsState2,
  }) {
    return hasItemsState1?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HasItemsState1 value)? hasItemsState1,
    TResult Function(_HasItemsState2 value)? hasItemsState2,
    required TResult orElse(),
  }) {
    if (hasItemsState1 != null) {
      return hasItemsState1(this);
    }
    return orElse();
  }
}

abstract class _HasItemsState1 implements CartItemsState {
  const factory _HasItemsState1(final List<CartItemModel> cartitems) =
      _$HasItemsState1Impl;

  List<CartItemModel> get cartitems;

  /// Create a copy of CartItemsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HasItemsState1ImplCopyWith<_$HasItemsState1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HasItemsState2ImplCopyWith<$Res> {
  factory _$$HasItemsState2ImplCopyWith(_$HasItemsState2Impl value,
          $Res Function(_$HasItemsState2Impl) then) =
      __$$HasItemsState2ImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CartItemModel> cartitems});
}

/// @nodoc
class __$$HasItemsState2ImplCopyWithImpl<$Res>
    extends _$CartItemsStateCopyWithImpl<$Res, _$HasItemsState2Impl>
    implements _$$HasItemsState2ImplCopyWith<$Res> {
  __$$HasItemsState2ImplCopyWithImpl(
      _$HasItemsState2Impl _value, $Res Function(_$HasItemsState2Impl) _then)
      : super(_value, _then);

  /// Create a copy of CartItemsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartitems = null,
  }) {
    return _then(_$HasItemsState2Impl(
      null == cartitems
          ? _value._cartitems
          : cartitems // ignore: cast_nullable_to_non_nullable
              as List<CartItemModel>,
    ));
  }
}

/// @nodoc

class _$HasItemsState2Impl implements _HasItemsState2 {
  const _$HasItemsState2Impl(final List<CartItemModel> cartitems)
      : _cartitems = cartitems;

  final List<CartItemModel> _cartitems;
  @override
  List<CartItemModel> get cartitems {
    if (_cartitems is EqualUnmodifiableListView) return _cartitems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartitems);
  }

  @override
  String toString() {
    return 'CartItemsState.hasItemsState2(cartitems: $cartitems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HasItemsState2Impl &&
            const DeepCollectionEquality()
                .equals(other._cartitems, _cartitems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cartitems));

  /// Create a copy of CartItemsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HasItemsState2ImplCopyWith<_$HasItemsState2Impl> get copyWith =>
      __$$HasItemsState2ImplCopyWithImpl<_$HasItemsState2Impl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CartItemModel> cartitems) hasItemsState1,
    required TResult Function(List<CartItemModel> cartitems) hasItemsState2,
  }) {
    return hasItemsState2(cartitems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CartItemModel> cartitems)? hasItemsState1,
    TResult? Function(List<CartItemModel> cartitems)? hasItemsState2,
  }) {
    return hasItemsState2?.call(cartitems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CartItemModel> cartitems)? hasItemsState1,
    TResult Function(List<CartItemModel> cartitems)? hasItemsState2,
    required TResult orElse(),
  }) {
    if (hasItemsState2 != null) {
      return hasItemsState2(cartitems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_HasItemsState1 value) hasItemsState1,
    required TResult Function(_HasItemsState2 value) hasItemsState2,
  }) {
    return hasItemsState2(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_HasItemsState1 value)? hasItemsState1,
    TResult? Function(_HasItemsState2 value)? hasItemsState2,
  }) {
    return hasItemsState2?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_HasItemsState1 value)? hasItemsState1,
    TResult Function(_HasItemsState2 value)? hasItemsState2,
    required TResult orElse(),
  }) {
    if (hasItemsState2 != null) {
      return hasItemsState2(this);
    }
    return orElse();
  }
}

abstract class _HasItemsState2 implements CartItemsState {
  const factory _HasItemsState2(final List<CartItemModel> cartitems) =
      _$HasItemsState2Impl;

  List<CartItemModel> get cartitems;

  /// Create a copy of CartItemsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HasItemsState2ImplCopyWith<_$HasItemsState2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
