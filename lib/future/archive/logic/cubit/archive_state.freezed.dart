// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'archive_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ArchiveState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ArchiveState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ArchiveState()';
  }
}

/// @nodoc
class $ArchiveStateCopyWith<$Res> {
  $ArchiveStateCopyWith(ArchiveState _, $Res Function(ArchiveState) __);
}

/// Adds pattern-matching-related methods to [ArchiveState].
extension ArchiveStatePatterns on ArchiveState {
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
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Erorr value)? erorr,
    TResult Function(LoadingRating value)? loadingRating,
    TResult Function(SuccessRating value)? successRating,
    TResult Function(ErorrRating value)? erorrRating,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case Loading() when loading != null:
        return loading(_that);
      case Success() when success != null:
        return success(_that);
      case Erorr() when erorr != null:
        return erorr(_that);
      case LoadingRating() when loadingRating != null:
        return loadingRating(_that);
      case SuccessRating() when successRating != null:
        return successRating(_that);
      case ErorrRating() when erorrRating != null:
        return erorrRating(_that);
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
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Erorr value) erorr,
    required TResult Function(LoadingRating value) loadingRating,
    required TResult Function(SuccessRating value) successRating,
    required TResult Function(ErorrRating value) erorrRating,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case Loading():
        return loading(_that);
      case Success():
        return success(_that);
      case Erorr():
        return erorr(_that);
      case LoadingRating():
        return loadingRating(_that);
      case SuccessRating():
        return successRating(_that);
      case ErorrRating():
        return erorrRating(_that);
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
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Erorr value)? erorr,
    TResult? Function(LoadingRating value)? loadingRating,
    TResult? Function(SuccessRating value)? successRating,
    TResult? Function(ErorrRating value)? erorrRating,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case Loading() when loading != null:
        return loading(_that);
      case Success() when success != null:
        return success(_that);
      case Erorr() when erorr != null:
        return erorr(_that);
      case LoadingRating() when loadingRating != null:
        return loadingRating(_that);
      case SuccessRating() when successRating != null:
        return successRating(_that);
      case ErorrRating() when erorrRating != null:
        return erorrRating(_that);
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
    TResult Function()? loading,
    TResult Function(PendingResponse pendingResponse)? success,
    TResult Function(String erorr)? erorr,
    TResult Function()? loadingRating,
    TResult Function()? successRating,
    TResult Function(String erorr)? erorrRating,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case Loading() when loading != null:
        return loading();
      case Success() when success != null:
        return success(_that.pendingResponse);
      case Erorr() when erorr != null:
        return erorr(_that.erorr);
      case LoadingRating() when loadingRating != null:
        return loadingRating();
      case SuccessRating() when successRating != null:
        return successRating();
      case ErorrRating() when erorrRating != null:
        return erorrRating(_that.erorr);
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
    required TResult Function() loading,
    required TResult Function(PendingResponse pendingResponse) success,
    required TResult Function(String erorr) erorr,
    required TResult Function() loadingRating,
    required TResult Function() successRating,
    required TResult Function(String erorr) erorrRating,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case Loading():
        return loading();
      case Success():
        return success(_that.pendingResponse);
      case Erorr():
        return erorr(_that.erorr);
      case LoadingRating():
        return loadingRating();
      case SuccessRating():
        return successRating();
      case ErorrRating():
        return erorrRating(_that.erorr);
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
    TResult? Function()? loading,
    TResult? Function(PendingResponse pendingResponse)? success,
    TResult? Function(String erorr)? erorr,
    TResult? Function()? loadingRating,
    TResult? Function()? successRating,
    TResult? Function(String erorr)? erorrRating,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case Loading() when loading != null:
        return loading();
      case Success() when success != null:
        return success(_that.pendingResponse);
      case Erorr() when erorr != null:
        return erorr(_that.erorr);
      case LoadingRating() when loadingRating != null:
        return loadingRating();
      case SuccessRating() when successRating != null:
        return successRating();
      case ErorrRating() when erorrRating != null:
        return erorrRating(_that.erorr);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements ArchiveState {
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
    return 'ArchiveState.initial()';
  }
}

/// @nodoc

class Loading implements ArchiveState {
  const Loading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ArchiveState.loading()';
  }
}

/// @nodoc

class Success implements ArchiveState {
  const Success({required this.pendingResponse});

  final PendingResponse pendingResponse;

  /// Create a copy of ArchiveState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SuccessCopyWith<Success> get copyWith =>
      _$SuccessCopyWithImpl<Success>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Success &&
            (identical(other.pendingResponse, pendingResponse) ||
                other.pendingResponse == pendingResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pendingResponse);

  @override
  String toString() {
    return 'ArchiveState.success(pendingResponse: $pendingResponse)';
  }
}

/// @nodoc
abstract mixin class $SuccessCopyWith<$Res>
    implements $ArchiveStateCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) _then) =
      _$SuccessCopyWithImpl;
  @useResult
  $Res call({PendingResponse pendingResponse});
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res> implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success _self;
  final $Res Function(Success) _then;

  /// Create a copy of ArchiveState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pendingResponse = null,
  }) {
    return _then(Success(
      pendingResponse: null == pendingResponse
          ? _self.pendingResponse
          : pendingResponse // ignore: cast_nullable_to_non_nullable
              as PendingResponse,
    ));
  }
}

/// @nodoc

class Erorr implements ArchiveState {
  const Erorr({required this.erorr});

  final String erorr;

  /// Create a copy of ArchiveState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErorrCopyWith<Erorr> get copyWith =>
      _$ErorrCopyWithImpl<Erorr>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Erorr &&
            (identical(other.erorr, erorr) || other.erorr == erorr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, erorr);

  @override
  String toString() {
    return 'ArchiveState.erorr(erorr: $erorr)';
  }
}

/// @nodoc
abstract mixin class $ErorrCopyWith<$Res>
    implements $ArchiveStateCopyWith<$Res> {
  factory $ErorrCopyWith(Erorr value, $Res Function(Erorr) _then) =
      _$ErorrCopyWithImpl;
  @useResult
  $Res call({String erorr});
}

/// @nodoc
class _$ErorrCopyWithImpl<$Res> implements $ErorrCopyWith<$Res> {
  _$ErorrCopyWithImpl(this._self, this._then);

  final Erorr _self;
  final $Res Function(Erorr) _then;

  /// Create a copy of ArchiveState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? erorr = null,
  }) {
    return _then(Erorr(
      erorr: null == erorr
          ? _self.erorr
          : erorr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class LoadingRating implements ArchiveState {
  const LoadingRating();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingRating);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ArchiveState.loadingRating()';
  }
}

/// @nodoc

class SuccessRating implements ArchiveState {
  const SuccessRating();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SuccessRating);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ArchiveState.successRating()';
  }
}

/// @nodoc

class ErorrRating implements ArchiveState {
  const ErorrRating({required this.erorr});

  final String erorr;

  /// Create a copy of ArchiveState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErorrRatingCopyWith<ErorrRating> get copyWith =>
      _$ErorrRatingCopyWithImpl<ErorrRating>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErorrRating &&
            (identical(other.erorr, erorr) || other.erorr == erorr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, erorr);

  @override
  String toString() {
    return 'ArchiveState.erorrRating(erorr: $erorr)';
  }
}

/// @nodoc
abstract mixin class $ErorrRatingCopyWith<$Res>
    implements $ArchiveStateCopyWith<$Res> {
  factory $ErorrRatingCopyWith(
          ErorrRating value, $Res Function(ErorrRating) _then) =
      _$ErorrRatingCopyWithImpl;
  @useResult
  $Res call({String erorr});
}

/// @nodoc
class _$ErorrRatingCopyWithImpl<$Res> implements $ErorrRatingCopyWith<$Res> {
  _$ErorrRatingCopyWithImpl(this._self, this._then);

  final ErorrRating _self;
  final $Res Function(ErorrRating) _then;

  /// Create a copy of ArchiveState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? erorr = null,
  }) {
    return _then(ErorrRating(
      erorr: null == erorr
          ? _self.erorr
          : erorr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
