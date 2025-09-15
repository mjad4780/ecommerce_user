// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignUpState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignUpState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignUpState()';
  }
}

/// @nodoc
class $SignUpStateCopyWith<$Res> {
  $SignUpStateCopyWith(SignUpState _, $Res Function(SignUpState) __);
}

/// Adds pattern-matching-related methods to [SignUpState].
extension SignUpStatePatterns on SignUpState {
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
    TResult Function(Laoding value)? laoding,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(ObscureText value)? obscureText,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case Laoding() when laoding != null:
        return laoding(_that);
      case Success() when success != null:
        return success(_that);
      case Error() when error != null:
        return error(_that);
      case ObscureText() when obscureText != null:
        return obscureText(_that);
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
    required TResult Function(Laoding value) laoding,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(ObscureText value) obscureText,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case Laoding():
        return laoding(_that);
      case Success():
        return success(_that);
      case Error():
        return error(_that);
      case ObscureText():
        return obscureText(_that);
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
    TResult? Function(Laoding value)? laoding,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(ObscureText value)? obscureText,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case Laoding() when laoding != null:
        return laoding(_that);
      case Success() when success != null:
        return success(_that);
      case Error() when error != null:
        return error(_that);
      case ObscureText() when obscureText != null:
        return obscureText(_that);
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
    TResult Function()? laoding,
    TResult Function()? success,
    TResult Function(String error)? error,
    TResult Function()? obscureText,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case Laoding() when laoding != null:
        return laoding();
      case Success() when success != null:
        return success();
      case Error() when error != null:
        return error(_that.error);
      case ObscureText() when obscureText != null:
        return obscureText();
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
    required TResult Function() laoding,
    required TResult Function() success,
    required TResult Function(String error) error,
    required TResult Function() obscureText,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case Laoding():
        return laoding();
      case Success():
        return success();
      case Error():
        return error(_that.error);
      case ObscureText():
        return obscureText();
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
    TResult? Function()? laoding,
    TResult? Function()? success,
    TResult? Function(String error)? error,
    TResult? Function()? obscureText,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case Laoding() when laoding != null:
        return laoding();
      case Success() when success != null:
        return success();
      case Error() when error != null:
        return error(_that.error);
      case ObscureText() when obscureText != null:
        return obscureText();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements SignUpState {
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
    return 'SignUpState.initial()';
  }
}

/// @nodoc

class Laoding implements SignUpState {
  const Laoding();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Laoding);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignUpState.laoding()';
  }
}

/// @nodoc

class Success implements SignUpState {
  const Success();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignUpState.success()';
  }
}

/// @nodoc

class Error implements SignUpState {
  const Error({required this.error});

  final String error;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'SignUpState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $ErrorCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) _then) =
      _$ErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error _self;
  final $Res Function(Error) _then;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(Error(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class ObscureText implements SignUpState {
  const ObscureText();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ObscureText);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignUpState.obscureText()';
  }
}

// dart format on
