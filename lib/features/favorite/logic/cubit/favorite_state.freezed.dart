// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FavoriteState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FavoriteState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FavoriteState()';
  }
}

/// @nodoc
class $FavoriteStateCopyWith<$Res> {
  $FavoriteStateCopyWith(FavoriteState _, $Res Function(FavoriteState) __);
}

/// Adds pattern-matching-related methods to [FavoriteState].
extension FavoriteStatePatterns on FavoriteState {
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
    TResult Function(ErorrAdd value)? erorrAdd,
    TResult Function(LoadingGet value)? loadingGet,
    TResult Function(SuccessGet value)? successGet,
    TResult Function(ErorrGet value)? erorrGet,
    TResult Function(LoadingDelete value)? loadingDelete,
    TResult Function(SuccessDelete value)? successDelete,
    TResult Function(ErorrDelete value)? erorrDelete,
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
      case ErorrAdd() when erorrAdd != null:
        return erorrAdd(_that);
      case LoadingGet() when loadingGet != null:
        return loadingGet(_that);
      case SuccessGet() when successGet != null:
        return successGet(_that);
      case ErorrGet() when erorrGet != null:
        return erorrGet(_that);
      case LoadingDelete() when loadingDelete != null:
        return loadingDelete(_that);
      case SuccessDelete() when successDelete != null:
        return successDelete(_that);
      case ErorrDelete() when erorrDelete != null:
        return erorrDelete(_that);
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
    required TResult Function(ErorrAdd value) erorrAdd,
    required TResult Function(LoadingGet value) loadingGet,
    required TResult Function(SuccessGet value) successGet,
    required TResult Function(ErorrGet value) erorrGet,
    required TResult Function(LoadingDelete value) loadingDelete,
    required TResult Function(SuccessDelete value) successDelete,
    required TResult Function(ErorrDelete value) erorrDelete,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case LoadingAdd():
        return loadingAdd(_that);
      case SuccessAdd():
        return successAdd(_that);
      case ErorrAdd():
        return erorrAdd(_that);
      case LoadingGet():
        return loadingGet(_that);
      case SuccessGet():
        return successGet(_that);
      case ErorrGet():
        return erorrGet(_that);
      case LoadingDelete():
        return loadingDelete(_that);
      case SuccessDelete():
        return successDelete(_that);
      case ErorrDelete():
        return erorrDelete(_that);
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
    TResult? Function(ErorrAdd value)? erorrAdd,
    TResult? Function(LoadingGet value)? loadingGet,
    TResult? Function(SuccessGet value)? successGet,
    TResult? Function(ErorrGet value)? erorrGet,
    TResult? Function(LoadingDelete value)? loadingDelete,
    TResult? Function(SuccessDelete value)? successDelete,
    TResult? Function(ErorrDelete value)? erorrDelete,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case LoadingAdd() when loadingAdd != null:
        return loadingAdd(_that);
      case SuccessAdd() when successAdd != null:
        return successAdd(_that);
      case ErorrAdd() when erorrAdd != null:
        return erorrAdd(_that);
      case LoadingGet() when loadingGet != null:
        return loadingGet(_that);
      case SuccessGet() when successGet != null:
        return successGet(_that);
      case ErorrGet() when erorrGet != null:
        return erorrGet(_that);
      case LoadingDelete() when loadingDelete != null:
        return loadingDelete(_that);
      case SuccessDelete() when successDelete != null:
        return successDelete(_that);
      case ErorrDelete() when erorrDelete != null:
        return erorrDelete(_that);
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
    TResult Function(String erorr)? erorrAdd,
    TResult Function()? loadingGet,
    TResult Function(Item1view favoriteResponse)? successGet,
    TResult Function(String erorr)? erorrGet,
    TResult Function()? loadingDelete,
    TResult Function()? successDelete,
    TResult Function(String erorr)? erorrDelete,
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
      case ErorrAdd() when erorrAdd != null:
        return erorrAdd(_that.erorr);
      case LoadingGet() when loadingGet != null:
        return loadingGet();
      case SuccessGet() when successGet != null:
        return successGet(_that.favoriteResponse);
      case ErorrGet() when erorrGet != null:
        return erorrGet(_that.erorr);
      case LoadingDelete() when loadingDelete != null:
        return loadingDelete();
      case SuccessDelete() when successDelete != null:
        return successDelete();
      case ErorrDelete() when erorrDelete != null:
        return erorrDelete(_that.erorr);
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
    required TResult Function(String erorr) erorrAdd,
    required TResult Function() loadingGet,
    required TResult Function(Item1view favoriteResponse) successGet,
    required TResult Function(String erorr) erorrGet,
    required TResult Function() loadingDelete,
    required TResult Function() successDelete,
    required TResult Function(String erorr) erorrDelete,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case LoadingAdd():
        return loadingAdd();
      case SuccessAdd():
        return successAdd();
      case ErorrAdd():
        return erorrAdd(_that.erorr);
      case LoadingGet():
        return loadingGet();
      case SuccessGet():
        return successGet(_that.favoriteResponse);
      case ErorrGet():
        return erorrGet(_that.erorr);
      case LoadingDelete():
        return loadingDelete();
      case SuccessDelete():
        return successDelete();
      case ErorrDelete():
        return erorrDelete(_that.erorr);
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
    TResult? Function(String erorr)? erorrAdd,
    TResult? Function()? loadingGet,
    TResult? Function(Item1view favoriteResponse)? successGet,
    TResult? Function(String erorr)? erorrGet,
    TResult? Function()? loadingDelete,
    TResult? Function()? successDelete,
    TResult? Function(String erorr)? erorrDelete,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case LoadingAdd() when loadingAdd != null:
        return loadingAdd();
      case SuccessAdd() when successAdd != null:
        return successAdd();
      case ErorrAdd() when erorrAdd != null:
        return erorrAdd(_that.erorr);
      case LoadingGet() when loadingGet != null:
        return loadingGet();
      case SuccessGet() when successGet != null:
        return successGet(_that.favoriteResponse);
      case ErorrGet() when erorrGet != null:
        return erorrGet(_that.erorr);
      case LoadingDelete() when loadingDelete != null:
        return loadingDelete();
      case SuccessDelete() when successDelete != null:
        return successDelete();
      case ErorrDelete() when erorrDelete != null:
        return erorrDelete(_that.erorr);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements FavoriteState {
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
    return 'FavoriteState.initial()';
  }
}

/// @nodoc

class LoadingAdd implements FavoriteState {
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
    return 'FavoriteState.loadingAdd()';
  }
}

/// @nodoc

class SuccessAdd implements FavoriteState {
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
    return 'FavoriteState.successAdd()';
  }
}

/// @nodoc

class ErorrAdd implements FavoriteState {
  const ErorrAdd({required this.erorr});

  final String erorr;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErorrAddCopyWith<ErorrAdd> get copyWith =>
      _$ErorrAddCopyWithImpl<ErorrAdd>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErorrAdd &&
            (identical(other.erorr, erorr) || other.erorr == erorr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, erorr);

  @override
  String toString() {
    return 'FavoriteState.erorrAdd(erorr: $erorr)';
  }
}

/// @nodoc
abstract mixin class $ErorrAddCopyWith<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  factory $ErorrAddCopyWith(ErorrAdd value, $Res Function(ErorrAdd) _then) =
      _$ErorrAddCopyWithImpl;
  @useResult
  $Res call({String erorr});
}

/// @nodoc
class _$ErorrAddCopyWithImpl<$Res> implements $ErorrAddCopyWith<$Res> {
  _$ErorrAddCopyWithImpl(this._self, this._then);

  final ErorrAdd _self;
  final $Res Function(ErorrAdd) _then;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? erorr = null,
  }) {
    return _then(ErorrAdd(
      erorr: null == erorr
          ? _self.erorr
          : erorr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class LoadingGet implements FavoriteState {
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
    return 'FavoriteState.loadingGet()';
  }
}

/// @nodoc

class SuccessGet implements FavoriteState {
  const SuccessGet(this.favoriteResponse);

  final Item1view favoriteResponse;

  /// Create a copy of FavoriteState
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
            (identical(other.favoriteResponse, favoriteResponse) ||
                other.favoriteResponse == favoriteResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, favoriteResponse);

  @override
  String toString() {
    return 'FavoriteState.successGet(favoriteResponse: $favoriteResponse)';
  }
}

/// @nodoc
abstract mixin class $SuccessGetCopyWith<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  factory $SuccessGetCopyWith(
          SuccessGet value, $Res Function(SuccessGet) _then) =
      _$SuccessGetCopyWithImpl;
  @useResult
  $Res call({Item1view favoriteResponse});
}

/// @nodoc
class _$SuccessGetCopyWithImpl<$Res> implements $SuccessGetCopyWith<$Res> {
  _$SuccessGetCopyWithImpl(this._self, this._then);

  final SuccessGet _self;
  final $Res Function(SuccessGet) _then;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? favoriteResponse = null,
  }) {
    return _then(SuccessGet(
      null == favoriteResponse
          ? _self.favoriteResponse
          : favoriteResponse // ignore: cast_nullable_to_non_nullable
              as Item1view,
    ));
  }
}

/// @nodoc

class ErorrGet implements FavoriteState {
  const ErorrGet({required this.erorr});

  final String erorr;

  /// Create a copy of FavoriteState
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
    return 'FavoriteState.erorrGet(erorr: $erorr)';
  }
}

/// @nodoc
abstract mixin class $ErorrGetCopyWith<$Res>
    implements $FavoriteStateCopyWith<$Res> {
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

  /// Create a copy of FavoriteState
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

class LoadingDelete implements FavoriteState {
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
    return 'FavoriteState.loadingDelete()';
  }
}

/// @nodoc

class SuccessDelete implements FavoriteState {
  const SuccessDelete();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SuccessDelete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FavoriteState.successDelete()';
  }
}

/// @nodoc

class ErorrDelete implements FavoriteState {
  const ErorrDelete({required this.erorr});

  final String erorr;

  /// Create a copy of FavoriteState
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
    return 'FavoriteState.erorrDelete(erorr: $erorr)';
  }
}

/// @nodoc
abstract mixin class $ErorrDeleteCopyWith<$Res>
    implements $FavoriteStateCopyWith<$Res> {
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

  /// Create a copy of FavoriteState
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

// dart format on
