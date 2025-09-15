// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_categories_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemCategoriesState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ItemCategoriesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ItemCategoriesState()';
  }
}

/// @nodoc
class $ItemCategoriesStateCopyWith<$Res> {
  $ItemCategoriesStateCopyWith(
      ItemCategoriesState _, $Res Function(ItemCategoriesState) __);
}

/// Adds pattern-matching-related methods to [ItemCategoriesState].
extension ItemCategoriesStatePatterns on ItemCategoriesState {
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
    TResult Function(SelectCategories value)? selectCategories,
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
      case SelectCategories() when selectCategories != null:
        return selectCategories(_that);
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
    required TResult Function(SelectCategories value) selectCategories,
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
      case SelectCategories():
        return selectCategories(_that);
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
    TResult? Function(SelectCategories value)? selectCategories,
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
      case SelectCategories() when selectCategories != null:
        return selectCategories(_that);
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
    TResult Function(Item1view responseItems)? success,
    TResult Function(String erorr)? erorr,
    TResult Function(Category categories)? selectCategories,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case Loading() when loading != null:
        return loading();
      case Success() when success != null:
        return success(_that.responseItems);
      case Erorr() when erorr != null:
        return erorr(_that.erorr);
      case SelectCategories() when selectCategories != null:
        return selectCategories(_that.categories);
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
    required TResult Function(Item1view responseItems) success,
    required TResult Function(String erorr) erorr,
    required TResult Function(Category categories) selectCategories,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case Loading():
        return loading();
      case Success():
        return success(_that.responseItems);
      case Erorr():
        return erorr(_that.erorr);
      case SelectCategories():
        return selectCategories(_that.categories);
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
    TResult? Function(Item1view responseItems)? success,
    TResult? Function(String erorr)? erorr,
    TResult? Function(Category categories)? selectCategories,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case Loading() when loading != null:
        return loading();
      case Success() when success != null:
        return success(_that.responseItems);
      case Erorr() when erorr != null:
        return erorr(_that.erorr);
      case SelectCategories() when selectCategories != null:
        return selectCategories(_that.categories);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements ItemCategoriesState {
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
    return 'ItemCategoriesState.initial()';
  }
}

/// @nodoc

class Loading implements ItemCategoriesState {
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
    return 'ItemCategoriesState.loading()';
  }
}

/// @nodoc

class Success implements ItemCategoriesState {
  const Success({required this.responseItems});

  final Item1view responseItems;

  /// Create a copy of ItemCategoriesState
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
            (identical(other.responseItems, responseItems) ||
                other.responseItems == responseItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, responseItems);

  @override
  String toString() {
    return 'ItemCategoriesState.success(responseItems: $responseItems)';
  }
}

/// @nodoc
abstract mixin class $SuccessCopyWith<$Res>
    implements $ItemCategoriesStateCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) _then) =
      _$SuccessCopyWithImpl;
  @useResult
  $Res call({Item1view responseItems});
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res> implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success _self;
  final $Res Function(Success) _then;

  /// Create a copy of ItemCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? responseItems = null,
  }) {
    return _then(Success(
      responseItems: null == responseItems
          ? _self.responseItems
          : responseItems // ignore: cast_nullable_to_non_nullable
              as Item1view,
    ));
  }
}

/// @nodoc

class Erorr implements ItemCategoriesState {
  const Erorr({required this.erorr});

  final String erorr;

  /// Create a copy of ItemCategoriesState
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
    return 'ItemCategoriesState.erorr(erorr: $erorr)';
  }
}

/// @nodoc
abstract mixin class $ErorrCopyWith<$Res>
    implements $ItemCategoriesStateCopyWith<$Res> {
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

  /// Create a copy of ItemCategoriesState
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

class SelectCategories implements ItemCategoriesState {
  const SelectCategories({required this.categories});

  final Category categories;

  /// Create a copy of ItemCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SelectCategoriesCopyWith<SelectCategories> get copyWith =>
      _$SelectCategoriesCopyWithImpl<SelectCategories>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SelectCategories &&
            (identical(other.categories, categories) ||
                other.categories == categories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categories);

  @override
  String toString() {
    return 'ItemCategoriesState.selectCategories(categories: $categories)';
  }
}

/// @nodoc
abstract mixin class $SelectCategoriesCopyWith<$Res>
    implements $ItemCategoriesStateCopyWith<$Res> {
  factory $SelectCategoriesCopyWith(
          SelectCategories value, $Res Function(SelectCategories) _then) =
      _$SelectCategoriesCopyWithImpl;
  @useResult
  $Res call({Category categories});
}

/// @nodoc
class _$SelectCategoriesCopyWithImpl<$Res>
    implements $SelectCategoriesCopyWith<$Res> {
  _$SelectCategoriesCopyWithImpl(this._self, this._then);

  final SelectCategories _self;
  final $Res Function(SelectCategories) _then;

  /// Create a copy of ItemCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? categories = null,
  }) {
    return _then(SelectCategories(
      categories: null == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }
}

// dart format on
