// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offers_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OffersState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OffersState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OffersState()';
  }
}

/// @nodoc
class $OffersStateCopyWith<$Res> {
  $OffersStateCopyWith(OffersState _, $Res Function(OffersState) __);
}

/// Adds pattern-matching-related methods to [OffersState].
extension OffersStatePatterns on OffersState {
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
    TResult Function(Loadingoffers value)? loadingoffers,
    TResult Function(Successoffers value)? successoffers,
    TResult Function(Erroroffers value)? erroroffers,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case Loadingoffers() when loadingoffers != null:
        return loadingoffers(_that);
      case Successoffers() when successoffers != null:
        return successoffers(_that);
      case Erroroffers() when erroroffers != null:
        return erroroffers(_that);
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
    required TResult Function(Loadingoffers value) loadingoffers,
    required TResult Function(Successoffers value) successoffers,
    required TResult Function(Erroroffers value) erroroffers,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case Loadingoffers():
        return loadingoffers(_that);
      case Successoffers():
        return successoffers(_that);
      case Erroroffers():
        return erroroffers(_that);
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
    TResult? Function(Loadingoffers value)? loadingoffers,
    TResult? Function(Successoffers value)? successoffers,
    TResult? Function(Erroroffers value)? erroroffers,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case Loadingoffers() when loadingoffers != null:
        return loadingoffers(_that);
      case Successoffers() when successoffers != null:
        return successoffers(_that);
      case Erroroffers() when erroroffers != null:
        return erroroffers(_that);
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
    TResult Function()? loadingoffers,
    TResult Function(Item1view responseItems)? successoffers,
    TResult Function(String erorr)? erroroffers,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case Loadingoffers() when loadingoffers != null:
        return loadingoffers();
      case Successoffers() when successoffers != null:
        return successoffers(_that.responseItems);
      case Erroroffers() when erroroffers != null:
        return erroroffers(_that.erorr);
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
    required TResult Function() loadingoffers,
    required TResult Function(Item1view responseItems) successoffers,
    required TResult Function(String erorr) erroroffers,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case Loadingoffers():
        return loadingoffers();
      case Successoffers():
        return successoffers(_that.responseItems);
      case Erroroffers():
        return erroroffers(_that.erorr);
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
    TResult? Function()? loadingoffers,
    TResult? Function(Item1view responseItems)? successoffers,
    TResult? Function(String erorr)? erroroffers,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case Loadingoffers() when loadingoffers != null:
        return loadingoffers();
      case Successoffers() when successoffers != null:
        return successoffers(_that.responseItems);
      case Erroroffers() when erroroffers != null:
        return erroroffers(_that.erorr);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements OffersState {
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
    return 'OffersState.initial()';
  }
}

/// @nodoc

class Loadingoffers implements OffersState {
  const Loadingoffers();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loadingoffers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OffersState.loadingoffers()';
  }
}

/// @nodoc

class Successoffers implements OffersState {
  const Successoffers({required this.responseItems});

  final Item1view responseItems;

  /// Create a copy of OffersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SuccessoffersCopyWith<Successoffers> get copyWith =>
      _$SuccessoffersCopyWithImpl<Successoffers>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Successoffers &&
            (identical(other.responseItems, responseItems) ||
                other.responseItems == responseItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, responseItems);

  @override
  String toString() {
    return 'OffersState.successoffers(responseItems: $responseItems)';
  }
}

/// @nodoc
abstract mixin class $SuccessoffersCopyWith<$Res>
    implements $OffersStateCopyWith<$Res> {
  factory $SuccessoffersCopyWith(
          Successoffers value, $Res Function(Successoffers) _then) =
      _$SuccessoffersCopyWithImpl;
  @useResult
  $Res call({Item1view responseItems});
}

/// @nodoc
class _$SuccessoffersCopyWithImpl<$Res>
    implements $SuccessoffersCopyWith<$Res> {
  _$SuccessoffersCopyWithImpl(this._self, this._then);

  final Successoffers _self;
  final $Res Function(Successoffers) _then;

  /// Create a copy of OffersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? responseItems = null,
  }) {
    return _then(Successoffers(
      responseItems: null == responseItems
          ? _self.responseItems
          : responseItems // ignore: cast_nullable_to_non_nullable
              as Item1view,
    ));
  }
}

/// @nodoc

class Erroroffers implements OffersState {
  const Erroroffers({required this.erorr});

  final String erorr;

  /// Create a copy of OffersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErroroffersCopyWith<Erroroffers> get copyWith =>
      _$ErroroffersCopyWithImpl<Erroroffers>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Erroroffers &&
            (identical(other.erorr, erorr) || other.erorr == erorr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, erorr);

  @override
  String toString() {
    return 'OffersState.erroroffers(erorr: $erorr)';
  }
}

/// @nodoc
abstract mixin class $ErroroffersCopyWith<$Res>
    implements $OffersStateCopyWith<$Res> {
  factory $ErroroffersCopyWith(
          Erroroffers value, $Res Function(Erroroffers) _then) =
      _$ErroroffersCopyWithImpl;
  @useResult
  $Res call({String erorr});
}

/// @nodoc
class _$ErroroffersCopyWithImpl<$Res> implements $ErroroffersCopyWith<$Res> {
  _$ErroroffersCopyWithImpl(this._self, this._then);

  final Erroroffers _self;
  final $Res Function(Erroroffers) _then;

  /// Create a copy of OffersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? erorr = null,
  }) {
    return _then(Erroroffers(
      erorr: null == erorr
          ? _self.erorr
          : erorr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
