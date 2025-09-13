// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adress_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdressState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AdressState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AdressState()';
  }
}

/// @nodoc
class $AdressStateCopyWith<$Res> {
  $AdressStateCopyWith(AdressState _, $Res Function(AdressState) __);
}

/// Adds pattern-matching-related methods to [AdressState].
extension AdressStatePatterns on AdressState {
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
    TResult Function(ErrorGet value)? errorget,
    TResult Function(LoadingEdit value)? loadingedit,
    TResult Function(SuccessEdit value)? successedit,
    TResult Function(ErrorEdit value)? erroredit,
    TResult Function(Loadingdelete value)? loadingdelete,
    TResult Function(Successdelete value)? successdelete,
    TResult Function(Errordelete value)? errordelete,
    TResult Function(LoadingMaps value)? loadingMaps,
    TResult Function(SuccessMaps value)? successMaps,
    TResult Function(AddMarker value)? addMarker,
    TResult Function(PushEdit value)? pushEdit,
    TResult Function(UpdateLatlng value)? updateLatlng,
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
      case ErrorGet() when errorget != null:
        return errorget(_that);
      case LoadingEdit() when loadingedit != null:
        return loadingedit(_that);
      case SuccessEdit() when successedit != null:
        return successedit(_that);
      case ErrorEdit() when erroredit != null:
        return erroredit(_that);
      case Loadingdelete() when loadingdelete != null:
        return loadingdelete(_that);
      case Successdelete() when successdelete != null:
        return successdelete(_that);
      case Errordelete() when errordelete != null:
        return errordelete(_that);
      case LoadingMaps() when loadingMaps != null:
        return loadingMaps(_that);
      case SuccessMaps() when successMaps != null:
        return successMaps(_that);
      case AddMarker() when addMarker != null:
        return addMarker(_that);
      case PushEdit() when pushEdit != null:
        return pushEdit(_that);
      case UpdateLatlng() when updateLatlng != null:
        return updateLatlng(_that);
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
    required TResult Function(ErrorGet value) errorget,
    required TResult Function(LoadingEdit value) loadingedit,
    required TResult Function(SuccessEdit value) successedit,
    required TResult Function(ErrorEdit value) erroredit,
    required TResult Function(Loadingdelete value) loadingdelete,
    required TResult Function(Successdelete value) successdelete,
    required TResult Function(Errordelete value) errordelete,
    required TResult Function(LoadingMaps value) loadingMaps,
    required TResult Function(SuccessMaps value) successMaps,
    required TResult Function(AddMarker value) addMarker,
    required TResult Function(PushEdit value) pushEdit,
    required TResult Function(UpdateLatlng value) updateLatlng,
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
      case ErrorGet():
        return errorget(_that);
      case LoadingEdit():
        return loadingedit(_that);
      case SuccessEdit():
        return successedit(_that);
      case ErrorEdit():
        return erroredit(_that);
      case Loadingdelete():
        return loadingdelete(_that);
      case Successdelete():
        return successdelete(_that);
      case Errordelete():
        return errordelete(_that);
      case LoadingMaps():
        return loadingMaps(_that);
      case SuccessMaps():
        return successMaps(_that);
      case AddMarker():
        return addMarker(_that);
      case PushEdit():
        return pushEdit(_that);
      case UpdateLatlng():
        return updateLatlng(_that);
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
    TResult? Function(ErrorGet value)? errorget,
    TResult? Function(LoadingEdit value)? loadingedit,
    TResult? Function(SuccessEdit value)? successedit,
    TResult? Function(ErrorEdit value)? erroredit,
    TResult? Function(Loadingdelete value)? loadingdelete,
    TResult? Function(Successdelete value)? successdelete,
    TResult? Function(Errordelete value)? errordelete,
    TResult? Function(LoadingMaps value)? loadingMaps,
    TResult? Function(SuccessMaps value)? successMaps,
    TResult? Function(AddMarker value)? addMarker,
    TResult? Function(PushEdit value)? pushEdit,
    TResult? Function(UpdateLatlng value)? updateLatlng,
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
      case ErrorGet() when errorget != null:
        return errorget(_that);
      case LoadingEdit() when loadingedit != null:
        return loadingedit(_that);
      case SuccessEdit() when successedit != null:
        return successedit(_that);
      case ErrorEdit() when erroredit != null:
        return erroredit(_that);
      case Loadingdelete() when loadingdelete != null:
        return loadingdelete(_that);
      case Successdelete() when successdelete != null:
        return successdelete(_that);
      case Errordelete() when errordelete != null:
        return errordelete(_that);
      case LoadingMaps() when loadingMaps != null:
        return loadingMaps(_that);
      case SuccessMaps() when successMaps != null:
        return successMaps(_that);
      case AddMarker() when addMarker != null:
        return addMarker(_that);
      case PushEdit() when pushEdit != null:
        return pushEdit(_that);
      case UpdateLatlng() when updateLatlng != null:
        return updateLatlng(_that);
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
    TResult Function(AdressResponse adressResponse)? successGet,
    TResult Function(String erorr)? errorget,
    TResult Function()? loadingedit,
    TResult Function()? successedit,
    TResult Function(String erorr)? erroredit,
    TResult Function()? loadingdelete,
    TResult Function()? successdelete,
    TResult Function(String erorr)? errordelete,
    TResult Function()? loadingMaps,
    TResult Function()? successMaps,
    TResult Function(List<Marker> markers)? addMarker,
    TResult Function()? pushEdit,
    TResult Function()? updateLatlng,
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
        return successGet(_that.adressResponse);
      case ErrorGet() when errorget != null:
        return errorget(_that.erorr);
      case LoadingEdit() when loadingedit != null:
        return loadingedit();
      case SuccessEdit() when successedit != null:
        return successedit();
      case ErrorEdit() when erroredit != null:
        return erroredit(_that.erorr);
      case Loadingdelete() when loadingdelete != null:
        return loadingdelete();
      case Successdelete() when successdelete != null:
        return successdelete();
      case Errordelete() when errordelete != null:
        return errordelete(_that.erorr);
      case LoadingMaps() when loadingMaps != null:
        return loadingMaps();
      case SuccessMaps() when successMaps != null:
        return successMaps();
      case AddMarker() when addMarker != null:
        return addMarker(_that.markers);
      case PushEdit() when pushEdit != null:
        return pushEdit();
      case UpdateLatlng() when updateLatlng != null:
        return updateLatlng();
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
    required TResult Function(AdressResponse adressResponse) successGet,
    required TResult Function(String erorr) errorget,
    required TResult Function() loadingedit,
    required TResult Function() successedit,
    required TResult Function(String erorr) erroredit,
    required TResult Function() loadingdelete,
    required TResult Function() successdelete,
    required TResult Function(String erorr) errordelete,
    required TResult Function() loadingMaps,
    required TResult Function() successMaps,
    required TResult Function(List<Marker> markers) addMarker,
    required TResult Function() pushEdit,
    required TResult Function() updateLatlng,
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
        return successGet(_that.adressResponse);
      case ErrorGet():
        return errorget(_that.erorr);
      case LoadingEdit():
        return loadingedit();
      case SuccessEdit():
        return successedit();
      case ErrorEdit():
        return erroredit(_that.erorr);
      case Loadingdelete():
        return loadingdelete();
      case Successdelete():
        return successdelete();
      case Errordelete():
        return errordelete(_that.erorr);
      case LoadingMaps():
        return loadingMaps();
      case SuccessMaps():
        return successMaps();
      case AddMarker():
        return addMarker(_that.markers);
      case PushEdit():
        return pushEdit();
      case UpdateLatlng():
        return updateLatlng();
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
    TResult? Function(AdressResponse adressResponse)? successGet,
    TResult? Function(String erorr)? errorget,
    TResult? Function()? loadingedit,
    TResult? Function()? successedit,
    TResult? Function(String erorr)? erroredit,
    TResult? Function()? loadingdelete,
    TResult? Function()? successdelete,
    TResult? Function(String erorr)? errordelete,
    TResult? Function()? loadingMaps,
    TResult? Function()? successMaps,
    TResult? Function(List<Marker> markers)? addMarker,
    TResult? Function()? pushEdit,
    TResult? Function()? updateLatlng,
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
        return successGet(_that.adressResponse);
      case ErrorGet() when errorget != null:
        return errorget(_that.erorr);
      case LoadingEdit() when loadingedit != null:
        return loadingedit();
      case SuccessEdit() when successedit != null:
        return successedit();
      case ErrorEdit() when erroredit != null:
        return erroredit(_that.erorr);
      case Loadingdelete() when loadingdelete != null:
        return loadingdelete();
      case Successdelete() when successdelete != null:
        return successdelete();
      case Errordelete() when errordelete != null:
        return errordelete(_that.erorr);
      case LoadingMaps() when loadingMaps != null:
        return loadingMaps();
      case SuccessMaps() when successMaps != null:
        return successMaps();
      case AddMarker() when addMarker != null:
        return addMarker(_that.markers);
      case PushEdit() when pushEdit != null:
        return pushEdit();
      case UpdateLatlng() when updateLatlng != null:
        return updateLatlng();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements AdressState {
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
    return 'AdressState.initial()';
  }
}

/// @nodoc

class LoadingAdd implements AdressState {
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
    return 'AdressState.loadingAdd()';
  }
}

/// @nodoc

class SuccessAdd implements AdressState {
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
    return 'AdressState.successAdd()';
  }
}

/// @nodoc

class ErrorAdd implements AdressState {
  const ErrorAdd({required this.erorr});

  final String erorr;

  /// Create a copy of AdressState
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
    return 'AdressState.errorAdd(erorr: $erorr)';
  }
}

/// @nodoc
abstract mixin class $ErrorAddCopyWith<$Res>
    implements $AdressStateCopyWith<$Res> {
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

  /// Create a copy of AdressState
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

class LoadingGet implements AdressState {
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
    return 'AdressState.loadingGet()';
  }
}

/// @nodoc

class SuccessGet implements AdressState {
  const SuccessGet({required this.adressResponse});

  final AdressResponse adressResponse;

  /// Create a copy of AdressState
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
            (identical(other.adressResponse, adressResponse) ||
                other.adressResponse == adressResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, adressResponse);

  @override
  String toString() {
    return 'AdressState.successGet(adressResponse: $adressResponse)';
  }
}

/// @nodoc
abstract mixin class $SuccessGetCopyWith<$Res>
    implements $AdressStateCopyWith<$Res> {
  factory $SuccessGetCopyWith(
          SuccessGet value, $Res Function(SuccessGet) _then) =
      _$SuccessGetCopyWithImpl;
  @useResult
  $Res call({AdressResponse adressResponse});
}

/// @nodoc
class _$SuccessGetCopyWithImpl<$Res> implements $SuccessGetCopyWith<$Res> {
  _$SuccessGetCopyWithImpl(this._self, this._then);

  final SuccessGet _self;
  final $Res Function(SuccessGet) _then;

  /// Create a copy of AdressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? adressResponse = null,
  }) {
    return _then(SuccessGet(
      adressResponse: null == adressResponse
          ? _self.adressResponse
          : adressResponse // ignore: cast_nullable_to_non_nullable
              as AdressResponse,
    ));
  }
}

/// @nodoc

class ErrorGet implements AdressState {
  const ErrorGet({required this.erorr});

  final String erorr;

  /// Create a copy of AdressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErrorGetCopyWith<ErrorGet> get copyWith =>
      _$ErrorGetCopyWithImpl<ErrorGet>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorGet &&
            (identical(other.erorr, erorr) || other.erorr == erorr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, erorr);

  @override
  String toString() {
    return 'AdressState.errorget(erorr: $erorr)';
  }
}

/// @nodoc
abstract mixin class $ErrorGetCopyWith<$Res>
    implements $AdressStateCopyWith<$Res> {
  factory $ErrorGetCopyWith(ErrorGet value, $Res Function(ErrorGet) _then) =
      _$ErrorGetCopyWithImpl;
  @useResult
  $Res call({String erorr});
}

/// @nodoc
class _$ErrorGetCopyWithImpl<$Res> implements $ErrorGetCopyWith<$Res> {
  _$ErrorGetCopyWithImpl(this._self, this._then);

  final ErrorGet _self;
  final $Res Function(ErrorGet) _then;

  /// Create a copy of AdressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? erorr = null,
  }) {
    return _then(ErrorGet(
      erorr: null == erorr
          ? _self.erorr
          : erorr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class LoadingEdit implements AdressState {
  const LoadingEdit();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingEdit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AdressState.loadingedit()';
  }
}

/// @nodoc

class SuccessEdit implements AdressState {
  const SuccessEdit();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SuccessEdit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AdressState.successedit()';
  }
}

/// @nodoc

class ErrorEdit implements AdressState {
  const ErrorEdit({required this.erorr});

  final String erorr;

  /// Create a copy of AdressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErrorEditCopyWith<ErrorEdit> get copyWith =>
      _$ErrorEditCopyWithImpl<ErrorEdit>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorEdit &&
            (identical(other.erorr, erorr) || other.erorr == erorr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, erorr);

  @override
  String toString() {
    return 'AdressState.erroredit(erorr: $erorr)';
  }
}

/// @nodoc
abstract mixin class $ErrorEditCopyWith<$Res>
    implements $AdressStateCopyWith<$Res> {
  factory $ErrorEditCopyWith(ErrorEdit value, $Res Function(ErrorEdit) _then) =
      _$ErrorEditCopyWithImpl;
  @useResult
  $Res call({String erorr});
}

/// @nodoc
class _$ErrorEditCopyWithImpl<$Res> implements $ErrorEditCopyWith<$Res> {
  _$ErrorEditCopyWithImpl(this._self, this._then);

  final ErrorEdit _self;
  final $Res Function(ErrorEdit) _then;

  /// Create a copy of AdressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? erorr = null,
  }) {
    return _then(ErrorEdit(
      erorr: null == erorr
          ? _self.erorr
          : erorr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class Loadingdelete implements AdressState {
  const Loadingdelete();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loadingdelete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AdressState.loadingdelete()';
  }
}

/// @nodoc

class Successdelete implements AdressState {
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
    return 'AdressState.successdelete()';
  }
}

/// @nodoc

class Errordelete implements AdressState {
  const Errordelete({required this.erorr});

  final String erorr;

  /// Create a copy of AdressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErrordeleteCopyWith<Errordelete> get copyWith =>
      _$ErrordeleteCopyWithImpl<Errordelete>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Errordelete &&
            (identical(other.erorr, erorr) || other.erorr == erorr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, erorr);

  @override
  String toString() {
    return 'AdressState.errordelete(erorr: $erorr)';
  }
}

/// @nodoc
abstract mixin class $ErrordeleteCopyWith<$Res>
    implements $AdressStateCopyWith<$Res> {
  factory $ErrordeleteCopyWith(
          Errordelete value, $Res Function(Errordelete) _then) =
      _$ErrordeleteCopyWithImpl;
  @useResult
  $Res call({String erorr});
}

/// @nodoc
class _$ErrordeleteCopyWithImpl<$Res> implements $ErrordeleteCopyWith<$Res> {
  _$ErrordeleteCopyWithImpl(this._self, this._then);

  final Errordelete _self;
  final $Res Function(Errordelete) _then;

  /// Create a copy of AdressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? erorr = null,
  }) {
    return _then(Errordelete(
      erorr: null == erorr
          ? _self.erorr
          : erorr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class LoadingMaps implements AdressState {
  const LoadingMaps();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingMaps);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AdressState.loadingMaps()';
  }
}

/// @nodoc

class SuccessMaps implements AdressState {
  const SuccessMaps();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SuccessMaps);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AdressState.successMaps()';
  }
}

/// @nodoc

class AddMarker implements AdressState {
  const AddMarker({required final List<Marker> markers}) : _markers = markers;

  final List<Marker> _markers;
  List<Marker> get markers {
    if (_markers is EqualUnmodifiableListView) return _markers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_markers);
  }

  /// Create a copy of AdressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddMarkerCopyWith<AddMarker> get copyWith =>
      _$AddMarkerCopyWithImpl<AddMarker>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddMarker &&
            const DeepCollectionEquality().equals(other._markers, _markers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_markers));

  @override
  String toString() {
    return 'AdressState.addMarker(markers: $markers)';
  }
}

/// @nodoc
abstract mixin class $AddMarkerCopyWith<$Res>
    implements $AdressStateCopyWith<$Res> {
  factory $AddMarkerCopyWith(AddMarker value, $Res Function(AddMarker) _then) =
      _$AddMarkerCopyWithImpl;
  @useResult
  $Res call({List<Marker> markers});
}

/// @nodoc
class _$AddMarkerCopyWithImpl<$Res> implements $AddMarkerCopyWith<$Res> {
  _$AddMarkerCopyWithImpl(this._self, this._then);

  final AddMarker _self;
  final $Res Function(AddMarker) _then;

  /// Create a copy of AdressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? markers = null,
  }) {
    return _then(AddMarker(
      markers: null == markers
          ? _self._markers
          : markers // ignore: cast_nullable_to_non_nullable
              as List<Marker>,
    ));
  }
}

/// @nodoc

class PushEdit implements AdressState {
  const PushEdit();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PushEdit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AdressState.pushEdit()';
  }
}

/// @nodoc

class UpdateLatlng implements AdressState {
  const UpdateLatlng();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateLatlng);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AdressState.updateLatlng()';
  }
}

// dart format on
