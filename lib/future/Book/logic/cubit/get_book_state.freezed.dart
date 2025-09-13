// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_book_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetBooKState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetBooKState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetBooKState()';
  }
}

/// @nodoc
class $GetBooKStateCopyWith<$Res> {
  $GetBooKStateCopyWith(GetBooKState _, $Res Function(GetBooKState) __);
}

/// Adds pattern-matching-related methods to [GetBooKState].
extension GetBooKStatePatterns on GetBooKState {
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
    TResult Function(Succes value)? ucces,
    TResult Function(Erorr value)? erorr,
    TResult Function(fath value)? fathloading,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case Loading() when loading != null:
        return loading(_that);
      case Succes() when ucces != null:
        return ucces(_that);
      case Erorr() when erorr != null:
        return erorr(_that);
      case fath() when fathloading != null:
        return fathloading(_that);
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
    required TResult Function(Succes value) ucces,
    required TResult Function(Erorr value) erorr,
    required TResult Function(fath value) fathloading,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case Loading():
        return loading(_that);
      case Succes():
        return ucces(_that);
      case Erorr():
        return erorr(_that);
      case fath():
        return fathloading(_that);
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
    TResult? Function(Succes value)? ucces,
    TResult? Function(Erorr value)? erorr,
    TResult? Function(fath value)? fathloading,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case Loading() when loading != null:
        return loading(_that);
      case Succes() when ucces != null:
        return ucces(_that);
      case Erorr() when erorr != null:
        return erorr(_that);
      case fath() when fathloading != null:
        return fathloading(_that);
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
    TResult Function(List<BookEntity> book)? ucces,
    TResult Function(String erorr)? erorr,
    TResult Function()? fathloading,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case Loading() when loading != null:
        return loading();
      case Succes() when ucces != null:
        return ucces(_that.book);
      case Erorr() when erorr != null:
        return erorr(_that.erorr);
      case fath() when fathloading != null:
        return fathloading();
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
    required TResult Function(List<BookEntity> book) ucces,
    required TResult Function(String erorr) erorr,
    required TResult Function() fathloading,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case Loading():
        return loading();
      case Succes():
        return ucces(_that.book);
      case Erorr():
        return erorr(_that.erorr);
      case fath():
        return fathloading();
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
    TResult? Function(List<BookEntity> book)? ucces,
    TResult? Function(String erorr)? erorr,
    TResult? Function()? fathloading,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case Loading() when loading != null:
        return loading();
      case Succes() when ucces != null:
        return ucces(_that.book);
      case Erorr() when erorr != null:
        return erorr(_that.erorr);
      case fath() when fathloading != null:
        return fathloading();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements GetBooKState {
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
    return 'GetBooKState.initial()';
  }
}

/// @nodoc

class Loading implements GetBooKState {
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
    return 'GetBooKState.loading()';
  }
}

/// @nodoc

class Succes implements GetBooKState {
  const Succes({required final List<BookEntity> book}) : _book = book;

  final List<BookEntity> _book;
  List<BookEntity> get book {
    if (_book is EqualUnmodifiableListView) return _book;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_book);
  }

  /// Create a copy of GetBooKState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SuccesCopyWith<Succes> get copyWith =>
      _$SuccesCopyWithImpl<Succes>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Succes &&
            const DeepCollectionEquality().equals(other._book, _book));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_book));

  @override
  String toString() {
    return 'GetBooKState.ucces(book: $book)';
  }
}

/// @nodoc
abstract mixin class $SuccesCopyWith<$Res>
    implements $GetBooKStateCopyWith<$Res> {
  factory $SuccesCopyWith(Succes value, $Res Function(Succes) _then) =
      _$SuccesCopyWithImpl;
  @useResult
  $Res call({List<BookEntity> book});
}

/// @nodoc
class _$SuccesCopyWithImpl<$Res> implements $SuccesCopyWith<$Res> {
  _$SuccesCopyWithImpl(this._self, this._then);

  final Succes _self;
  final $Res Function(Succes) _then;

  /// Create a copy of GetBooKState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? book = null,
  }) {
    return _then(Succes(
      book: null == book
          ? _self._book
          : book // ignore: cast_nullable_to_non_nullable
              as List<BookEntity>,
    ));
  }
}

/// @nodoc

class Erorr implements GetBooKState {
  const Erorr({required this.erorr});

  final String erorr;

  /// Create a copy of GetBooKState
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
    return 'GetBooKState.erorr(erorr: $erorr)';
  }
}

/// @nodoc
abstract mixin class $ErorrCopyWith<$Res>
    implements $GetBooKStateCopyWith<$Res> {
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

  /// Create a copy of GetBooKState
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

class fath implements GetBooKState {
  const fath();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is fath);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetBooKState.fathloading()';
  }
}

// dart format on
