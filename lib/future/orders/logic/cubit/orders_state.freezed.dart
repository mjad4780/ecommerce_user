// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrdersState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OrdersState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrdersState()';
  }
}

/// @nodoc
class $OrdersStateCopyWith<$Res> {
  $OrdersStateCopyWith(OrdersState _, $Res Function(OrdersState) __);
}

/// Adds pattern-matching-related methods to [OrdersState].
extension OrdersStatePatterns on OrdersState {
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
    TResult Function(LoadingGet value)? loadingGet,
    TResult Function(SuccessGet value)? successGet,
    TResult Function(ErorrGet value)? erorrGet,
    TResult Function(LoadingDelete value)? loadingDelete,
    TResult Function(Successdelete value)? successdelete,
    TResult Function(Erorrdelete value)? erorrdelete,
    TResult Function(LoadingDetails value)? loadingDetails,
    TResult Function(SuccessDetails value)? successDetails,
    TResult Function(ErorrDetails value)? erorrDetails,
    TResult Function(LoadingPeinding value)? loadingPeinding,
    TResult Function(SuccessPeinding value)? successPeinding,
    TResult Function(ErorrPeinding value)? erorrPeinding,
    TResult Function(UpdateStatus value)? updateStatus,
    TResult Function(UpdatePayment value)? updatePayment,
    TResult Function(UpdateType value)? updateType,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
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
      case Erorrdelete() when erorrdelete != null:
        return erorrdelete(_that);
      case LoadingDetails() when loadingDetails != null:
        return loadingDetails(_that);
      case SuccessDetails() when successDetails != null:
        return successDetails(_that);
      case ErorrDetails() when erorrDetails != null:
        return erorrDetails(_that);
      case LoadingPeinding() when loadingPeinding != null:
        return loadingPeinding(_that);
      case SuccessPeinding() when successPeinding != null:
        return successPeinding(_that);
      case ErorrPeinding() when erorrPeinding != null:
        return erorrPeinding(_that);
      case UpdateStatus() when updateStatus != null:
        return updateStatus(_that);
      case UpdatePayment() when updatePayment != null:
        return updatePayment(_that);
      case UpdateType() when updateType != null:
        return updateType(_that);
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
    required TResult Function(LoadingGet value) loadingGet,
    required TResult Function(SuccessGet value) successGet,
    required TResult Function(ErorrGet value) erorrGet,
    required TResult Function(LoadingDelete value) loadingDelete,
    required TResult Function(Successdelete value) successdelete,
    required TResult Function(Erorrdelete value) erorrdelete,
    required TResult Function(LoadingDetails value) loadingDetails,
    required TResult Function(SuccessDetails value) successDetails,
    required TResult Function(ErorrDetails value) erorrDetails,
    required TResult Function(LoadingPeinding value) loadingPeinding,
    required TResult Function(SuccessPeinding value) successPeinding,
    required TResult Function(ErorrPeinding value) erorrPeinding,
    required TResult Function(UpdateStatus value) updateStatus,
    required TResult Function(UpdatePayment value) updatePayment,
    required TResult Function(UpdateType value) updateType,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
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
      case Erorrdelete():
        return erorrdelete(_that);
      case LoadingDetails():
        return loadingDetails(_that);
      case SuccessDetails():
        return successDetails(_that);
      case ErorrDetails():
        return erorrDetails(_that);
      case LoadingPeinding():
        return loadingPeinding(_that);
      case SuccessPeinding():
        return successPeinding(_that);
      case ErorrPeinding():
        return erorrPeinding(_that);
      case UpdateStatus():
        return updateStatus(_that);
      case UpdatePayment():
        return updatePayment(_that);
      case UpdateType():
        return updateType(_that);
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
    TResult? Function(LoadingGet value)? loadingGet,
    TResult? Function(SuccessGet value)? successGet,
    TResult? Function(ErorrGet value)? erorrGet,
    TResult? Function(LoadingDelete value)? loadingDelete,
    TResult? Function(Successdelete value)? successdelete,
    TResult? Function(Erorrdelete value)? erorrdelete,
    TResult? Function(LoadingDetails value)? loadingDetails,
    TResult? Function(SuccessDetails value)? successDetails,
    TResult? Function(ErorrDetails value)? erorrDetails,
    TResult? Function(LoadingPeinding value)? loadingPeinding,
    TResult? Function(SuccessPeinding value)? successPeinding,
    TResult? Function(ErorrPeinding value)? erorrPeinding,
    TResult? Function(UpdateStatus value)? updateStatus,
    TResult? Function(UpdatePayment value)? updatePayment,
    TResult? Function(UpdateType value)? updateType,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
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
      case Erorrdelete() when erorrdelete != null:
        return erorrdelete(_that);
      case LoadingDetails() when loadingDetails != null:
        return loadingDetails(_that);
      case SuccessDetails() when successDetails != null:
        return successDetails(_that);
      case ErorrDetails() when erorrDetails != null:
        return erorrDetails(_that);
      case LoadingPeinding() when loadingPeinding != null:
        return loadingPeinding(_that);
      case SuccessPeinding() when successPeinding != null:
        return successPeinding(_that);
      case ErorrPeinding() when erorrPeinding != null:
        return erorrPeinding(_that);
      case UpdateStatus() when updateStatus != null:
        return updateStatus(_that);
      case UpdatePayment() when updatePayment != null:
        return updatePayment(_that);
      case UpdateType() when updateType != null:
        return updateType(_that);
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
    TResult Function()? loadingGet,
    TResult Function(ResponseOrders orderResponse)? successGet,
    TResult Function(String erorr)? erorrGet,
    TResult Function()? loadingDelete,
    TResult Function()? successdelete,
    TResult Function(String erorr)? erorrdelete,
    TResult Function()? loadingDetails,
    TResult Function(ResponseDetails responseDetails)? successDetails,
    TResult Function(String erorr)? erorrDetails,
    TResult Function()? loadingPeinding,
    TResult Function(PendingResponse pendingResponse)? successPeinding,
    TResult Function(String erorr)? erorrPeinding,
    TResult Function()? updateStatus,
    TResult Function()? updatePayment,
    TResult Function()? updateType,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case LoadingGet() when loadingGet != null:
        return loadingGet();
      case SuccessGet() when successGet != null:
        return successGet(_that.orderResponse);
      case ErorrGet() when erorrGet != null:
        return erorrGet(_that.erorr);
      case LoadingDelete() when loadingDelete != null:
        return loadingDelete();
      case Successdelete() when successdelete != null:
        return successdelete();
      case Erorrdelete() when erorrdelete != null:
        return erorrdelete(_that.erorr);
      case LoadingDetails() when loadingDetails != null:
        return loadingDetails();
      case SuccessDetails() when successDetails != null:
        return successDetails(_that.responseDetails);
      case ErorrDetails() when erorrDetails != null:
        return erorrDetails(_that.erorr);
      case LoadingPeinding() when loadingPeinding != null:
        return loadingPeinding();
      case SuccessPeinding() when successPeinding != null:
        return successPeinding(_that.pendingResponse);
      case ErorrPeinding() when erorrPeinding != null:
        return erorrPeinding(_that.erorr);
      case UpdateStatus() when updateStatus != null:
        return updateStatus();
      case UpdatePayment() when updatePayment != null:
        return updatePayment();
      case UpdateType() when updateType != null:
        return updateType();
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
    required TResult Function() loadingGet,
    required TResult Function(ResponseOrders orderResponse) successGet,
    required TResult Function(String erorr) erorrGet,
    required TResult Function() loadingDelete,
    required TResult Function() successdelete,
    required TResult Function(String erorr) erorrdelete,
    required TResult Function() loadingDetails,
    required TResult Function(ResponseDetails responseDetails) successDetails,
    required TResult Function(String erorr) erorrDetails,
    required TResult Function() loadingPeinding,
    required TResult Function(PendingResponse pendingResponse) successPeinding,
    required TResult Function(String erorr) erorrPeinding,
    required TResult Function() updateStatus,
    required TResult Function() updatePayment,
    required TResult Function() updateType,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case LoadingGet():
        return loadingGet();
      case SuccessGet():
        return successGet(_that.orderResponse);
      case ErorrGet():
        return erorrGet(_that.erorr);
      case LoadingDelete():
        return loadingDelete();
      case Successdelete():
        return successdelete();
      case Erorrdelete():
        return erorrdelete(_that.erorr);
      case LoadingDetails():
        return loadingDetails();
      case SuccessDetails():
        return successDetails(_that.responseDetails);
      case ErorrDetails():
        return erorrDetails(_that.erorr);
      case LoadingPeinding():
        return loadingPeinding();
      case SuccessPeinding():
        return successPeinding(_that.pendingResponse);
      case ErorrPeinding():
        return erorrPeinding(_that.erorr);
      case UpdateStatus():
        return updateStatus();
      case UpdatePayment():
        return updatePayment();
      case UpdateType():
        return updateType();
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
    TResult? Function()? loadingGet,
    TResult? Function(ResponseOrders orderResponse)? successGet,
    TResult? Function(String erorr)? erorrGet,
    TResult? Function()? loadingDelete,
    TResult? Function()? successdelete,
    TResult? Function(String erorr)? erorrdelete,
    TResult? Function()? loadingDetails,
    TResult? Function(ResponseDetails responseDetails)? successDetails,
    TResult? Function(String erorr)? erorrDetails,
    TResult? Function()? loadingPeinding,
    TResult? Function(PendingResponse pendingResponse)? successPeinding,
    TResult? Function(String erorr)? erorrPeinding,
    TResult? Function()? updateStatus,
    TResult? Function()? updatePayment,
    TResult? Function()? updateType,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case LoadingGet() when loadingGet != null:
        return loadingGet();
      case SuccessGet() when successGet != null:
        return successGet(_that.orderResponse);
      case ErorrGet() when erorrGet != null:
        return erorrGet(_that.erorr);
      case LoadingDelete() when loadingDelete != null:
        return loadingDelete();
      case Successdelete() when successdelete != null:
        return successdelete();
      case Erorrdelete() when erorrdelete != null:
        return erorrdelete(_that.erorr);
      case LoadingDetails() when loadingDetails != null:
        return loadingDetails();
      case SuccessDetails() when successDetails != null:
        return successDetails(_that.responseDetails);
      case ErorrDetails() when erorrDetails != null:
        return erorrDetails(_that.erorr);
      case LoadingPeinding() when loadingPeinding != null:
        return loadingPeinding();
      case SuccessPeinding() when successPeinding != null:
        return successPeinding(_that.pendingResponse);
      case ErorrPeinding() when erorrPeinding != null:
        return erorrPeinding(_that.erorr);
      case UpdateStatus() when updateStatus != null:
        return updateStatus();
      case UpdatePayment() when updatePayment != null:
        return updatePayment();
      case UpdateType() when updateType != null:
        return updateType();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements OrdersState {
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
    return 'OrdersState.initial()';
  }
}

/// @nodoc

class LoadingGet implements OrdersState {
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
    return 'OrdersState.loadingGet()';
  }
}

/// @nodoc

class SuccessGet implements OrdersState {
  const SuccessGet(this.orderResponse);

  final ResponseOrders orderResponse;

  /// Create a copy of OrdersState
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
            (identical(other.orderResponse, orderResponse) ||
                other.orderResponse == orderResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderResponse);

  @override
  String toString() {
    return 'OrdersState.successGet(orderResponse: $orderResponse)';
  }
}

/// @nodoc
abstract mixin class $SuccessGetCopyWith<$Res>
    implements $OrdersStateCopyWith<$Res> {
  factory $SuccessGetCopyWith(
          SuccessGet value, $Res Function(SuccessGet) _then) =
      _$SuccessGetCopyWithImpl;
  @useResult
  $Res call({ResponseOrders orderResponse});
}

/// @nodoc
class _$SuccessGetCopyWithImpl<$Res> implements $SuccessGetCopyWith<$Res> {
  _$SuccessGetCopyWithImpl(this._self, this._then);

  final SuccessGet _self;
  final $Res Function(SuccessGet) _then;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderResponse = null,
  }) {
    return _then(SuccessGet(
      null == orderResponse
          ? _self.orderResponse
          : orderResponse // ignore: cast_nullable_to_non_nullable
              as ResponseOrders,
    ));
  }
}

/// @nodoc

class ErorrGet implements OrdersState {
  const ErorrGet({required this.erorr});

  final String erorr;

  /// Create a copy of OrdersState
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
    return 'OrdersState.erorrGet(erorr: $erorr)';
  }
}

/// @nodoc
abstract mixin class $ErorrGetCopyWith<$Res>
    implements $OrdersStateCopyWith<$Res> {
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

  /// Create a copy of OrdersState
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

class LoadingDelete implements OrdersState {
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
    return 'OrdersState.loadingDelete()';
  }
}

/// @nodoc

class Successdelete implements OrdersState {
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
    return 'OrdersState.successdelete()';
  }
}

/// @nodoc

class Erorrdelete implements OrdersState {
  const Erorrdelete({required this.erorr});

  final String erorr;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErorrdeleteCopyWith<Erorrdelete> get copyWith =>
      _$ErorrdeleteCopyWithImpl<Erorrdelete>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Erorrdelete &&
            (identical(other.erorr, erorr) || other.erorr == erorr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, erorr);

  @override
  String toString() {
    return 'OrdersState.erorrdelete(erorr: $erorr)';
  }
}

/// @nodoc
abstract mixin class $ErorrdeleteCopyWith<$Res>
    implements $OrdersStateCopyWith<$Res> {
  factory $ErorrdeleteCopyWith(
          Erorrdelete value, $Res Function(Erorrdelete) _then) =
      _$ErorrdeleteCopyWithImpl;
  @useResult
  $Res call({String erorr});
}

/// @nodoc
class _$ErorrdeleteCopyWithImpl<$Res> implements $ErorrdeleteCopyWith<$Res> {
  _$ErorrdeleteCopyWithImpl(this._self, this._then);

  final Erorrdelete _self;
  final $Res Function(Erorrdelete) _then;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? erorr = null,
  }) {
    return _then(Erorrdelete(
      erorr: null == erorr
          ? _self.erorr
          : erorr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class LoadingDetails implements OrdersState {
  const LoadingDetails();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingDetails);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrdersState.loadingDetails()';
  }
}

/// @nodoc

class SuccessDetails implements OrdersState {
  const SuccessDetails({required this.responseDetails});

  final ResponseDetails responseDetails;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SuccessDetailsCopyWith<SuccessDetails> get copyWith =>
      _$SuccessDetailsCopyWithImpl<SuccessDetails>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SuccessDetails &&
            (identical(other.responseDetails, responseDetails) ||
                other.responseDetails == responseDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, responseDetails);

  @override
  String toString() {
    return 'OrdersState.successDetails(responseDetails: $responseDetails)';
  }
}

/// @nodoc
abstract mixin class $SuccessDetailsCopyWith<$Res>
    implements $OrdersStateCopyWith<$Res> {
  factory $SuccessDetailsCopyWith(
          SuccessDetails value, $Res Function(SuccessDetails) _then) =
      _$SuccessDetailsCopyWithImpl;
  @useResult
  $Res call({ResponseDetails responseDetails});
}

/// @nodoc
class _$SuccessDetailsCopyWithImpl<$Res>
    implements $SuccessDetailsCopyWith<$Res> {
  _$SuccessDetailsCopyWithImpl(this._self, this._then);

  final SuccessDetails _self;
  final $Res Function(SuccessDetails) _then;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? responseDetails = null,
  }) {
    return _then(SuccessDetails(
      responseDetails: null == responseDetails
          ? _self.responseDetails
          : responseDetails // ignore: cast_nullable_to_non_nullable
              as ResponseDetails,
    ));
  }
}

/// @nodoc

class ErorrDetails implements OrdersState {
  const ErorrDetails({required this.erorr});

  final String erorr;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErorrDetailsCopyWith<ErorrDetails> get copyWith =>
      _$ErorrDetailsCopyWithImpl<ErorrDetails>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErorrDetails &&
            (identical(other.erorr, erorr) || other.erorr == erorr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, erorr);

  @override
  String toString() {
    return 'OrdersState.erorrDetails(erorr: $erorr)';
  }
}

/// @nodoc
abstract mixin class $ErorrDetailsCopyWith<$Res>
    implements $OrdersStateCopyWith<$Res> {
  factory $ErorrDetailsCopyWith(
          ErorrDetails value, $Res Function(ErorrDetails) _then) =
      _$ErorrDetailsCopyWithImpl;
  @useResult
  $Res call({String erorr});
}

/// @nodoc
class _$ErorrDetailsCopyWithImpl<$Res> implements $ErorrDetailsCopyWith<$Res> {
  _$ErorrDetailsCopyWithImpl(this._self, this._then);

  final ErorrDetails _self;
  final $Res Function(ErorrDetails) _then;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? erorr = null,
  }) {
    return _then(ErorrDetails(
      erorr: null == erorr
          ? _self.erorr
          : erorr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class LoadingPeinding implements OrdersState {
  const LoadingPeinding();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingPeinding);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrdersState.loadingPeinding()';
  }
}

/// @nodoc

class SuccessPeinding implements OrdersState {
  const SuccessPeinding(this.pendingResponse);

  final PendingResponse pendingResponse;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SuccessPeindingCopyWith<SuccessPeinding> get copyWith =>
      _$SuccessPeindingCopyWithImpl<SuccessPeinding>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SuccessPeinding &&
            (identical(other.pendingResponse, pendingResponse) ||
                other.pendingResponse == pendingResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pendingResponse);

  @override
  String toString() {
    return 'OrdersState.successPeinding(pendingResponse: $pendingResponse)';
  }
}

/// @nodoc
abstract mixin class $SuccessPeindingCopyWith<$Res>
    implements $OrdersStateCopyWith<$Res> {
  factory $SuccessPeindingCopyWith(
          SuccessPeinding value, $Res Function(SuccessPeinding) _then) =
      _$SuccessPeindingCopyWithImpl;
  @useResult
  $Res call({PendingResponse pendingResponse});
}

/// @nodoc
class _$SuccessPeindingCopyWithImpl<$Res>
    implements $SuccessPeindingCopyWith<$Res> {
  _$SuccessPeindingCopyWithImpl(this._self, this._then);

  final SuccessPeinding _self;
  final $Res Function(SuccessPeinding) _then;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pendingResponse = null,
  }) {
    return _then(SuccessPeinding(
      null == pendingResponse
          ? _self.pendingResponse
          : pendingResponse // ignore: cast_nullable_to_non_nullable
              as PendingResponse,
    ));
  }
}

/// @nodoc

class ErorrPeinding implements OrdersState {
  const ErorrPeinding({required this.erorr});

  final String erorr;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErorrPeindingCopyWith<ErorrPeinding> get copyWith =>
      _$ErorrPeindingCopyWithImpl<ErorrPeinding>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErorrPeinding &&
            (identical(other.erorr, erorr) || other.erorr == erorr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, erorr);

  @override
  String toString() {
    return 'OrdersState.erorrPeinding(erorr: $erorr)';
  }
}

/// @nodoc
abstract mixin class $ErorrPeindingCopyWith<$Res>
    implements $OrdersStateCopyWith<$Res> {
  factory $ErorrPeindingCopyWith(
          ErorrPeinding value, $Res Function(ErorrPeinding) _then) =
      _$ErorrPeindingCopyWithImpl;
  @useResult
  $Res call({String erorr});
}

/// @nodoc
class _$ErorrPeindingCopyWithImpl<$Res>
    implements $ErorrPeindingCopyWith<$Res> {
  _$ErorrPeindingCopyWithImpl(this._self, this._then);

  final ErorrPeinding _self;
  final $Res Function(ErorrPeinding) _then;

  /// Create a copy of OrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? erorr = null,
  }) {
    return _then(ErorrPeinding(
      erorr: null == erorr
          ? _self.erorr
          : erorr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class UpdateStatus implements OrdersState {
  const UpdateStatus();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrdersState.updateStatus()';
  }
}

/// @nodoc

class UpdatePayment implements OrdersState {
  const UpdatePayment();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdatePayment);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrdersState.updatePayment()';
  }
}

/// @nodoc

class UpdateType implements OrdersState {
  const UpdateType();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateType);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrdersState.updateType()';
  }
}

// dart format on
