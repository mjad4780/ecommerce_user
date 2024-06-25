// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() laoding,
    required TResult Function() success,
    required TResult Function(String error) error,
    required TResult Function() obscureText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? laoding,
    TResult? Function()? success,
    TResult? Function(String error)? error,
    TResult? Function()? obscureText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? laoding,
    TResult Function()? success,
    TResult Function(String error)? error,
    TResult Function()? obscureText,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Laoding value) laoding,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(ObscureText value) obscureText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Laoding value)? laoding,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(ObscureText value)? obscureText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Laoding value)? laoding,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(ObscureText value)? obscureText,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SignUpState.initial()';
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
    required TResult Function() laoding,
    required TResult Function() success,
    required TResult Function(String error) error,
    required TResult Function() obscureText,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? laoding,
    TResult? Function()? success,
    TResult? Function(String error)? error,
    TResult? Function()? obscureText,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? laoding,
    TResult Function()? success,
    TResult Function(String error)? error,
    TResult Function()? obscureText,
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
    required TResult Function(Laoding value) laoding,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(ObscureText value) obscureText,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Laoding value)? laoding,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(ObscureText value)? obscureText,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Laoding value)? laoding,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(ObscureText value)? obscureText,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignUpState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LaodingImplCopyWith<$Res> {
  factory _$$LaodingImplCopyWith(
          _$LaodingImpl value, $Res Function(_$LaodingImpl) then) =
      __$$LaodingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LaodingImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$LaodingImpl>
    implements _$$LaodingImplCopyWith<$Res> {
  __$$LaodingImplCopyWithImpl(
      _$LaodingImpl _value, $Res Function(_$LaodingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LaodingImpl implements Laoding {
  const _$LaodingImpl();

  @override
  String toString() {
    return 'SignUpState.laoding()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LaodingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() laoding,
    required TResult Function() success,
    required TResult Function(String error) error,
    required TResult Function() obscureText,
  }) {
    return laoding();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? laoding,
    TResult? Function()? success,
    TResult? Function(String error)? error,
    TResult? Function()? obscureText,
  }) {
    return laoding?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? laoding,
    TResult Function()? success,
    TResult Function(String error)? error,
    TResult Function()? obscureText,
    required TResult orElse(),
  }) {
    if (laoding != null) {
      return laoding();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Laoding value) laoding,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(ObscureText value) obscureText,
  }) {
    return laoding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Laoding value)? laoding,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(ObscureText value)? obscureText,
  }) {
    return laoding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Laoding value)? laoding,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(ObscureText value)? obscureText,
    required TResult orElse(),
  }) {
    if (laoding != null) {
      return laoding(this);
    }
    return orElse();
  }
}

abstract class Laoding implements SignUpState {
  const factory Laoding() = _$LaodingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'SignUpState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() laoding,
    required TResult Function() success,
    required TResult Function(String error) error,
    required TResult Function() obscureText,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? laoding,
    TResult? Function()? success,
    TResult? Function(String error)? error,
    TResult? Function()? obscureText,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? laoding,
    TResult Function()? success,
    TResult Function(String error)? error,
    TResult Function()? obscureText,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Laoding value) laoding,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(ObscureText value) obscureText,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Laoding value)? laoding,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(ObscureText value)? obscureText,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Laoding value)? laoding,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(ObscureText value)? obscureText,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements SignUpState {
  const factory Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'SignUpState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() laoding,
    required TResult Function() success,
    required TResult Function(String error) error,
    required TResult Function() obscureText,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? laoding,
    TResult? Function()? success,
    TResult? Function(String error)? error,
    TResult? Function()? obscureText,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? laoding,
    TResult Function()? success,
    TResult Function(String error)? error,
    TResult Function()? obscureText,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Laoding value) laoding,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(ObscureText value) obscureText,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Laoding value)? laoding,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(ObscureText value)? obscureText,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Laoding value)? laoding,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(ObscureText value)? obscureText,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements SignUpState {
  const factory Error({required final String error}) = _$ErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ObscureTextImplCopyWith<$Res> {
  factory _$$ObscureTextImplCopyWith(
          _$ObscureTextImpl value, $Res Function(_$ObscureTextImpl) then) =
      __$$ObscureTextImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ObscureTextImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$ObscureTextImpl>
    implements _$$ObscureTextImplCopyWith<$Res> {
  __$$ObscureTextImplCopyWithImpl(
      _$ObscureTextImpl _value, $Res Function(_$ObscureTextImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ObscureTextImpl implements ObscureText {
  const _$ObscureTextImpl();

  @override
  String toString() {
    return 'SignUpState.obscureText()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ObscureTextImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() laoding,
    required TResult Function() success,
    required TResult Function(String error) error,
    required TResult Function() obscureText,
  }) {
    return obscureText();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? laoding,
    TResult? Function()? success,
    TResult? Function(String error)? error,
    TResult? Function()? obscureText,
  }) {
    return obscureText?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? laoding,
    TResult Function()? success,
    TResult Function(String error)? error,
    TResult Function()? obscureText,
    required TResult orElse(),
  }) {
    if (obscureText != null) {
      return obscureText();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Laoding value) laoding,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(ObscureText value) obscureText,
  }) {
    return obscureText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Laoding value)? laoding,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(ObscureText value)? obscureText,
  }) {
    return obscureText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Laoding value)? laoding,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(ObscureText value)? obscureText,
    required TResult orElse(),
  }) {
    if (obscureText != null) {
      return obscureText(this);
    }
    return orElse();
  }
}

abstract class ObscureText implements SignUpState {
  const factory ObscureText() = _$ObscureTextImpl;
}
