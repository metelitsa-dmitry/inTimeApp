// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc_add_update_item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddUpdateItemEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet)
        initial,
    required TResult Function(bool isTable) changeIsTable,
    required TResult Function(bool isVerse) changeIsVerse,
    required TResult Function(bool isPicture) changeIsPicture,
    required TResult Function(String text) changeTitle,
    required TResult Function(String numberChip) addNumberChips,
    required TResult Function(String numberChip) removeNumberChips,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet)?
        initial,
    TResult? Function(bool isTable)? changeIsTable,
    TResult? Function(bool isVerse)? changeIsVerse,
    TResult? Function(bool isPicture)? changeIsPicture,
    TResult? Function(String text)? changeTitle,
    TResult? Function(String numberChip)? addNumberChips,
    TResult? Function(String numberChip)? removeNumberChips,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet)?
        initial,
    TResult Function(bool isTable)? changeIsTable,
    TResult Function(bool isVerse)? changeIsVerse,
    TResult Function(bool isPicture)? changeIsPicture,
    TResult Function(String text)? changeTitle,
    TResult Function(String numberChip)? addNumberChips,
    TResult Function(String numberChip)? removeNumberChips,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemInitialEvent value) initial,
    required TResult Function(ItemChangeIsTableEvent value) changeIsTable,
    required TResult Function(ItemChangeIsVerseEvent value) changeIsVerse,
    required TResult Function(ItemChangeIsPictureEvent value) changeIsPicture,
    required TResult Function(ItemChangeTitleEvent value) changeTitle,
    required TResult Function(AddNumberChipsEvent value) addNumberChips,
    required TResult Function(RemoveNumberChipsEvent value) removeNumberChips,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ItemInitialEvent value)? initial,
    TResult? Function(ItemChangeIsTableEvent value)? changeIsTable,
    TResult? Function(ItemChangeIsVerseEvent value)? changeIsVerse,
    TResult? Function(ItemChangeIsPictureEvent value)? changeIsPicture,
    TResult? Function(ItemChangeTitleEvent value)? changeTitle,
    TResult? Function(AddNumberChipsEvent value)? addNumberChips,
    TResult? Function(RemoveNumberChipsEvent value)? removeNumberChips,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemInitialEvent value)? initial,
    TResult Function(ItemChangeIsTableEvent value)? changeIsTable,
    TResult Function(ItemChangeIsVerseEvent value)? changeIsVerse,
    TResult Function(ItemChangeIsPictureEvent value)? changeIsPicture,
    TResult Function(ItemChangeTitleEvent value)? changeTitle,
    TResult Function(AddNumberChipsEvent value)? addNumberChips,
    TResult Function(RemoveNumberChipsEvent value)? removeNumberChips,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUpdateItemEventCopyWith<$Res> {
  factory $AddUpdateItemEventCopyWith(
          AddUpdateItemEvent value, $Res Function(AddUpdateItemEvent) then) =
      _$AddUpdateItemEventCopyWithImpl<$Res, AddUpdateItemEvent>;
}

/// @nodoc
class _$AddUpdateItemEventCopyWithImpl<$Res, $Val extends AddUpdateItemEvent>
    implements $AddUpdateItemEventCopyWith<$Res> {
  _$AddUpdateItemEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ItemInitialEventCopyWith<$Res> {
  factory _$$ItemInitialEventCopyWith(
          _$ItemInitialEvent value, $Res Function(_$ItemInitialEvent) then) =
      __$$ItemInitialEventCopyWithImpl<$Res>;
  @useResult
  $Res call({ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet});

  $ItemOfSetEntityCopyWith<$Res>? get itemOfSet;
  $TimeSetEntityCopyWith<$Res> get timeSet;
}

/// @nodoc
class __$$ItemInitialEventCopyWithImpl<$Res>
    extends _$AddUpdateItemEventCopyWithImpl<$Res, _$ItemInitialEvent>
    implements _$$ItemInitialEventCopyWith<$Res> {
  __$$ItemInitialEventCopyWithImpl(
      _$ItemInitialEvent _value, $Res Function(_$ItemInitialEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemOfSet = freezed,
    Object? timeSet = null,
  }) {
    return _then(_$ItemInitialEvent(
      itemOfSet: freezed == itemOfSet
          ? _value.itemOfSet
          : itemOfSet // ignore: cast_nullable_to_non_nullable
              as ItemOfSetEntity?,
      timeSet: null == timeSet
          ? _value.timeSet
          : timeSet // ignore: cast_nullable_to_non_nullable
              as TimeSetEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemOfSetEntityCopyWith<$Res>? get itemOfSet {
    if (_value.itemOfSet == null) {
      return null;
    }

    return $ItemOfSetEntityCopyWith<$Res>(_value.itemOfSet!, (value) {
      return _then(_value.copyWith(itemOfSet: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeSetEntityCopyWith<$Res> get timeSet {
    return $TimeSetEntityCopyWith<$Res>(_value.timeSet, (value) {
      return _then(_value.copyWith(timeSet: value));
    });
  }
}

/// @nodoc

class _$ItemInitialEvent implements ItemInitialEvent {
  const _$ItemInitialEvent({this.itemOfSet, required this.timeSet});

  @override
  final ItemOfSetEntity? itemOfSet;
  @override
  final TimeSetEntity timeSet;

  @override
  String toString() {
    return 'AddUpdateItemEvent.initial(itemOfSet: $itemOfSet, timeSet: $timeSet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemInitialEvent &&
            (identical(other.itemOfSet, itemOfSet) ||
                other.itemOfSet == itemOfSet) &&
            (identical(other.timeSet, timeSet) || other.timeSet == timeSet));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemOfSet, timeSet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemInitialEventCopyWith<_$ItemInitialEvent> get copyWith =>
      __$$ItemInitialEventCopyWithImpl<_$ItemInitialEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet)
        initial,
    required TResult Function(bool isTable) changeIsTable,
    required TResult Function(bool isVerse) changeIsVerse,
    required TResult Function(bool isPicture) changeIsPicture,
    required TResult Function(String text) changeTitle,
    required TResult Function(String numberChip) addNumberChips,
    required TResult Function(String numberChip) removeNumberChips,
  }) {
    return initial(itemOfSet, timeSet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet)?
        initial,
    TResult? Function(bool isTable)? changeIsTable,
    TResult? Function(bool isVerse)? changeIsVerse,
    TResult? Function(bool isPicture)? changeIsPicture,
    TResult? Function(String text)? changeTitle,
    TResult? Function(String numberChip)? addNumberChips,
    TResult? Function(String numberChip)? removeNumberChips,
  }) {
    return initial?.call(itemOfSet, timeSet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet)?
        initial,
    TResult Function(bool isTable)? changeIsTable,
    TResult Function(bool isVerse)? changeIsVerse,
    TResult Function(bool isPicture)? changeIsPicture,
    TResult Function(String text)? changeTitle,
    TResult Function(String numberChip)? addNumberChips,
    TResult Function(String numberChip)? removeNumberChips,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(itemOfSet, timeSet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemInitialEvent value) initial,
    required TResult Function(ItemChangeIsTableEvent value) changeIsTable,
    required TResult Function(ItemChangeIsVerseEvent value) changeIsVerse,
    required TResult Function(ItemChangeIsPictureEvent value) changeIsPicture,
    required TResult Function(ItemChangeTitleEvent value) changeTitle,
    required TResult Function(AddNumberChipsEvent value) addNumberChips,
    required TResult Function(RemoveNumberChipsEvent value) removeNumberChips,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ItemInitialEvent value)? initial,
    TResult? Function(ItemChangeIsTableEvent value)? changeIsTable,
    TResult? Function(ItemChangeIsVerseEvent value)? changeIsVerse,
    TResult? Function(ItemChangeIsPictureEvent value)? changeIsPicture,
    TResult? Function(ItemChangeTitleEvent value)? changeTitle,
    TResult? Function(AddNumberChipsEvent value)? addNumberChips,
    TResult? Function(RemoveNumberChipsEvent value)? removeNumberChips,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemInitialEvent value)? initial,
    TResult Function(ItemChangeIsTableEvent value)? changeIsTable,
    TResult Function(ItemChangeIsVerseEvent value)? changeIsVerse,
    TResult Function(ItemChangeIsPictureEvent value)? changeIsPicture,
    TResult Function(ItemChangeTitleEvent value)? changeTitle,
    TResult Function(AddNumberChipsEvent value)? addNumberChips,
    TResult Function(RemoveNumberChipsEvent value)? removeNumberChips,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ItemInitialEvent implements AddUpdateItemEvent {
  const factory ItemInitialEvent(
      {final ItemOfSetEntity? itemOfSet,
      required final TimeSetEntity timeSet}) = _$ItemInitialEvent;

  ItemOfSetEntity? get itemOfSet;
  TimeSetEntity get timeSet;
  @JsonKey(ignore: true)
  _$$ItemInitialEventCopyWith<_$ItemInitialEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemChangeIsTableEventCopyWith<$Res> {
  factory _$$ItemChangeIsTableEventCopyWith(_$ItemChangeIsTableEvent value,
          $Res Function(_$ItemChangeIsTableEvent) then) =
      __$$ItemChangeIsTableEventCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isTable});
}

/// @nodoc
class __$$ItemChangeIsTableEventCopyWithImpl<$Res>
    extends _$AddUpdateItemEventCopyWithImpl<$Res, _$ItemChangeIsTableEvent>
    implements _$$ItemChangeIsTableEventCopyWith<$Res> {
  __$$ItemChangeIsTableEventCopyWithImpl(_$ItemChangeIsTableEvent _value,
      $Res Function(_$ItemChangeIsTableEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTable = null,
  }) {
    return _then(_$ItemChangeIsTableEvent(
      null == isTable
          ? _value.isTable
          : isTable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ItemChangeIsTableEvent implements ItemChangeIsTableEvent {
  const _$ItemChangeIsTableEvent(this.isTable);

  @override
  final bool isTable;

  @override
  String toString() {
    return 'AddUpdateItemEvent.changeIsTable(isTable: $isTable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemChangeIsTableEvent &&
            (identical(other.isTable, isTable) || other.isTable == isTable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isTable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemChangeIsTableEventCopyWith<_$ItemChangeIsTableEvent> get copyWith =>
      __$$ItemChangeIsTableEventCopyWithImpl<_$ItemChangeIsTableEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet)
        initial,
    required TResult Function(bool isTable) changeIsTable,
    required TResult Function(bool isVerse) changeIsVerse,
    required TResult Function(bool isPicture) changeIsPicture,
    required TResult Function(String text) changeTitle,
    required TResult Function(String numberChip) addNumberChips,
    required TResult Function(String numberChip) removeNumberChips,
  }) {
    return changeIsTable(isTable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet)?
        initial,
    TResult? Function(bool isTable)? changeIsTable,
    TResult? Function(bool isVerse)? changeIsVerse,
    TResult? Function(bool isPicture)? changeIsPicture,
    TResult? Function(String text)? changeTitle,
    TResult? Function(String numberChip)? addNumberChips,
    TResult? Function(String numberChip)? removeNumberChips,
  }) {
    return changeIsTable?.call(isTable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet)?
        initial,
    TResult Function(bool isTable)? changeIsTable,
    TResult Function(bool isVerse)? changeIsVerse,
    TResult Function(bool isPicture)? changeIsPicture,
    TResult Function(String text)? changeTitle,
    TResult Function(String numberChip)? addNumberChips,
    TResult Function(String numberChip)? removeNumberChips,
    required TResult orElse(),
  }) {
    if (changeIsTable != null) {
      return changeIsTable(isTable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemInitialEvent value) initial,
    required TResult Function(ItemChangeIsTableEvent value) changeIsTable,
    required TResult Function(ItemChangeIsVerseEvent value) changeIsVerse,
    required TResult Function(ItemChangeIsPictureEvent value) changeIsPicture,
    required TResult Function(ItemChangeTitleEvent value) changeTitle,
    required TResult Function(AddNumberChipsEvent value) addNumberChips,
    required TResult Function(RemoveNumberChipsEvent value) removeNumberChips,
  }) {
    return changeIsTable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ItemInitialEvent value)? initial,
    TResult? Function(ItemChangeIsTableEvent value)? changeIsTable,
    TResult? Function(ItemChangeIsVerseEvent value)? changeIsVerse,
    TResult? Function(ItemChangeIsPictureEvent value)? changeIsPicture,
    TResult? Function(ItemChangeTitleEvent value)? changeTitle,
    TResult? Function(AddNumberChipsEvent value)? addNumberChips,
    TResult? Function(RemoveNumberChipsEvent value)? removeNumberChips,
  }) {
    return changeIsTable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemInitialEvent value)? initial,
    TResult Function(ItemChangeIsTableEvent value)? changeIsTable,
    TResult Function(ItemChangeIsVerseEvent value)? changeIsVerse,
    TResult Function(ItemChangeIsPictureEvent value)? changeIsPicture,
    TResult Function(ItemChangeTitleEvent value)? changeTitle,
    TResult Function(AddNumberChipsEvent value)? addNumberChips,
    TResult Function(RemoveNumberChipsEvent value)? removeNumberChips,
    required TResult orElse(),
  }) {
    if (changeIsTable != null) {
      return changeIsTable(this);
    }
    return orElse();
  }
}

abstract class ItemChangeIsTableEvent implements AddUpdateItemEvent {
  const factory ItemChangeIsTableEvent(final bool isTable) =
      _$ItemChangeIsTableEvent;

  bool get isTable;
  @JsonKey(ignore: true)
  _$$ItemChangeIsTableEventCopyWith<_$ItemChangeIsTableEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemChangeIsVerseEventCopyWith<$Res> {
  factory _$$ItemChangeIsVerseEventCopyWith(_$ItemChangeIsVerseEvent value,
          $Res Function(_$ItemChangeIsVerseEvent) then) =
      __$$ItemChangeIsVerseEventCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isVerse});
}

/// @nodoc
class __$$ItemChangeIsVerseEventCopyWithImpl<$Res>
    extends _$AddUpdateItemEventCopyWithImpl<$Res, _$ItemChangeIsVerseEvent>
    implements _$$ItemChangeIsVerseEventCopyWith<$Res> {
  __$$ItemChangeIsVerseEventCopyWithImpl(_$ItemChangeIsVerseEvent _value,
      $Res Function(_$ItemChangeIsVerseEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVerse = null,
  }) {
    return _then(_$ItemChangeIsVerseEvent(
      null == isVerse
          ? _value.isVerse
          : isVerse // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ItemChangeIsVerseEvent implements ItemChangeIsVerseEvent {
  const _$ItemChangeIsVerseEvent(this.isVerse);

  @override
  final bool isVerse;

  @override
  String toString() {
    return 'AddUpdateItemEvent.changeIsVerse(isVerse: $isVerse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemChangeIsVerseEvent &&
            (identical(other.isVerse, isVerse) || other.isVerse == isVerse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isVerse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemChangeIsVerseEventCopyWith<_$ItemChangeIsVerseEvent> get copyWith =>
      __$$ItemChangeIsVerseEventCopyWithImpl<_$ItemChangeIsVerseEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet)
        initial,
    required TResult Function(bool isTable) changeIsTable,
    required TResult Function(bool isVerse) changeIsVerse,
    required TResult Function(bool isPicture) changeIsPicture,
    required TResult Function(String text) changeTitle,
    required TResult Function(String numberChip) addNumberChips,
    required TResult Function(String numberChip) removeNumberChips,
  }) {
    return changeIsVerse(isVerse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet)?
        initial,
    TResult? Function(bool isTable)? changeIsTable,
    TResult? Function(bool isVerse)? changeIsVerse,
    TResult? Function(bool isPicture)? changeIsPicture,
    TResult? Function(String text)? changeTitle,
    TResult? Function(String numberChip)? addNumberChips,
    TResult? Function(String numberChip)? removeNumberChips,
  }) {
    return changeIsVerse?.call(isVerse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet)?
        initial,
    TResult Function(bool isTable)? changeIsTable,
    TResult Function(bool isVerse)? changeIsVerse,
    TResult Function(bool isPicture)? changeIsPicture,
    TResult Function(String text)? changeTitle,
    TResult Function(String numberChip)? addNumberChips,
    TResult Function(String numberChip)? removeNumberChips,
    required TResult orElse(),
  }) {
    if (changeIsVerse != null) {
      return changeIsVerse(isVerse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemInitialEvent value) initial,
    required TResult Function(ItemChangeIsTableEvent value) changeIsTable,
    required TResult Function(ItemChangeIsVerseEvent value) changeIsVerse,
    required TResult Function(ItemChangeIsPictureEvent value) changeIsPicture,
    required TResult Function(ItemChangeTitleEvent value) changeTitle,
    required TResult Function(AddNumberChipsEvent value) addNumberChips,
    required TResult Function(RemoveNumberChipsEvent value) removeNumberChips,
  }) {
    return changeIsVerse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ItemInitialEvent value)? initial,
    TResult? Function(ItemChangeIsTableEvent value)? changeIsTable,
    TResult? Function(ItemChangeIsVerseEvent value)? changeIsVerse,
    TResult? Function(ItemChangeIsPictureEvent value)? changeIsPicture,
    TResult? Function(ItemChangeTitleEvent value)? changeTitle,
    TResult? Function(AddNumberChipsEvent value)? addNumberChips,
    TResult? Function(RemoveNumberChipsEvent value)? removeNumberChips,
  }) {
    return changeIsVerse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemInitialEvent value)? initial,
    TResult Function(ItemChangeIsTableEvent value)? changeIsTable,
    TResult Function(ItemChangeIsVerseEvent value)? changeIsVerse,
    TResult Function(ItemChangeIsPictureEvent value)? changeIsPicture,
    TResult Function(ItemChangeTitleEvent value)? changeTitle,
    TResult Function(AddNumberChipsEvent value)? addNumberChips,
    TResult Function(RemoveNumberChipsEvent value)? removeNumberChips,
    required TResult orElse(),
  }) {
    if (changeIsVerse != null) {
      return changeIsVerse(this);
    }
    return orElse();
  }
}

abstract class ItemChangeIsVerseEvent implements AddUpdateItemEvent {
  const factory ItemChangeIsVerseEvent(final bool isVerse) =
      _$ItemChangeIsVerseEvent;

  bool get isVerse;
  @JsonKey(ignore: true)
  _$$ItemChangeIsVerseEventCopyWith<_$ItemChangeIsVerseEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemChangeIsPictureEventCopyWith<$Res> {
  factory _$$ItemChangeIsPictureEventCopyWith(_$ItemChangeIsPictureEvent value,
          $Res Function(_$ItemChangeIsPictureEvent) then) =
      __$$ItemChangeIsPictureEventCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isPicture});
}

/// @nodoc
class __$$ItemChangeIsPictureEventCopyWithImpl<$Res>
    extends _$AddUpdateItemEventCopyWithImpl<$Res, _$ItemChangeIsPictureEvent>
    implements _$$ItemChangeIsPictureEventCopyWith<$Res> {
  __$$ItemChangeIsPictureEventCopyWithImpl(_$ItemChangeIsPictureEvent _value,
      $Res Function(_$ItemChangeIsPictureEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPicture = null,
  }) {
    return _then(_$ItemChangeIsPictureEvent(
      null == isPicture
          ? _value.isPicture
          : isPicture // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ItemChangeIsPictureEvent implements ItemChangeIsPictureEvent {
  const _$ItemChangeIsPictureEvent(this.isPicture);

  @override
  final bool isPicture;

  @override
  String toString() {
    return 'AddUpdateItemEvent.changeIsPicture(isPicture: $isPicture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemChangeIsPictureEvent &&
            (identical(other.isPicture, isPicture) ||
                other.isPicture == isPicture));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPicture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemChangeIsPictureEventCopyWith<_$ItemChangeIsPictureEvent>
      get copyWith =>
          __$$ItemChangeIsPictureEventCopyWithImpl<_$ItemChangeIsPictureEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet)
        initial,
    required TResult Function(bool isTable) changeIsTable,
    required TResult Function(bool isVerse) changeIsVerse,
    required TResult Function(bool isPicture) changeIsPicture,
    required TResult Function(String text) changeTitle,
    required TResult Function(String numberChip) addNumberChips,
    required TResult Function(String numberChip) removeNumberChips,
  }) {
    return changeIsPicture(isPicture);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet)?
        initial,
    TResult? Function(bool isTable)? changeIsTable,
    TResult? Function(bool isVerse)? changeIsVerse,
    TResult? Function(bool isPicture)? changeIsPicture,
    TResult? Function(String text)? changeTitle,
    TResult? Function(String numberChip)? addNumberChips,
    TResult? Function(String numberChip)? removeNumberChips,
  }) {
    return changeIsPicture?.call(isPicture);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet)?
        initial,
    TResult Function(bool isTable)? changeIsTable,
    TResult Function(bool isVerse)? changeIsVerse,
    TResult Function(bool isPicture)? changeIsPicture,
    TResult Function(String text)? changeTitle,
    TResult Function(String numberChip)? addNumberChips,
    TResult Function(String numberChip)? removeNumberChips,
    required TResult orElse(),
  }) {
    if (changeIsPicture != null) {
      return changeIsPicture(isPicture);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemInitialEvent value) initial,
    required TResult Function(ItemChangeIsTableEvent value) changeIsTable,
    required TResult Function(ItemChangeIsVerseEvent value) changeIsVerse,
    required TResult Function(ItemChangeIsPictureEvent value) changeIsPicture,
    required TResult Function(ItemChangeTitleEvent value) changeTitle,
    required TResult Function(AddNumberChipsEvent value) addNumberChips,
    required TResult Function(RemoveNumberChipsEvent value) removeNumberChips,
  }) {
    return changeIsPicture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ItemInitialEvent value)? initial,
    TResult? Function(ItemChangeIsTableEvent value)? changeIsTable,
    TResult? Function(ItemChangeIsVerseEvent value)? changeIsVerse,
    TResult? Function(ItemChangeIsPictureEvent value)? changeIsPicture,
    TResult? Function(ItemChangeTitleEvent value)? changeTitle,
    TResult? Function(AddNumberChipsEvent value)? addNumberChips,
    TResult? Function(RemoveNumberChipsEvent value)? removeNumberChips,
  }) {
    return changeIsPicture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemInitialEvent value)? initial,
    TResult Function(ItemChangeIsTableEvent value)? changeIsTable,
    TResult Function(ItemChangeIsVerseEvent value)? changeIsVerse,
    TResult Function(ItemChangeIsPictureEvent value)? changeIsPicture,
    TResult Function(ItemChangeTitleEvent value)? changeTitle,
    TResult Function(AddNumberChipsEvent value)? addNumberChips,
    TResult Function(RemoveNumberChipsEvent value)? removeNumberChips,
    required TResult orElse(),
  }) {
    if (changeIsPicture != null) {
      return changeIsPicture(this);
    }
    return orElse();
  }
}

abstract class ItemChangeIsPictureEvent implements AddUpdateItemEvent {
  const factory ItemChangeIsPictureEvent(final bool isPicture) =
      _$ItemChangeIsPictureEvent;

  bool get isPicture;
  @JsonKey(ignore: true)
  _$$ItemChangeIsPictureEventCopyWith<_$ItemChangeIsPictureEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemChangeTitleEventCopyWith<$Res> {
  factory _$$ItemChangeTitleEventCopyWith(_$ItemChangeTitleEvent value,
          $Res Function(_$ItemChangeTitleEvent) then) =
      __$$ItemChangeTitleEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$ItemChangeTitleEventCopyWithImpl<$Res>
    extends _$AddUpdateItemEventCopyWithImpl<$Res, _$ItemChangeTitleEvent>
    implements _$$ItemChangeTitleEventCopyWith<$Res> {
  __$$ItemChangeTitleEventCopyWithImpl(_$ItemChangeTitleEvent _value,
      $Res Function(_$ItemChangeTitleEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$ItemChangeTitleEvent(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ItemChangeTitleEvent implements ItemChangeTitleEvent {
  const _$ItemChangeTitleEvent(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'AddUpdateItemEvent.changeTitle(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemChangeTitleEvent &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemChangeTitleEventCopyWith<_$ItemChangeTitleEvent> get copyWith =>
      __$$ItemChangeTitleEventCopyWithImpl<_$ItemChangeTitleEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet)
        initial,
    required TResult Function(bool isTable) changeIsTable,
    required TResult Function(bool isVerse) changeIsVerse,
    required TResult Function(bool isPicture) changeIsPicture,
    required TResult Function(String text) changeTitle,
    required TResult Function(String numberChip) addNumberChips,
    required TResult Function(String numberChip) removeNumberChips,
  }) {
    return changeTitle(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet)?
        initial,
    TResult? Function(bool isTable)? changeIsTable,
    TResult? Function(bool isVerse)? changeIsVerse,
    TResult? Function(bool isPicture)? changeIsPicture,
    TResult? Function(String text)? changeTitle,
    TResult? Function(String numberChip)? addNumberChips,
    TResult? Function(String numberChip)? removeNumberChips,
  }) {
    return changeTitle?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet)?
        initial,
    TResult Function(bool isTable)? changeIsTable,
    TResult Function(bool isVerse)? changeIsVerse,
    TResult Function(bool isPicture)? changeIsPicture,
    TResult Function(String text)? changeTitle,
    TResult Function(String numberChip)? addNumberChips,
    TResult Function(String numberChip)? removeNumberChips,
    required TResult orElse(),
  }) {
    if (changeTitle != null) {
      return changeTitle(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemInitialEvent value) initial,
    required TResult Function(ItemChangeIsTableEvent value) changeIsTable,
    required TResult Function(ItemChangeIsVerseEvent value) changeIsVerse,
    required TResult Function(ItemChangeIsPictureEvent value) changeIsPicture,
    required TResult Function(ItemChangeTitleEvent value) changeTitle,
    required TResult Function(AddNumberChipsEvent value) addNumberChips,
    required TResult Function(RemoveNumberChipsEvent value) removeNumberChips,
  }) {
    return changeTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ItemInitialEvent value)? initial,
    TResult? Function(ItemChangeIsTableEvent value)? changeIsTable,
    TResult? Function(ItemChangeIsVerseEvent value)? changeIsVerse,
    TResult? Function(ItemChangeIsPictureEvent value)? changeIsPicture,
    TResult? Function(ItemChangeTitleEvent value)? changeTitle,
    TResult? Function(AddNumberChipsEvent value)? addNumberChips,
    TResult? Function(RemoveNumberChipsEvent value)? removeNumberChips,
  }) {
    return changeTitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemInitialEvent value)? initial,
    TResult Function(ItemChangeIsTableEvent value)? changeIsTable,
    TResult Function(ItemChangeIsVerseEvent value)? changeIsVerse,
    TResult Function(ItemChangeIsPictureEvent value)? changeIsPicture,
    TResult Function(ItemChangeTitleEvent value)? changeTitle,
    TResult Function(AddNumberChipsEvent value)? addNumberChips,
    TResult Function(RemoveNumberChipsEvent value)? removeNumberChips,
    required TResult orElse(),
  }) {
    if (changeTitle != null) {
      return changeTitle(this);
    }
    return orElse();
  }
}

abstract class ItemChangeTitleEvent implements AddUpdateItemEvent {
  const factory ItemChangeTitleEvent(final String text) =
      _$ItemChangeTitleEvent;

  String get text;
  @JsonKey(ignore: true)
  _$$ItemChangeTitleEventCopyWith<_$ItemChangeTitleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddNumberChipsEventCopyWith<$Res> {
  factory _$$AddNumberChipsEventCopyWith(_$AddNumberChipsEvent value,
          $Res Function(_$AddNumberChipsEvent) then) =
      __$$AddNumberChipsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String numberChip});
}

/// @nodoc
class __$$AddNumberChipsEventCopyWithImpl<$Res>
    extends _$AddUpdateItemEventCopyWithImpl<$Res, _$AddNumberChipsEvent>
    implements _$$AddNumberChipsEventCopyWith<$Res> {
  __$$AddNumberChipsEventCopyWithImpl(
      _$AddNumberChipsEvent _value, $Res Function(_$AddNumberChipsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberChip = null,
  }) {
    return _then(_$AddNumberChipsEvent(
      null == numberChip
          ? _value.numberChip
          : numberChip // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddNumberChipsEvent implements AddNumberChipsEvent {
  const _$AddNumberChipsEvent(this.numberChip);

  @override
  final String numberChip;

  @override
  String toString() {
    return 'AddUpdateItemEvent.addNumberChips(numberChip: $numberChip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNumberChipsEvent &&
            (identical(other.numberChip, numberChip) ||
                other.numberChip == numberChip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, numberChip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNumberChipsEventCopyWith<_$AddNumberChipsEvent> get copyWith =>
      __$$AddNumberChipsEventCopyWithImpl<_$AddNumberChipsEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet)
        initial,
    required TResult Function(bool isTable) changeIsTable,
    required TResult Function(bool isVerse) changeIsVerse,
    required TResult Function(bool isPicture) changeIsPicture,
    required TResult Function(String text) changeTitle,
    required TResult Function(String numberChip) addNumberChips,
    required TResult Function(String numberChip) removeNumberChips,
  }) {
    return addNumberChips(numberChip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet)?
        initial,
    TResult? Function(bool isTable)? changeIsTable,
    TResult? Function(bool isVerse)? changeIsVerse,
    TResult? Function(bool isPicture)? changeIsPicture,
    TResult? Function(String text)? changeTitle,
    TResult? Function(String numberChip)? addNumberChips,
    TResult? Function(String numberChip)? removeNumberChips,
  }) {
    return addNumberChips?.call(numberChip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet)?
        initial,
    TResult Function(bool isTable)? changeIsTable,
    TResult Function(bool isVerse)? changeIsVerse,
    TResult Function(bool isPicture)? changeIsPicture,
    TResult Function(String text)? changeTitle,
    TResult Function(String numberChip)? addNumberChips,
    TResult Function(String numberChip)? removeNumberChips,
    required TResult orElse(),
  }) {
    if (addNumberChips != null) {
      return addNumberChips(numberChip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemInitialEvent value) initial,
    required TResult Function(ItemChangeIsTableEvent value) changeIsTable,
    required TResult Function(ItemChangeIsVerseEvent value) changeIsVerse,
    required TResult Function(ItemChangeIsPictureEvent value) changeIsPicture,
    required TResult Function(ItemChangeTitleEvent value) changeTitle,
    required TResult Function(AddNumberChipsEvent value) addNumberChips,
    required TResult Function(RemoveNumberChipsEvent value) removeNumberChips,
  }) {
    return addNumberChips(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ItemInitialEvent value)? initial,
    TResult? Function(ItemChangeIsTableEvent value)? changeIsTable,
    TResult? Function(ItemChangeIsVerseEvent value)? changeIsVerse,
    TResult? Function(ItemChangeIsPictureEvent value)? changeIsPicture,
    TResult? Function(ItemChangeTitleEvent value)? changeTitle,
    TResult? Function(AddNumberChipsEvent value)? addNumberChips,
    TResult? Function(RemoveNumberChipsEvent value)? removeNumberChips,
  }) {
    return addNumberChips?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemInitialEvent value)? initial,
    TResult Function(ItemChangeIsTableEvent value)? changeIsTable,
    TResult Function(ItemChangeIsVerseEvent value)? changeIsVerse,
    TResult Function(ItemChangeIsPictureEvent value)? changeIsPicture,
    TResult Function(ItemChangeTitleEvent value)? changeTitle,
    TResult Function(AddNumberChipsEvent value)? addNumberChips,
    TResult Function(RemoveNumberChipsEvent value)? removeNumberChips,
    required TResult orElse(),
  }) {
    if (addNumberChips != null) {
      return addNumberChips(this);
    }
    return orElse();
  }
}

abstract class AddNumberChipsEvent implements AddUpdateItemEvent {
  const factory AddNumberChipsEvent(final String numberChip) =
      _$AddNumberChipsEvent;

  String get numberChip;
  @JsonKey(ignore: true)
  _$$AddNumberChipsEventCopyWith<_$AddNumberChipsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveNumberChipsEventCopyWith<$Res> {
  factory _$$RemoveNumberChipsEventCopyWith(_$RemoveNumberChipsEvent value,
          $Res Function(_$RemoveNumberChipsEvent) then) =
      __$$RemoveNumberChipsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String numberChip});
}

/// @nodoc
class __$$RemoveNumberChipsEventCopyWithImpl<$Res>
    extends _$AddUpdateItemEventCopyWithImpl<$Res, _$RemoveNumberChipsEvent>
    implements _$$RemoveNumberChipsEventCopyWith<$Res> {
  __$$RemoveNumberChipsEventCopyWithImpl(_$RemoveNumberChipsEvent _value,
      $Res Function(_$RemoveNumberChipsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberChip = null,
  }) {
    return _then(_$RemoveNumberChipsEvent(
      null == numberChip
          ? _value.numberChip
          : numberChip // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveNumberChipsEvent implements RemoveNumberChipsEvent {
  const _$RemoveNumberChipsEvent(this.numberChip);

  @override
  final String numberChip;

  @override
  String toString() {
    return 'AddUpdateItemEvent.removeNumberChips(numberChip: $numberChip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveNumberChipsEvent &&
            (identical(other.numberChip, numberChip) ||
                other.numberChip == numberChip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, numberChip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveNumberChipsEventCopyWith<_$RemoveNumberChipsEvent> get copyWith =>
      __$$RemoveNumberChipsEventCopyWithImpl<_$RemoveNumberChipsEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet)
        initial,
    required TResult Function(bool isTable) changeIsTable,
    required TResult Function(bool isVerse) changeIsVerse,
    required TResult Function(bool isPicture) changeIsPicture,
    required TResult Function(String text) changeTitle,
    required TResult Function(String numberChip) addNumberChips,
    required TResult Function(String numberChip) removeNumberChips,
  }) {
    return removeNumberChips(numberChip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet)?
        initial,
    TResult? Function(bool isTable)? changeIsTable,
    TResult? Function(bool isVerse)? changeIsVerse,
    TResult? Function(bool isPicture)? changeIsPicture,
    TResult? Function(String text)? changeTitle,
    TResult? Function(String numberChip)? addNumberChips,
    TResult? Function(String numberChip)? removeNumberChips,
  }) {
    return removeNumberChips?.call(numberChip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet)?
        initial,
    TResult Function(bool isTable)? changeIsTable,
    TResult Function(bool isVerse)? changeIsVerse,
    TResult Function(bool isPicture)? changeIsPicture,
    TResult Function(String text)? changeTitle,
    TResult Function(String numberChip)? addNumberChips,
    TResult Function(String numberChip)? removeNumberChips,
    required TResult orElse(),
  }) {
    if (removeNumberChips != null) {
      return removeNumberChips(numberChip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemInitialEvent value) initial,
    required TResult Function(ItemChangeIsTableEvent value) changeIsTable,
    required TResult Function(ItemChangeIsVerseEvent value) changeIsVerse,
    required TResult Function(ItemChangeIsPictureEvent value) changeIsPicture,
    required TResult Function(ItemChangeTitleEvent value) changeTitle,
    required TResult Function(AddNumberChipsEvent value) addNumberChips,
    required TResult Function(RemoveNumberChipsEvent value) removeNumberChips,
  }) {
    return removeNumberChips(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ItemInitialEvent value)? initial,
    TResult? Function(ItemChangeIsTableEvent value)? changeIsTable,
    TResult? Function(ItemChangeIsVerseEvent value)? changeIsVerse,
    TResult? Function(ItemChangeIsPictureEvent value)? changeIsPicture,
    TResult? Function(ItemChangeTitleEvent value)? changeTitle,
    TResult? Function(AddNumberChipsEvent value)? addNumberChips,
    TResult? Function(RemoveNumberChipsEvent value)? removeNumberChips,
  }) {
    return removeNumberChips?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemInitialEvent value)? initial,
    TResult Function(ItemChangeIsTableEvent value)? changeIsTable,
    TResult Function(ItemChangeIsVerseEvent value)? changeIsVerse,
    TResult Function(ItemChangeIsPictureEvent value)? changeIsPicture,
    TResult Function(ItemChangeTitleEvent value)? changeTitle,
    TResult Function(AddNumberChipsEvent value)? addNumberChips,
    TResult Function(RemoveNumberChipsEvent value)? removeNumberChips,
    required TResult orElse(),
  }) {
    if (removeNumberChips != null) {
      return removeNumberChips(this);
    }
    return orElse();
  }
}

abstract class RemoveNumberChipsEvent implements AddUpdateItemEvent {
  const factory RemoveNumberChipsEvent(final String numberChip) =
      _$RemoveNumberChipsEvent;

  String get numberChip;
  @JsonKey(ignore: true)
  _$$RemoveNumberChipsEventCopyWith<_$RemoveNumberChipsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddUpdateItemState {
  ItemOfSetEntity? get itemOfSet => throw _privateConstructorUsedError;
  TimeSetEntity? get timeSet => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ItemOfSetEntity? itemOfSet, TimeSetEntity? timeSet)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemOfSetEntity? itemOfSet, TimeSetEntity? timeSet)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemOfSetEntity? itemOfSet, TimeSetEntity? timeSet)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemInitialState value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ItemInitialState value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemInitialState value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddUpdateItemStateCopyWith<AddUpdateItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUpdateItemStateCopyWith<$Res> {
  factory $AddUpdateItemStateCopyWith(
          AddUpdateItemState value, $Res Function(AddUpdateItemState) then) =
      _$AddUpdateItemStateCopyWithImpl<$Res, AddUpdateItemState>;
  @useResult
  $Res call({ItemOfSetEntity? itemOfSet, TimeSetEntity? timeSet});

  $ItemOfSetEntityCopyWith<$Res>? get itemOfSet;
  $TimeSetEntityCopyWith<$Res>? get timeSet;
}

/// @nodoc
class _$AddUpdateItemStateCopyWithImpl<$Res, $Val extends AddUpdateItemState>
    implements $AddUpdateItemStateCopyWith<$Res> {
  _$AddUpdateItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemOfSet = freezed,
    Object? timeSet = freezed,
  }) {
    return _then(_value.copyWith(
      itemOfSet: freezed == itemOfSet
          ? _value.itemOfSet
          : itemOfSet // ignore: cast_nullable_to_non_nullable
              as ItemOfSetEntity?,
      timeSet: freezed == timeSet
          ? _value.timeSet
          : timeSet // ignore: cast_nullable_to_non_nullable
              as TimeSetEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemOfSetEntityCopyWith<$Res>? get itemOfSet {
    if (_value.itemOfSet == null) {
      return null;
    }

    return $ItemOfSetEntityCopyWith<$Res>(_value.itemOfSet!, (value) {
      return _then(_value.copyWith(itemOfSet: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeSetEntityCopyWith<$Res>? get timeSet {
    if (_value.timeSet == null) {
      return null;
    }

    return $TimeSetEntityCopyWith<$Res>(_value.timeSet!, (value) {
      return _then(_value.copyWith(timeSet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemInitialStateCopyWith<$Res>
    implements $AddUpdateItemStateCopyWith<$Res> {
  factory _$$ItemInitialStateCopyWith(
          _$ItemInitialState value, $Res Function(_$ItemInitialState) then) =
      __$$ItemInitialStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ItemOfSetEntity? itemOfSet, TimeSetEntity? timeSet});

  @override
  $ItemOfSetEntityCopyWith<$Res>? get itemOfSet;
  @override
  $TimeSetEntityCopyWith<$Res>? get timeSet;
}

/// @nodoc
class __$$ItemInitialStateCopyWithImpl<$Res>
    extends _$AddUpdateItemStateCopyWithImpl<$Res, _$ItemInitialState>
    implements _$$ItemInitialStateCopyWith<$Res> {
  __$$ItemInitialStateCopyWithImpl(
      _$ItemInitialState _value, $Res Function(_$ItemInitialState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemOfSet = freezed,
    Object? timeSet = freezed,
  }) {
    return _then(_$ItemInitialState(
      itemOfSet: freezed == itemOfSet
          ? _value.itemOfSet
          : itemOfSet // ignore: cast_nullable_to_non_nullable
              as ItemOfSetEntity?,
      timeSet: freezed == timeSet
          ? _value.timeSet
          : timeSet // ignore: cast_nullable_to_non_nullable
              as TimeSetEntity?,
    ));
  }
}

/// @nodoc

class _$ItemInitialState implements ItemInitialState {
  const _$ItemInitialState({this.itemOfSet, this.timeSet});

  @override
  final ItemOfSetEntity? itemOfSet;
  @override
  final TimeSetEntity? timeSet;

  @override
  String toString() {
    return 'AddUpdateItemState.initial(itemOfSet: $itemOfSet, timeSet: $timeSet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemInitialState &&
            (identical(other.itemOfSet, itemOfSet) ||
                other.itemOfSet == itemOfSet) &&
            (identical(other.timeSet, timeSet) || other.timeSet == timeSet));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemOfSet, timeSet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemInitialStateCopyWith<_$ItemInitialState> get copyWith =>
      __$$ItemInitialStateCopyWithImpl<_$ItemInitialState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ItemOfSetEntity? itemOfSet, TimeSetEntity? timeSet)
        initial,
  }) {
    return initial(itemOfSet, timeSet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemOfSetEntity? itemOfSet, TimeSetEntity? timeSet)?
        initial,
  }) {
    return initial?.call(itemOfSet, timeSet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemOfSetEntity? itemOfSet, TimeSetEntity? timeSet)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(itemOfSet, timeSet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemInitialState value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ItemInitialState value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ItemInitialState implements AddUpdateItemState {
  const factory ItemInitialState(
      {final ItemOfSetEntity? itemOfSet,
      final TimeSetEntity? timeSet}) = _$ItemInitialState;

  @override
  ItemOfSetEntity? get itemOfSet;
  @override
  TimeSetEntity? get timeSet;
  @override
  @JsonKey(ignore: true)
  _$$ItemInitialStateCopyWith<_$ItemInitialState> get copyWith =>
      throw _privateConstructorUsedError;
}
