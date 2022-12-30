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
  ItemOfSetEntity? get itemOfSet => throw _privateConstructorUsedError;
  TimeSetEntity get timeSet => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemInitialEvent value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ItemInitialEvent value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemInitialEvent value)? initial,
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
  $Res call({ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet});

  $ItemOfSetEntityCopyWith<$Res>? get itemOfSet;
  $TimeSetEntityCopyWith<$Res> get timeSet;
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
    Object? itemOfSet = freezed,
    Object? timeSet = null,
  }) {
    return _then(_value.copyWith(
      itemOfSet: freezed == itemOfSet
          ? _value.itemOfSet
          : itemOfSet // ignore: cast_nullable_to_non_nullable
              as ItemOfSetEntity?,
      timeSet: null == timeSet
          ? _value.timeSet
          : timeSet // ignore: cast_nullable_to_non_nullable
              as TimeSetEntity,
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
  $TimeSetEntityCopyWith<$Res> get timeSet {
    return $TimeSetEntityCopyWith<$Res>(_value.timeSet, (value) {
      return _then(_value.copyWith(timeSet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemInitialEventCopyWith<$Res>
    implements $AddUpdateItemEventCopyWith<$Res> {
  factory _$$ItemInitialEventCopyWith(
          _$ItemInitialEvent value, $Res Function(_$ItemInitialEvent) then) =
      __$$ItemInitialEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet});

  @override
  $ItemOfSetEntityCopyWith<$Res>? get itemOfSet;
  @override
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
  }) {
    return initial(itemOfSet, timeSet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet)?
        initial,
  }) {
    return initial?.call(itemOfSet, timeSet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemOfSetEntity? itemOfSet, TimeSetEntity timeSet)?
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
    required TResult Function(ItemInitialEvent value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ItemInitialEvent value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemInitialEvent value)? initial,
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

  @override
  ItemOfSetEntity? get itemOfSet;
  @override
  TimeSetEntity get timeSet;
  @override
  @JsonKey(ignore: true)
  _$$ItemInitialEventCopyWith<_$ItemInitialEvent> get copyWith =>
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
