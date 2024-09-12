// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offers_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OffersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingoffers,
    required TResult Function(Item1view responseItems) successoffers,
    required TResult Function(String erorr) erroroffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingoffers,
    TResult? Function(Item1view responseItems)? successoffers,
    TResult? Function(String erorr)? erroroffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingoffers,
    TResult Function(Item1view responseItems)? successoffers,
    TResult Function(String erorr)? erroroffers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loadingoffers value) loadingoffers,
    required TResult Function(Successoffers value) successoffers,
    required TResult Function(Erroroffers value) erroroffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loadingoffers value)? loadingoffers,
    TResult? Function(Successoffers value)? successoffers,
    TResult? Function(Erroroffers value)? erroroffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loadingoffers value)? loadingoffers,
    TResult Function(Successoffers value)? successoffers,
    TResult Function(Erroroffers value)? erroroffers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffersStateCopyWith<$Res> {
  factory $OffersStateCopyWith(
          OffersState value, $Res Function(OffersState) then) =
      _$OffersStateCopyWithImpl<$Res, OffersState>;
}

/// @nodoc
class _$OffersStateCopyWithImpl<$Res, $Val extends OffersState>
    implements $OffersStateCopyWith<$Res> {
  _$OffersStateCopyWithImpl(this._value, this._then);

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
    extends _$OffersStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'OffersState.initial()';
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
    required TResult Function() loadingoffers,
    required TResult Function(Item1view responseItems) successoffers,
    required TResult Function(String erorr) erroroffers,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingoffers,
    TResult? Function(Item1view responseItems)? successoffers,
    TResult? Function(String erorr)? erroroffers,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingoffers,
    TResult Function(Item1view responseItems)? successoffers,
    TResult Function(String erorr)? erroroffers,
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
    required TResult Function(Loadingoffers value) loadingoffers,
    required TResult Function(Successoffers value) successoffers,
    required TResult Function(Erroroffers value) erroroffers,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loadingoffers value)? loadingoffers,
    TResult? Function(Successoffers value)? successoffers,
    TResult? Function(Erroroffers value)? erroroffers,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loadingoffers value)? loadingoffers,
    TResult Function(Successoffers value)? successoffers,
    TResult Function(Erroroffers value)? erroroffers,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OffersState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingoffersImplCopyWith<$Res> {
  factory _$$LoadingoffersImplCopyWith(
          _$LoadingoffersImpl value, $Res Function(_$LoadingoffersImpl) then) =
      __$$LoadingoffersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingoffersImplCopyWithImpl<$Res>
    extends _$OffersStateCopyWithImpl<$Res, _$LoadingoffersImpl>
    implements _$$LoadingoffersImplCopyWith<$Res> {
  __$$LoadingoffersImplCopyWithImpl(
      _$LoadingoffersImpl _value, $Res Function(_$LoadingoffersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingoffersImpl implements Loadingoffers {
  const _$LoadingoffersImpl();

  @override
  String toString() {
    return 'OffersState.loadingoffers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingoffersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingoffers,
    required TResult Function(Item1view responseItems) successoffers,
    required TResult Function(String erorr) erroroffers,
  }) {
    return loadingoffers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingoffers,
    TResult? Function(Item1view responseItems)? successoffers,
    TResult? Function(String erorr)? erroroffers,
  }) {
    return loadingoffers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingoffers,
    TResult Function(Item1view responseItems)? successoffers,
    TResult Function(String erorr)? erroroffers,
    required TResult orElse(),
  }) {
    if (loadingoffers != null) {
      return loadingoffers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loadingoffers value) loadingoffers,
    required TResult Function(Successoffers value) successoffers,
    required TResult Function(Erroroffers value) erroroffers,
  }) {
    return loadingoffers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loadingoffers value)? loadingoffers,
    TResult? Function(Successoffers value)? successoffers,
    TResult? Function(Erroroffers value)? erroroffers,
  }) {
    return loadingoffers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loadingoffers value)? loadingoffers,
    TResult Function(Successoffers value)? successoffers,
    TResult Function(Erroroffers value)? erroroffers,
    required TResult orElse(),
  }) {
    if (loadingoffers != null) {
      return loadingoffers(this);
    }
    return orElse();
  }
}

abstract class Loadingoffers implements OffersState {
  const factory Loadingoffers() = _$LoadingoffersImpl;
}

/// @nodoc
abstract class _$$SuccessoffersImplCopyWith<$Res> {
  factory _$$SuccessoffersImplCopyWith(
          _$SuccessoffersImpl value, $Res Function(_$SuccessoffersImpl) then) =
      __$$SuccessoffersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Item1view responseItems});
}

/// @nodoc
class __$$SuccessoffersImplCopyWithImpl<$Res>
    extends _$OffersStateCopyWithImpl<$Res, _$SuccessoffersImpl>
    implements _$$SuccessoffersImplCopyWith<$Res> {
  __$$SuccessoffersImplCopyWithImpl(
      _$SuccessoffersImpl _value, $Res Function(_$SuccessoffersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseItems = null,
  }) {
    return _then(_$SuccessoffersImpl(
      responseItems: null == responseItems
          ? _value.responseItems
          : responseItems // ignore: cast_nullable_to_non_nullable
              as Item1view,
    ));
  }
}

/// @nodoc

class _$SuccessoffersImpl implements Successoffers {
  const _$SuccessoffersImpl({required this.responseItems});

  @override
  final Item1view responseItems;

  @override
  String toString() {
    return 'OffersState.successoffers(responseItems: $responseItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessoffersImpl &&
            (identical(other.responseItems, responseItems) ||
                other.responseItems == responseItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, responseItems);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessoffersImplCopyWith<_$SuccessoffersImpl> get copyWith =>
      __$$SuccessoffersImplCopyWithImpl<_$SuccessoffersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingoffers,
    required TResult Function(Item1view responseItems) successoffers,
    required TResult Function(String erorr) erroroffers,
  }) {
    return successoffers(responseItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingoffers,
    TResult? Function(Item1view responseItems)? successoffers,
    TResult? Function(String erorr)? erroroffers,
  }) {
    return successoffers?.call(responseItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingoffers,
    TResult Function(Item1view responseItems)? successoffers,
    TResult Function(String erorr)? erroroffers,
    required TResult orElse(),
  }) {
    if (successoffers != null) {
      return successoffers(responseItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loadingoffers value) loadingoffers,
    required TResult Function(Successoffers value) successoffers,
    required TResult Function(Erroroffers value) erroroffers,
  }) {
    return successoffers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loadingoffers value)? loadingoffers,
    TResult? Function(Successoffers value)? successoffers,
    TResult? Function(Erroroffers value)? erroroffers,
  }) {
    return successoffers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loadingoffers value)? loadingoffers,
    TResult Function(Successoffers value)? successoffers,
    TResult Function(Erroroffers value)? erroroffers,
    required TResult orElse(),
  }) {
    if (successoffers != null) {
      return successoffers(this);
    }
    return orElse();
  }
}

abstract class Successoffers implements OffersState {
  const factory Successoffers({required final Item1view responseItems}) =
      _$SuccessoffersImpl;

  Item1view get responseItems;
  @JsonKey(ignore: true)
  _$$SuccessoffersImplCopyWith<_$SuccessoffersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErroroffersImplCopyWith<$Res> {
  factory _$$ErroroffersImplCopyWith(
          _$ErroroffersImpl value, $Res Function(_$ErroroffersImpl) then) =
      __$$ErroroffersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String erorr});
}

/// @nodoc
class __$$ErroroffersImplCopyWithImpl<$Res>
    extends _$OffersStateCopyWithImpl<$Res, _$ErroroffersImpl>
    implements _$$ErroroffersImplCopyWith<$Res> {
  __$$ErroroffersImplCopyWithImpl(
      _$ErroroffersImpl _value, $Res Function(_$ErroroffersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? erorr = null,
  }) {
    return _then(_$ErroroffersImpl(
      erorr: null == erorr
          ? _value.erorr
          : erorr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErroroffersImpl implements Erroroffers {
  const _$ErroroffersImpl({required this.erorr});

  @override
  final String erorr;

  @override
  String toString() {
    return 'OffersState.erroroffers(erorr: $erorr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErroroffersImpl &&
            (identical(other.erorr, erorr) || other.erorr == erorr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, erorr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErroroffersImplCopyWith<_$ErroroffersImpl> get copyWith =>
      __$$ErroroffersImplCopyWithImpl<_$ErroroffersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingoffers,
    required TResult Function(Item1view responseItems) successoffers,
    required TResult Function(String erorr) erroroffers,
  }) {
    return erroroffers(erorr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingoffers,
    TResult? Function(Item1view responseItems)? successoffers,
    TResult? Function(String erorr)? erroroffers,
  }) {
    return erroroffers?.call(erorr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingoffers,
    TResult Function(Item1view responseItems)? successoffers,
    TResult Function(String erorr)? erroroffers,
    required TResult orElse(),
  }) {
    if (erroroffers != null) {
      return erroroffers(erorr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loadingoffers value) loadingoffers,
    required TResult Function(Successoffers value) successoffers,
    required TResult Function(Erroroffers value) erroroffers,
  }) {
    return erroroffers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loadingoffers value)? loadingoffers,
    TResult? Function(Successoffers value)? successoffers,
    TResult? Function(Erroroffers value)? erroroffers,
  }) {
    return erroroffers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loadingoffers value)? loadingoffers,
    TResult Function(Successoffers value)? successoffers,
    TResult Function(Erroroffers value)? erroroffers,
    required TResult orElse(),
  }) {
    if (erroroffers != null) {
      return erroroffers(this);
    }
    return orElse();
  }
}

abstract class Erroroffers implements OffersState {
  const factory Erroroffers({required final String erorr}) = _$ErroroffersImpl;

  String get erorr;
  @JsonKey(ignore: true)
  _$$ErroroffersImplCopyWith<_$ErroroffersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
