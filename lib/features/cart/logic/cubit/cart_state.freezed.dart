// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CartState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CartState()';
  }
}

/// @nodoc
class $CartStateCopyWith<$Res> {
  $CartStateCopyWith(CartState _, $Res Function(CartState) __);
}

/// Adds pattern-matching-related methods to [CartState].
extension CartStatePatterns on CartState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingAdd value)? loadingAdd,
    TResult Function(SuccessAdd value)? successAdd,
    TResult Function(ErrorAdd value)? errorAdd,
    TResult Function(LoadingGet value)? loadingGet,
    TResult Function(SuccessGet value)? successGet,
    TResult Function(ErorrGet value)? erorrGet,
    TResult Function(LoadingDelete value)? loadingDelete,
    TResult Function(Successdelete value)? successdelete,
    TResult Function(ErorrDelete value)? erorrDelete,
    TResult Function(ColorSelected value)? colorSelected,
    TResult Function(SizeSelected value)? sizeSelected,
    TResult Function(LoadingUpdate value)? loadingUpdate,
    TResult Function(SuccessUpdate value)? successUpdate,
    TResult Function(ErrorUpdate value)? errorUpdate,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case LoadingAdd() when loadingAdd != null:
        return loadingAdd(_that);
      case SuccessAdd() when successAdd != null:
        return successAdd(_that);
      case ErrorAdd() when errorAdd != null:
        return errorAdd(_that);
      case LoadingGet() when loadingGet != null:
        return loadingGet(_that);
      case SuccessGet() when successGet != null:
        return successGet(_that);
      case ErorrGet() when erorrGet != null:
        return erorrGet(_that);
      case LoadingDelete() when loadingDelete != null:
        return loadingDelete(_that);
      case Successdelete() when successdelete != null:
        return successdelete(_that);
      case ErorrDelete() when erorrDelete != null:
        return erorrDelete(_that);
      case ColorSelected() when colorSelected != null:
        return colorSelected(_that);
      case SizeSelected() when sizeSelected != null:
        return sizeSelected(_that);
      case LoadingUpdate() when loadingUpdate != null:
        return loadingUpdate(_that);
      case SuccessUpdate() when successUpdate != null:
        return successUpdate(_that);
      case ErrorUpdate() when errorUpdate != null:
        return errorUpdate(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingAdd value) loadingAdd,
    required TResult Function(SuccessAdd value) successAdd,
    required TResult Function(ErrorAdd value) errorAdd,
    required TResult Function(LoadingGet value) loadingGet,
    required TResult Function(SuccessGet value) successGet,
    required TResult Function(ErorrGet value) erorrGet,
    required TResult Function(LoadingDelete value) loadingDelete,
    required TResult Function(Successdelete value) successdelete,
    required TResult Function(ErorrDelete value) erorrDelete,
    required TResult Function(ColorSelected value) colorSelected,
    required TResult Function(SizeSelected value) sizeSelected,
    required TResult Function(LoadingUpdate value) loadingUpdate,
    required TResult Function(SuccessUpdate value) successUpdate,
    required TResult Function(ErrorUpdate value) errorUpdate,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case LoadingAdd():
        return loadingAdd(_that);
      case SuccessAdd():
        return successAdd(_that);
      case ErrorAdd():
        return errorAdd(_that);
      case LoadingGet():
        return loadingGet(_that);
      case SuccessGet():
        return successGet(_that);
      case ErorrGet():
        return erorrGet(_that);
      case LoadingDelete():
        return loadingDelete(_that);
      case Successdelete():
        return successdelete(_that);
      case ErorrDelete():
        return erorrDelete(_that);
      case ColorSelected():
        return colorSelected(_that);
      case SizeSelected():
        return sizeSelected(_that);
      case LoadingUpdate():
        return loadingUpdate(_that);
      case SuccessUpdate():
        return successUpdate(_that);
      case ErrorUpdate():
        return errorUpdate(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingAdd value)? loadingAdd,
    TResult? Function(SuccessAdd value)? successAdd,
    TResult? Function(ErrorAdd value)? errorAdd,
    TResult? Function(LoadingGet value)? loadingGet,
    TResult? Function(SuccessGet value)? successGet,
    TResult? Function(ErorrGet value)? erorrGet,
    TResult? Function(LoadingDelete value)? loadingDelete,
    TResult? Function(Successdelete value)? successdelete,
    TResult? Function(ErorrDelete value)? erorrDelete,
    TResult? Function(ColorSelected value)? colorSelected,
    TResult? Function(SizeSelected value)? sizeSelected,
    TResult? Function(LoadingUpdate value)? loadingUpdate,
    TResult? Function(SuccessUpdate value)? successUpdate,
    TResult? Function(ErrorUpdate value)? errorUpdate,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case LoadingAdd() when loadingAdd != null:
        return loadingAdd(_that);
      case SuccessAdd() when successAdd != null:
        return successAdd(_that);
      case ErrorAdd() when errorAdd != null:
        return errorAdd(_that);
      case LoadingGet() when loadingGet != null:
        return loadingGet(_that);
      case SuccessGet() when successGet != null:
        return successGet(_that);
      case ErorrGet() when erorrGet != null:
        return erorrGet(_that);
      case LoadingDelete() when loadingDelete != null:
        return loadingDelete(_that);
      case Successdelete() when successdelete != null:
        return successdelete(_that);
      case ErorrDelete() when erorrDelete != null:
        return erorrDelete(_that);
      case ColorSelected() when colorSelected != null:
        return colorSelected(_that);
      case SizeSelected() when sizeSelected != null:
        return sizeSelected(_that);
      case LoadingUpdate() when loadingUpdate != null:
        return loadingUpdate(_that);
      case SuccessUpdate() when successUpdate != null:
        return successUpdate(_that);
      case ErrorUpdate() when errorUpdate != null:
        return errorUpdate(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingAdd,
    TResult Function()? successAdd,
    TResult Function(String erorr)? errorAdd,
    TResult Function()? loadingGet,
    TResult Function(ResponseCart cartResponse)? successGet,
    TResult Function(String erorr)? erorrGet,
    TResult Function()? loadingDelete,
    TResult Function()? successdelete,
    TResult Function(String erorr)? erorrDelete,
    TResult Function(String color)? colorSelected,
    TResult Function(String size)? sizeSelected,
    TResult Function()? loadingUpdate,
    TResult Function()? successUpdate,
    TResult Function(String erorr)? errorUpdate,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case LoadingAdd() when loadingAdd != null:
        return loadingAdd();
      case SuccessAdd() when successAdd != null:
        return successAdd();
      case ErrorAdd() when errorAdd != null:
        return errorAdd(_that.erorr);
      case LoadingGet() when loadingGet != null:
        return loadingGet();
      case SuccessGet() when successGet != null:
        return successGet(_that.cartResponse);
      case ErorrGet() when erorrGet != null:
        return erorrGet(_that.erorr);
      case LoadingDelete() when loadingDelete != null:
        return loadingDelete();
      case Successdelete() when successdelete != null:
        return successdelete();
      case ErorrDelete() when erorrDelete != null:
        return erorrDelete(_that.erorr);
      case ColorSelected() when colorSelected != null:
        return colorSelected(_that.color);
      case SizeSelected() when sizeSelected != null:
        return sizeSelected(_that.size);
      case LoadingUpdate() when loadingUpdate != null:
        return loadingUpdate();
      case SuccessUpdate() when successUpdate != null:
        return successUpdate();
      case ErrorUpdate() when errorUpdate != null:
        return errorUpdate(_that.erorr);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingAdd,
    required TResult Function() successAdd,
    required TResult Function(String erorr) errorAdd,
    required TResult Function() loadingGet,
    required TResult Function(ResponseCart cartResponse) successGet,
    required TResult Function(String erorr) erorrGet,
    required TResult Function() loadingDelete,
    required TResult Function() successdelete,
    required TResult Function(String erorr) erorrDelete,
    required TResult Function(String color) colorSelected,
    required TResult Function(String size) sizeSelected,
    required TResult Function() loadingUpdate,
    required TResult Function() successUpdate,
    required TResult Function(String erorr) errorUpdate,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case LoadingAdd():
        return loadingAdd();
      case SuccessAdd():
        return successAdd();
      case ErrorAdd():
        return errorAdd(_that.erorr);
      case LoadingGet():
        return loadingGet();
      case SuccessGet():
        return successGet(_that.cartResponse);
      case ErorrGet():
        return erorrGet(_that.erorr);
      case LoadingDelete():
        return loadingDelete();
      case Successdelete():
        return successdelete();
      case ErorrDelete():
        return erorrDelete(_that.erorr);
      case ColorSelected():
        return colorSelected(_that.color);
      case SizeSelected():
        return sizeSelected(_that.size);
      case LoadingUpdate():
        return loadingUpdate();
      case SuccessUpdate():
        return successUpdate();
      case ErrorUpdate():
        return errorUpdate(_that.erorr);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingAdd,
    TResult? Function()? successAdd,
    TResult? Function(String erorr)? errorAdd,
    TResult? Function()? loadingGet,
    TResult? Function(ResponseCart cartResponse)? successGet,
    TResult? Function(String erorr)? erorrGet,
    TResult? Function()? loadingDelete,
    TResult? Function()? successdelete,
    TResult? Function(String erorr)? erorrDelete,
    TResult? Function(String color)? colorSelected,
    TResult? Function(String size)? sizeSelected,
    TResult? Function()? loadingUpdate,
    TResult? Function()? successUpdate,
    TResult? Function(String erorr)? errorUpdate,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case LoadingAdd() when loadingAdd != null:
        return loadingAdd();
      case SuccessAdd() when successAdd != null:
        return successAdd();
      case ErrorAdd() when errorAdd != null:
        return errorAdd(_that.erorr);
      case LoadingGet() when loadingGet != null:
        return loadingGet();
      case SuccessGet() when successGet != null:
        return successGet(_that.cartResponse);
      case ErorrGet() when erorrGet != null:
        return erorrGet(_that.erorr);
      case LoadingDelete() when loadingDelete != null:
        return loadingDelete();
      case Successdelete() when successdelete != null:
        return successdelete();
      case ErorrDelete() when erorrDelete != null:
        return erorrDelete(_that.erorr);
      case ColorSelected() when colorSelected != null:
        return colorSelected(_that.color);
      case SizeSelected() when sizeSelected != null:
        return sizeSelected(_that.size);
      case LoadingUpdate() when loadingUpdate != null:
        return loadingUpdate();
      case SuccessUpdate() when successUpdate != null:
        return successUpdate();
      case ErrorUpdate() when errorUpdate != null:
        return errorUpdate(_that.erorr);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements CartState {
  const _Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CartState.initial()';
  }
}

/// @nodoc

class LoadingAdd implements CartState {
  const LoadingAdd();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingAdd);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CartState.loadingAdd()';
  }
}

/// @nodoc

class SuccessAdd implements CartState {
  const SuccessAdd();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SuccessAdd);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CartState.successAdd()';
  }
}

/// @nodoc

class ErrorAdd implements CartState {
  const ErrorAdd({required this.erorr});

  final String erorr;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErrorAddCopyWith<ErrorAdd> get copyWith =>
      _$ErrorAddCopyWithImpl<ErrorAdd>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorAdd &&
            (identical(other.erorr, erorr) || other.erorr == erorr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, erorr);

  @override
  String toString() {
    return 'CartState.errorAdd(erorr: $erorr)';
  }
}

/// @nodoc
abstract mixin class $ErrorAddCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory $ErrorAddCopyWith(ErrorAdd value, $Res Function(ErrorAdd) _then) =
      _$ErrorAddCopyWithImpl;
  @useResult
  $Res call({String erorr});
}

/// @nodoc
class _$ErrorAddCopyWithImpl<$Res> implements $ErrorAddCopyWith<$Res> {
  _$ErrorAddCopyWithImpl(this._self, this._then);

  final ErrorAdd _self;
  final $Res Function(ErrorAdd) _then;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? erorr = null,
  }) {
    return _then(ErrorAdd(
      erorr: null == erorr
          ? _self.erorr
          : erorr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class LoadingGet implements CartState {
  const LoadingGet();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingGet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CartState.loadingGet()';
  }
}

/// @nodoc

class SuccessGet implements CartState {
  SuccessGet(this.cartResponse);

  final ResponseCart cartResponse;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SuccessGetCopyWith<SuccessGet> get copyWith =>
      _$SuccessGetCopyWithImpl<SuccessGet>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SuccessGet &&
            (identical(other.cartResponse, cartResponse) ||
                other.cartResponse == cartResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartResponse);

  @override
  String toString() {
    return 'CartState.successGet(cartResponse: $cartResponse)';
  }
}

/// @nodoc
abstract mixin class $SuccessGetCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory $SuccessGetCopyWith(
          SuccessGet value, $Res Function(SuccessGet) _then) =
      _$SuccessGetCopyWithImpl;
  @useResult
  $Res call({ResponseCart cartResponse});
}

/// @nodoc
class _$SuccessGetCopyWithImpl<$Res> implements $SuccessGetCopyWith<$Res> {
  _$SuccessGetCopyWithImpl(this._self, this._then);

  final SuccessGet _self;
  final $Res Function(SuccessGet) _then;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cartResponse = null,
  }) {
    return _then(SuccessGet(
      null == cartResponse
          ? _self.cartResponse
          : cartResponse // ignore: cast_nullable_to_non_nullable
              as ResponseCart,
    ));
  }
}

/// @nodoc

class ErorrGet implements CartState {
  const ErorrGet({required this.erorr});

  final String erorr;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErorrGetCopyWith<ErorrGet> get copyWith =>
      _$ErorrGetCopyWithImpl<ErorrGet>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErorrGet &&
            (identical(other.erorr, erorr) || other.erorr == erorr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, erorr);

  @override
  String toString() {
    return 'CartState.erorrGet(erorr: $erorr)';
  }
}

/// @nodoc
abstract mixin class $ErorrGetCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory $ErorrGetCopyWith(ErorrGet value, $Res Function(ErorrGet) _then) =
      _$ErorrGetCopyWithImpl;
  @useResult
  $Res call({String erorr});
}

/// @nodoc
class _$ErorrGetCopyWithImpl<$Res> implements $ErorrGetCopyWith<$Res> {
  _$ErorrGetCopyWithImpl(this._self, this._then);

  final ErorrGet _self;
  final $Res Function(ErorrGet) _then;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? erorr = null,
  }) {
    return _then(ErorrGet(
      erorr: null == erorr
          ? _self.erorr
          : erorr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class LoadingDelete implements CartState {
  const LoadingDelete();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingDelete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CartState.loadingDelete()';
  }
}

/// @nodoc

class Successdelete implements CartState {
  const Successdelete();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Successdelete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CartState.successdelete()';
  }
}

/// @nodoc

class ErorrDelete implements CartState {
  const ErorrDelete({required this.erorr});

  final String erorr;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErorrDeleteCopyWith<ErorrDelete> get copyWith =>
      _$ErorrDeleteCopyWithImpl<ErorrDelete>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErorrDelete &&
            (identical(other.erorr, erorr) || other.erorr == erorr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, erorr);

  @override
  String toString() {
    return 'CartState.erorrDelete(erorr: $erorr)';
  }
}

/// @nodoc
abstract mixin class $ErorrDeleteCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory $ErorrDeleteCopyWith(
          ErorrDelete value, $Res Function(ErorrDelete) _then) =
      _$ErorrDeleteCopyWithImpl;
  @useResult
  $Res call({String erorr});
}

/// @nodoc
class _$ErorrDeleteCopyWithImpl<$Res> implements $ErorrDeleteCopyWith<$Res> {
  _$ErorrDeleteCopyWithImpl(this._self, this._then);

  final ErorrDelete _self;
  final $Res Function(ErorrDelete) _then;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? erorr = null,
  }) {
    return _then(ErorrDelete(
      erorr: null == erorr
          ? _self.erorr
          : erorr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class ColorSelected implements CartState {
  ColorSelected(this.color);

  final String color;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ColorSelectedCopyWith<ColorSelected> get copyWith =>
      _$ColorSelectedCopyWithImpl<ColorSelected>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ColorSelected &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  @override
  String toString() {
    return 'CartState.colorSelected(color: $color)';
  }
}

/// @nodoc
abstract mixin class $ColorSelectedCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory $ColorSelectedCopyWith(
          ColorSelected value, $Res Function(ColorSelected) _then) =
      _$ColorSelectedCopyWithImpl;
  @useResult
  $Res call({String color});
}

/// @nodoc
class _$ColorSelectedCopyWithImpl<$Res>
    implements $ColorSelectedCopyWith<$Res> {
  _$ColorSelectedCopyWithImpl(this._self, this._then);

  final ColorSelected _self;
  final $Res Function(ColorSelected) _then;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? color = null,
  }) {
    return _then(ColorSelected(
      null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class SizeSelected implements CartState {
  SizeSelected(this.size);

  final String size;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SizeSelectedCopyWith<SizeSelected> get copyWith =>
      _$SizeSelectedCopyWithImpl<SizeSelected>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SizeSelected &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(runtimeType, size);

  @override
  String toString() {
    return 'CartState.sizeSelected(size: $size)';
  }
}

/// @nodoc
abstract mixin class $SizeSelectedCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory $SizeSelectedCopyWith(
          SizeSelected value, $Res Function(SizeSelected) _then) =
      _$SizeSelectedCopyWithImpl;
  @useResult
  $Res call({String size});
}

/// @nodoc
class _$SizeSelectedCopyWithImpl<$Res> implements $SizeSelectedCopyWith<$Res> {
  _$SizeSelectedCopyWithImpl(this._self, this._then);

  final SizeSelected _self;
  final $Res Function(SizeSelected) _then;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? size = null,
  }) {
    return _then(SizeSelected(
      null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class LoadingUpdate implements CartState {
  const LoadingUpdate();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CartState.loadingUpdate()';
  }
}

/// @nodoc

class SuccessUpdate implements CartState {
  const SuccessUpdate();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SuccessUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CartState.successUpdate()';
  }
}

/// @nodoc

class ErrorUpdate implements CartState {
  const ErrorUpdate({required this.erorr});

  final String erorr;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErrorUpdateCopyWith<ErrorUpdate> get copyWith =>
      _$ErrorUpdateCopyWithImpl<ErrorUpdate>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorUpdate &&
            (identical(other.erorr, erorr) || other.erorr == erorr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, erorr);

  @override
  String toString() {
    return 'CartState.errorUpdate(erorr: $erorr)';
  }
}

/// @nodoc
abstract mixin class $ErrorUpdateCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory $ErrorUpdateCopyWith(
          ErrorUpdate value, $Res Function(ErrorUpdate) _then) =
      _$ErrorUpdateCopyWithImpl;
  @useResult
  $Res call({String erorr});
}

/// @nodoc
class _$ErrorUpdateCopyWithImpl<$Res> implements $ErrorUpdateCopyWith<$Res> {
  _$ErrorUpdateCopyWithImpl(this._self, this._then);

  final ErrorUpdate _self;
  final $Res Function(ErrorUpdate) _then;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? erorr = null,
  }) {
    return _then(ErrorUpdate(
      erorr: null == erorr
          ? _self.erorr
          : erorr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
