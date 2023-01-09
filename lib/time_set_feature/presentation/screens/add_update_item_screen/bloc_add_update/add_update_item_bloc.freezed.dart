// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_update_item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddUpdateItemEvent {
  TimeSetEntity get timeSet => throw _privateConstructorUsedError;
  ItemOfSetEntity get itemOfSet => throw _privateConstructorUsedError;
  int get indexOfItem => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TimeSetEntity timeSet, ItemOfSetEntity itemOfSet, int indexOfItem)
        saveItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            TimeSetEntity timeSet, ItemOfSetEntity itemOfSet, int indexOfItem)?
        saveItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            TimeSetEntity timeSet, ItemOfSetEntity itemOfSet, int indexOfItem)?
        saveItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveItemEvent value) saveItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveItemEvent value)? saveItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveItemEvent value)? saveItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddUpdateItemEventCopyWith<AddUpdateItemEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUpdateItemEventCopyWith<$Res> {
  factory $AddUpdateItemEventCopyWith(
          AddUpdateItemEvent value, $Res Function(AddUpdateItemEvent) then) =
      _$AddUpdateItemEventCopyWithImpl<$Res, AddUpdateItemEvent>;
  @useResult
  $Res call(
      {TimeSetEntity timeSet, ItemOfSetEntity itemOfSet, int indexOfItem});

  $TimeSetEntityCopyWith<$Res> get timeSet;
  $ItemOfSetEntityCopyWith<$Res> get itemOfSet;
}

/// @nodoc
class _$AddUpdateItemEventCopyWithImpl<$Res, $Val extends AddUpdateItemEvent>
    implements $AddUpdateItemEventCopyWith<$Res> {
  _$AddUpdateItemEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSet = null,
    Object? itemOfSet = null,
    Object? indexOfItem = null,
  }) {
    return _then(_value.copyWith(
      timeSet: null == timeSet
          ? _value.timeSet
          : timeSet // ignore: cast_nullable_to_non_nullable
              as TimeSetEntity,
      itemOfSet: null == itemOfSet
          ? _value.itemOfSet
          : itemOfSet // ignore: cast_nullable_to_non_nullable
              as ItemOfSetEntity,
      indexOfItem: null == indexOfItem
          ? _value.indexOfItem
          : indexOfItem // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeSetEntityCopyWith<$Res> get timeSet {
    return $TimeSetEntityCopyWith<$Res>(_value.timeSet, (value) {
      return _then(_value.copyWith(timeSet: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemOfSetEntityCopyWith<$Res> get itemOfSet {
    return $ItemOfSetEntityCopyWith<$Res>(_value.itemOfSet, (value) {
      return _then(_value.copyWith(itemOfSet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SaveItemEventCopyWith<$Res>
    implements $AddUpdateItemEventCopyWith<$Res> {
  factory _$$SaveItemEventCopyWith(
          _$SaveItemEvent value, $Res Function(_$SaveItemEvent) then) =
      __$$SaveItemEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TimeSetEntity timeSet, ItemOfSetEntity itemOfSet, int indexOfItem});

  @override
  $TimeSetEntityCopyWith<$Res> get timeSet;
  @override
  $ItemOfSetEntityCopyWith<$Res> get itemOfSet;
}

/// @nodoc
class __$$SaveItemEventCopyWithImpl<$Res>
    extends _$AddUpdateItemEventCopyWithImpl<$Res, _$SaveItemEvent>
    implements _$$SaveItemEventCopyWith<$Res> {
  __$$SaveItemEventCopyWithImpl(
      _$SaveItemEvent _value, $Res Function(_$SaveItemEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSet = null,
    Object? itemOfSet = null,
    Object? indexOfItem = null,
  }) {
    return _then(_$SaveItemEvent(
      timeSet: null == timeSet
          ? _value.timeSet
          : timeSet // ignore: cast_nullable_to_non_nullable
              as TimeSetEntity,
      itemOfSet: null == itemOfSet
          ? _value.itemOfSet
          : itemOfSet // ignore: cast_nullable_to_non_nullable
              as ItemOfSetEntity,
      indexOfItem: null == indexOfItem
          ? _value.indexOfItem
          : indexOfItem // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SaveItemEvent implements SaveItemEvent {
  const _$SaveItemEvent(
      {required this.timeSet,
      required this.itemOfSet,
      required this.indexOfItem});

  @override
  final TimeSetEntity timeSet;
  @override
  final ItemOfSetEntity itemOfSet;
  @override
  final int indexOfItem;

  @override
  String toString() {
    return 'AddUpdateItemEvent.saveItem(timeSet: $timeSet, itemOfSet: $itemOfSet, indexOfItem: $indexOfItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveItemEvent &&
            (identical(other.timeSet, timeSet) || other.timeSet == timeSet) &&
            (identical(other.itemOfSet, itemOfSet) ||
                other.itemOfSet == itemOfSet) &&
            (identical(other.indexOfItem, indexOfItem) ||
                other.indexOfItem == indexOfItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeSet, itemOfSet, indexOfItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveItemEventCopyWith<_$SaveItemEvent> get copyWith =>
      __$$SaveItemEventCopyWithImpl<_$SaveItemEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TimeSetEntity timeSet, ItemOfSetEntity itemOfSet, int indexOfItem)
        saveItem,
  }) {
    return saveItem(timeSet, itemOfSet, indexOfItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            TimeSetEntity timeSet, ItemOfSetEntity itemOfSet, int indexOfItem)?
        saveItem,
  }) {
    return saveItem?.call(timeSet, itemOfSet, indexOfItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            TimeSetEntity timeSet, ItemOfSetEntity itemOfSet, int indexOfItem)?
        saveItem,
    required TResult orElse(),
  }) {
    if (saveItem != null) {
      return saveItem(timeSet, itemOfSet, indexOfItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveItemEvent value) saveItem,
  }) {
    return saveItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveItemEvent value)? saveItem,
  }) {
    return saveItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveItemEvent value)? saveItem,
    required TResult orElse(),
  }) {
    if (saveItem != null) {
      return saveItem(this);
    }
    return orElse();
  }
}

abstract class SaveItemEvent implements AddUpdateItemEvent {
  const factory SaveItemEvent(
      {required final TimeSetEntity timeSet,
      required final ItemOfSetEntity itemOfSet,
      required final int indexOfItem}) = _$SaveItemEvent;

  @override
  TimeSetEntity get timeSet;
  @override
  ItemOfSetEntity get itemOfSet;
  @override
  int get indexOfItem;
  @override
  @JsonKey(ignore: true)
  _$$SaveItemEventCopyWith<_$SaveItemEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddUpdateItemState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() saved,
    required TResult Function() saving,
    required TResult Function(String? message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? saved,
    TResult? Function()? saving,
    TResult? Function(String? message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saved,
    TResult Function()? saving,
    TResult Function(String? message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saved value)? saved,
    TResult Function(_Saving value)? saving,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUpdateItemStateCopyWith<$Res> {
  factory $AddUpdateItemStateCopyWith(
          AddUpdateItemState value, $Res Function(AddUpdateItemState) then) =
      _$AddUpdateItemStateCopyWithImpl<$Res, AddUpdateItemState>;
}

/// @nodoc
class _$AddUpdateItemStateCopyWithImpl<$Res, $Val extends AddUpdateItemState>
    implements $AddUpdateItemStateCopyWith<$Res> {
  _$AddUpdateItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AddUpdateItemStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AddUpdateItemState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() saved,
    required TResult Function() saving,
    required TResult Function(String? message) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? saved,
    TResult? Function()? saving,
    TResult? Function(String? message)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saved,
    TResult Function()? saving,
    TResult Function(String? message)? failed,
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
    required TResult Function(_Saved value) saved,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saved value)? saved,
    TResult Function(_Saving value)? saving,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddUpdateItemState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$AddUpdateItemStateCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'AddUpdateItemState.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() saved,
    required TResult Function() saving,
    required TResult Function(String? message) failed,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? saved,
    TResult? Function()? saving,
    TResult? Function(String? message)? failed,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saved,
    TResult Function()? saving,
    TResult Function(String? message)? failed,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Failed value) failed,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Failed value)? failed,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saved value)? saved,
    TResult Function(_Saving value)? saving,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements AddUpdateItemState {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
abstract class _$$_SavingCopyWith<$Res> {
  factory _$$_SavingCopyWith(_$_Saving value, $Res Function(_$_Saving) then) =
      __$$_SavingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavingCopyWithImpl<$Res>
    extends _$AddUpdateItemStateCopyWithImpl<$Res, _$_Saving>
    implements _$$_SavingCopyWith<$Res> {
  __$$_SavingCopyWithImpl(_$_Saving _value, $Res Function(_$_Saving) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saving implements _Saving {
  const _$_Saving();

  @override
  String toString() {
    return 'AddUpdateItemState.saving()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Saving);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() saved,
    required TResult Function() saving,
    required TResult Function(String? message) failed,
  }) {
    return saving();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? saved,
    TResult? Function()? saving,
    TResult? Function(String? message)? failed,
  }) {
    return saving?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saved,
    TResult Function()? saving,
    TResult Function(String? message)? failed,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Failed value) failed,
  }) {
    return saving(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Failed value)? failed,
  }) {
    return saving?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saved value)? saved,
    TResult Function(_Saving value)? saving,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving(this);
    }
    return orElse();
  }
}

abstract class _Saving implements AddUpdateItemState {
  const factory _Saving() = _$_Saving;
}

/// @nodoc
abstract class _$$_FailedCopyWith<$Res> {
  factory _$$_FailedCopyWith(_$_Failed value, $Res Function(_$_Failed) then) =
      __$$_FailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_FailedCopyWithImpl<$Res>
    extends _$AddUpdateItemStateCopyWithImpl<$Res, _$_Failed>
    implements _$$_FailedCopyWith<$Res> {
  __$$_FailedCopyWithImpl(_$_Failed _value, $Res Function(_$_Failed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_Failed(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'AddUpdateItemState.failed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failed &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailedCopyWith<_$_Failed> get copyWith =>
      __$$_FailedCopyWithImpl<_$_Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() saved,
    required TResult Function() saving,
    required TResult Function(String? message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? saved,
    TResult? Function()? saving,
    TResult? Function(String? message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saved,
    TResult Function()? saving,
    TResult Function(String? message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saved value)? saved,
    TResult Function(_Saving value)? saving,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements AddUpdateItemState {
  const factory _Failed({final String? message}) = _$_Failed;

  String? get message;
  @JsonKey(ignore: true)
  _$$_FailedCopyWith<_$_Failed> get copyWith =>
      throw _privateConstructorUsedError;
}
