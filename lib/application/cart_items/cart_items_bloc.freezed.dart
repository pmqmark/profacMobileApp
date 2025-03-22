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
    required TResult Function() getCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function(CartItemModel cartItem)? addCartItem,
    TResult? Function(CartItemModel cartItem)? updateCartItem,
    TResult? Function()? getCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(CartItemModel cartItem)? addCartItem,
    TResult Function(CartItemModel cartItem)? updateCartItem,
    TResult Function()? getCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_AddCartItem value) addCartItem,
    required TResult Function(_UpdateCartItem value) updateCartItem,
    required TResult Function(_GetCart value) getCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_AddCartItem value)? addCartItem,
    TResult? Function(_UpdateCartItem value)? updateCartItem,
    TResult? Function(_GetCart value)? getCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_AddCartItem value)? addCartItem,
    TResult Function(_UpdateCartItem value)? updateCartItem,
    TResult Function(_GetCart value)? getCart,
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
    required TResult Function() getCart,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function(CartItemModel cartItem)? addCartItem,
    TResult? Function(CartItemModel cartItem)? updateCartItem,
    TResult? Function()? getCart,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(CartItemModel cartItem)? addCartItem,
    TResult Function(CartItemModel cartItem)? updateCartItem,
    TResult Function()? getCart,
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
    required TResult Function(_GetCart value) getCart,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_AddCartItem value)? addCartItem,
    TResult? Function(_UpdateCartItem value)? updateCartItem,
    TResult? Function(_GetCart value)? getCart,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_AddCartItem value)? addCartItem,
    TResult Function(_UpdateCartItem value)? updateCartItem,
    TResult Function(_GetCart value)? getCart,
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
    required TResult Function() getCart,
  }) {
    return addCartItem(cartItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function(CartItemModel cartItem)? addCartItem,
    TResult? Function(CartItemModel cartItem)? updateCartItem,
    TResult? Function()? getCart,
  }) {
    return addCartItem?.call(cartItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(CartItemModel cartItem)? addCartItem,
    TResult Function(CartItemModel cartItem)? updateCartItem,
    TResult Function()? getCart,
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
    required TResult Function(_GetCart value) getCart,
  }) {
    return addCartItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_AddCartItem value)? addCartItem,
    TResult? Function(_UpdateCartItem value)? updateCartItem,
    TResult? Function(_GetCart value)? getCart,
  }) {
    return addCartItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_AddCartItem value)? addCartItem,
    TResult Function(_UpdateCartItem value)? updateCartItem,
    TResult Function(_GetCart value)? getCart,
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
    required TResult Function() getCart,
  }) {
    return updateCartItem(cartItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function(CartItemModel cartItem)? addCartItem,
    TResult? Function(CartItemModel cartItem)? updateCartItem,
    TResult? Function()? getCart,
  }) {
    return updateCartItem?.call(cartItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(CartItemModel cartItem)? addCartItem,
    TResult Function(CartItemModel cartItem)? updateCartItem,
    TResult Function()? getCart,
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
    required TResult Function(_GetCart value) getCart,
  }) {
    return updateCartItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_AddCartItem value)? addCartItem,
    TResult? Function(_UpdateCartItem value)? updateCartItem,
    TResult? Function(_GetCart value)? getCart,
  }) {
    return updateCartItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_AddCartItem value)? addCartItem,
    TResult Function(_UpdateCartItem value)? updateCartItem,
    TResult Function(_GetCart value)? getCart,
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
abstract class _$$GetCartImplCopyWith<$Res> {
  factory _$$GetCartImplCopyWith(
          _$GetCartImpl value, $Res Function(_$GetCartImpl) then) =
      __$$GetCartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCartImplCopyWithImpl<$Res>
    extends _$CartItemsEventCopyWithImpl<$Res, _$GetCartImpl>
    implements _$$GetCartImplCopyWith<$Res> {
  __$$GetCartImplCopyWithImpl(
      _$GetCartImpl _value, $Res Function(_$GetCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartItemsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCartImpl implements _GetCart {
  const _$GetCartImpl();

  @override
  String toString() {
    return 'CartItemsEvent.getCart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(CartItemModel cartItem) addCartItem,
    required TResult Function(CartItemModel cartItem) updateCartItem,
    required TResult Function() getCart,
  }) {
    return getCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reset,
    TResult? Function(CartItemModel cartItem)? addCartItem,
    TResult? Function(CartItemModel cartItem)? updateCartItem,
    TResult? Function()? getCart,
  }) {
    return getCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(CartItemModel cartItem)? addCartItem,
    TResult Function(CartItemModel cartItem)? updateCartItem,
    TResult Function()? getCart,
    required TResult orElse(),
  }) {
    if (getCart != null) {
      return getCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_AddCartItem value) addCartItem,
    required TResult Function(_UpdateCartItem value) updateCartItem,
    required TResult Function(_GetCart value) getCart,
  }) {
    return getCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Reset value)? reset,
    TResult? Function(_AddCartItem value)? addCartItem,
    TResult? Function(_UpdateCartItem value)? updateCartItem,
    TResult? Function(_GetCart value)? getCart,
  }) {
    return getCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_AddCartItem value)? addCartItem,
    TResult Function(_UpdateCartItem value)? updateCartItem,
    TResult Function(_GetCart value)? getCart,
    required TResult orElse(),
  }) {
    if (getCart != null) {
      return getCart(this);
    }
    return orElse();
  }
}

abstract class _GetCart implements CartItemsEvent {
  const factory _GetCart() = _$GetCartImpl;
}

/// @nodoc
mixin _$CartItemsState {
  List<CartModel> get cart => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Map<String, Map<String, Map<String, int>>> get cartItems =>
      throw _privateConstructorUsedError;
  bool get cartItemAdding => throw _privateConstructorUsedError;
  MainFailure? get failure => throw _privateConstructorUsedError;
  bool get flag => throw _privateConstructorUsedError;

  /// Create a copy of CartItemsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartItemsStateCopyWith<CartItemsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemsStateCopyWith<$Res> {
  factory $CartItemsStateCopyWith(
          CartItemsState value, $Res Function(CartItemsState) then) =
      _$CartItemsStateCopyWithImpl<$Res, CartItemsState>;
  @useResult
  $Res call(
      {List<CartModel> cart,
      bool isLoading,
      Map<String, Map<String, Map<String, int>>> cartItems,
      bool cartItemAdding,
      MainFailure? failure,
      bool flag});

  $MainFailureCopyWith<$Res>? get failure;
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cart = null,
    Object? isLoading = null,
    Object? cartItems = null,
    Object? cartItemAdding = null,
    Object? failure = freezed,
    Object? flag = null,
  }) {
    return _then(_value.copyWith(
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cartItems: null == cartItems
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, Map<String, int>>>,
      cartItemAdding: null == cartItemAdding
          ? _value.cartItemAdding
          : cartItemAdding // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as MainFailure?,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of CartItemsState
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
abstract class _$$CartItemsStateImplCopyWith<$Res>
    implements $CartItemsStateCopyWith<$Res> {
  factory _$$CartItemsStateImplCopyWith(_$CartItemsStateImpl value,
          $Res Function(_$CartItemsStateImpl) then) =
      __$$CartItemsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CartModel> cart,
      bool isLoading,
      Map<String, Map<String, Map<String, int>>> cartItems,
      bool cartItemAdding,
      MainFailure? failure,
      bool flag});

  @override
  $MainFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$CartItemsStateImplCopyWithImpl<$Res>
    extends _$CartItemsStateCopyWithImpl<$Res, _$CartItemsStateImpl>
    implements _$$CartItemsStateImplCopyWith<$Res> {
  __$$CartItemsStateImplCopyWithImpl(
      _$CartItemsStateImpl _value, $Res Function(_$CartItemsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartItemsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cart = null,
    Object? isLoading = null,
    Object? cartItems = null,
    Object? cartItemAdding = null,
    Object? failure = freezed,
    Object? flag = null,
  }) {
    return _then(_$CartItemsStateImpl(
      cart: null == cart
          ? _value._cart
          : cart // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cartItems: null == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, Map<String, int>>>,
      cartItemAdding: null == cartItemAdding
          ? _value.cartItemAdding
          : cartItemAdding // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as MainFailure?,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CartItemsStateImpl implements _CartItemsState {
  _$CartItemsStateImpl(
      {required final List<CartModel> cart,
      required this.isLoading,
      required final Map<String, Map<String, Map<String, int>>> cartItems,
      required this.cartItemAdding,
      required this.failure,
      required this.flag})
      : _cart = cart,
        _cartItems = cartItems;

  final List<CartModel> _cart;
  @override
  List<CartModel> get cart {
    if (_cart is EqualUnmodifiableListView) return _cart;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cart);
  }

  @override
  final bool isLoading;
  final Map<String, Map<String, Map<String, int>>> _cartItems;
  @override
  Map<String, Map<String, Map<String, int>>> get cartItems {
    if (_cartItems is EqualUnmodifiableMapView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cartItems);
  }

  @override
  final bool cartItemAdding;
  @override
  final MainFailure? failure;
  @override
  final bool flag;

  @override
  String toString() {
    return 'CartItemsState(cart: $cart, isLoading: $isLoading, cartItems: $cartItems, cartItemAdding: $cartItemAdding, failure: $failure, flag: $flag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemsStateImpl &&
            const DeepCollectionEquality().equals(other._cart, _cart) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems) &&
            (identical(other.cartItemAdding, cartItemAdding) ||
                other.cartItemAdding == cartItemAdding) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.flag, flag) || other.flag == flag));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cart),
      isLoading,
      const DeepCollectionEquality().hash(_cartItems),
      cartItemAdding,
      failure,
      flag);

  /// Create a copy of CartItemsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItemsStateImplCopyWith<_$CartItemsStateImpl> get copyWith =>
      __$$CartItemsStateImplCopyWithImpl<_$CartItemsStateImpl>(
          this, _$identity);
}

abstract class _CartItemsState implements CartItemsState {
  factory _CartItemsState(
      {required final List<CartModel> cart,
      required final bool isLoading,
      required final Map<String, Map<String, Map<String, int>>> cartItems,
      required final bool cartItemAdding,
      required final MainFailure? failure,
      required final bool flag}) = _$CartItemsStateImpl;

  @override
  List<CartModel> get cart;
  @override
  bool get isLoading;
  @override
  Map<String, Map<String, Map<String, int>>> get cartItems;
  @override
  bool get cartItemAdding;
  @override
  MainFailure? get failure;
  @override
  bool get flag;

  /// Create a copy of CartItemsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartItemsStateImplCopyWith<_$CartItemsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
