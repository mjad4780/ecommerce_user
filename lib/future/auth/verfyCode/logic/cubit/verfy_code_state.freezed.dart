// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verfy_code_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerfyCodeState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is VerfyCodeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'VerfyCodeState()';
  }
}

/// @nodoc
class $VerfyCodeStateCopyWith<$Res> {
  $VerfyCodeStateCopyWith(VerfyCodeState _, $Res Function(VerfyCodeState) __);
}

/// Adds pattern-matching-related methods to [VerfyCodeState].
extension VerfyCodeStatePatterns on VerfyCodeState {
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
    TResult Function(LoadingveryfyCode value)? loadingveryfyCode,
    TResult Function(SuccessVerfyCode value)? successVerfyCode,
    TResult Function(ErorrVerfycode value)? erorrVerfycode,
    TResult Function(LoadingSend value)? loadingSend,
    TResult Function(SuccessSend value)? successSend,
    TResult Function(ErorrSend value)? erorrSend,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case LoadingveryfyCode() when loadingveryfyCode != null:
        return loadingveryfyCode(_that);
      case SuccessVerfyCode() when successVerfyCode != null:
        return successVerfyCode(_that);
      case ErorrVerfycode() when erorrVerfycode != null:
        return erorrVerfycode(_that);
      case LoadingSend() when loadingSend != null:
        return loadingSend(_that);
      case SuccessSend() when successSend != null:
        return successSend(_that);
      case ErorrSend() when erorrSend != null:
        return erorrSend(_that);
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
    required TResult Function(LoadingveryfyCode value) loadingveryfyCode,
    required TResult Function(SuccessVerfyCode value) successVerfyCode,
    required TResult Function(ErorrVerfycode value) erorrVerfycode,
    required TResult Function(LoadingSend value) loadingSend,
    required TResult Function(SuccessSend value) successSend,
    required TResult Function(ErorrSend value) erorrSend,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case LoadingveryfyCode():
        return loadingveryfyCode(_that);
      case SuccessVerfyCode():
        return successVerfyCode(_that);
      case ErorrVerfycode():
        return erorrVerfycode(_that);
      case LoadingSend():
        return loadingSend(_that);
      case SuccessSend():
        return successSend(_that);
      case ErorrSend():
        return erorrSend(_that);
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
    TResult? Function(LoadingveryfyCode value)? loadingveryfyCode,
    TResult? Function(SuccessVerfyCode value)? successVerfyCode,
    TResult? Function(ErorrVerfycode value)? erorrVerfycode,
    TResult? Function(LoadingSend value)? loadingSend,
    TResult? Function(SuccessSend value)? successSend,
    TResult? Function(ErorrSend value)? erorrSend,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case LoadingveryfyCode() when loadingveryfyCode != null:
        return loadingveryfyCode(_that);
      case SuccessVerfyCode() when successVerfyCode != null:
        return successVerfyCode(_that);
      case ErorrVerfycode() when erorrVerfycode != null:
        return erorrVerfycode(_that);
      case LoadingSend() when loadingSend != null:
        return loadingSend(_that);
      case SuccessSend() when successSend != null:
        return successSend(_that);
      case ErorrSend() when erorrSend != null:
        return erorrSend(_that);
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
    TResult Function()? loadingveryfyCode,
    TResult Function()? successVerfyCode,
    TResult Function(String erorr)? erorrVerfycode,
    TResult Function()? loadingSend,
    TResult Function()? successSend,
    TResult Function(String erorr)? erorrSend,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case LoadingveryfyCode() when loadingveryfyCode != null:
        return loadingveryfyCode();
      case SuccessVerfyCode() when successVerfyCode != null:
        return successVerfyCode();
      case ErorrVerfycode() when erorrVerfycode != null:
        return erorrVerfycode(_that.erorr);
      case LoadingSend() when loadingSend != null:
        return loadingSend();
      case SuccessSend() when successSend != null:
        return successSend();
      case ErorrSend() when erorrSend != null:
        return erorrSend(_that.erorr);
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
    required TResult Function() loadingveryfyCode,
    required TResult Function() successVerfyCode,
    required TResult Function(String erorr) erorrVerfycode,
    required TResult Function() loadingSend,
    required TResult Function() successSend,
    required TResult Function(String erorr) erorrSend,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case LoadingveryfyCode():
        return loadingveryfyCode();
      case SuccessVerfyCode():
        return successVerfyCode();
      case ErorrVerfycode():
        return erorrVerfycode(_that.erorr);
      case LoadingSend():
        return loadingSend();
      case SuccessSend():
        return successSend();
      case ErorrSend():
        return erorrSend(_that.erorr);
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
    TResult? Function()? loadingveryfyCode,
    TResult? Function()? successVerfyCode,
    TResult? Function(String erorr)? erorrVerfycode,
    TResult? Function()? loadingSend,
    TResult? Function()? successSend,
    TResult? Function(String erorr)? erorrSend,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case LoadingveryfyCode() when loadingveryfyCode != null:
        return loadingveryfyCode();
      case SuccessVerfyCode() when successVerfyCode != null:
        return successVerfyCode();
      case ErorrVerfycode() when erorrVerfycode != null:
        return erorrVerfycode(_that.erorr);
      case LoadingSend() when loadingSend != null:
        return loadingSend();
      case SuccessSend() when successSend != null:
        return successSend();
      case ErorrSend() when erorrSend != null:
        return erorrSend(_that.erorr);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements VerfyCodeState {
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
    return 'VerfyCodeState.initial()';
  }
}

/// @nodoc

class LoadingveryfyCode implements VerfyCodeState {
  const LoadingveryfyCode();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingveryfyCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'VerfyCodeState.loadingveryfyCode()';
  }
}

/// @nodoc

class SuccessVerfyCode implements VerfyCodeState {
  const SuccessVerfyCode();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SuccessVerfyCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'VerfyCodeState.successVerfyCode()';
  }
}

/// @nodoc

class ErorrVerfycode implements VerfyCodeState {
  const ErorrVerfycode({required this.erorr});

  final String erorr;

  /// Create a copy of VerfyCodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErorrVerfycodeCopyWith<ErorrVerfycode> get copyWith =>
      _$ErorrVerfycodeCopyWithImpl<ErorrVerfycode>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErorrVerfycode &&
            (identical(other.erorr, erorr) || other.erorr == erorr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, erorr);

  @override
  String toString() {
    return 'VerfyCodeState.erorrVerfycode(erorr: $erorr)';
  }
}

/// @nodoc
abstract mixin class $ErorrVerfycodeCopyWith<$Res>
    implements $VerfyCodeStateCopyWith<$Res> {
  factory $ErorrVerfycodeCopyWith(
          ErorrVerfycode value, $Res Function(ErorrVerfycode) _then) =
      _$ErorrVerfycodeCopyWithImpl;
  @useResult
  $Res call({String erorr});
}

/// @nodoc
class _$ErorrVerfycodeCopyWithImpl<$Res>
    implements $ErorrVerfycodeCopyWith<$Res> {
  _$ErorrVerfycodeCopyWithImpl(this._self, this._then);

  final ErorrVerfycode _self;
  final $Res Function(ErorrVerfycode) _then;

  /// Create a copy of VerfyCodeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? erorr = null,
  }) {
    return _then(ErorrVerfycode(
      erorr: null == erorr
          ? _self.erorr
          : erorr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class LoadingSend implements VerfyCodeState {
  const LoadingSend();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingSend);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'VerfyCodeState.loadingSend()';
  }
}

/// @nodoc

class SuccessSend implements VerfyCodeState {
  const SuccessSend();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SuccessSend);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'VerfyCodeState.successSend()';
  }
}

/// @nodoc

class ErorrSend implements VerfyCodeState {
  const ErorrSend({required this.erorr});

  final String erorr;

  /// Create a copy of VerfyCodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErorrSendCopyWith<ErorrSend> get copyWith =>
      _$ErorrSendCopyWithImpl<ErorrSend>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErorrSend &&
            (identical(other.erorr, erorr) || other.erorr == erorr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, erorr);

  @override
  String toString() {
    return 'VerfyCodeState.erorrSend(erorr: $erorr)';
  }
}

/// @nodoc
abstract mixin class $ErorrSendCopyWith<$Res>
    implements $VerfyCodeStateCopyWith<$Res> {
  factory $ErorrSendCopyWith(ErorrSend value, $Res Function(ErorrSend) _then) =
      _$ErorrSendCopyWithImpl;
  @useResult
  $Res call({String erorr});
}

/// @nodoc
class _$ErorrSendCopyWithImpl<$Res> implements $ErorrSendCopyWith<$Res> {
  _$ErorrSendCopyWithImpl(this._self, this._then);

  final ErorrSend _self;
  final $Res Function(ErorrSend) _then;

  /// Create a copy of VerfyCodeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? erorr = null,
  }) {
    return _then(ErorrSend(
      erorr: null == erorr
          ? _self.erorr
          : erorr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
