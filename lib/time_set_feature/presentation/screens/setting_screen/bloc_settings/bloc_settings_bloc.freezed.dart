// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc_settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() increaseCount,
    required TResult Function() decreaseCount,
    required TResult Function(TimeOfDay newDefaultDurationTimeSet)
        changeDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? increaseCount,
    TResult? Function()? decreaseCount,
    TResult? Function(TimeOfDay newDefaultDurationTimeSet)? changeDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? increaseCount,
    TResult Function()? decreaseCount,
    TResult Function(TimeOfDay newDefaultDurationTimeSet)? changeDuration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_IncreaseCountEvent value) increaseCount,
    required TResult Function(_DecreaseCountEvent value) decreaseCount,
    required TResult Function(_ChangeDurationEvent value) changeDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_IncreaseCountEvent value)? increaseCount,
    TResult? Function(_DecreaseCountEvent value)? decreaseCount,
    TResult? Function(_ChangeDurationEvent value)? changeDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_IncreaseCountEvent value)? increaseCount,
    TResult Function(_DecreaseCountEvent value)? decreaseCount,
    TResult Function(_ChangeDurationEvent value)? changeDuration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitializeCopyWith<$Res> {
  factory _$$_InitializeCopyWith(
          _$_Initialize value, $Res Function(_$_Initialize) then) =
      __$$_InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitializeCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$_Initialize>
    implements _$$_InitializeCopyWith<$Res> {
  __$$_InitializeCopyWithImpl(
      _$_Initialize _value, $Res Function(_$_Initialize) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initialize implements _Initialize {
  const _$_Initialize();

  @override
  String toString() {
    return 'SettingsEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() increaseCount,
    required TResult Function() decreaseCount,
    required TResult Function(TimeOfDay newDefaultDurationTimeSet)
        changeDuration,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? increaseCount,
    TResult? Function()? decreaseCount,
    TResult? Function(TimeOfDay newDefaultDurationTimeSet)? changeDuration,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? increaseCount,
    TResult Function()? decreaseCount,
    TResult Function(TimeOfDay newDefaultDurationTimeSet)? changeDuration,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_IncreaseCountEvent value) increaseCount,
    required TResult Function(_DecreaseCountEvent value) decreaseCount,
    required TResult Function(_ChangeDurationEvent value) changeDuration,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_IncreaseCountEvent value)? increaseCount,
    TResult? Function(_DecreaseCountEvent value)? decreaseCount,
    TResult? Function(_ChangeDurationEvent value)? changeDuration,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_IncreaseCountEvent value)? increaseCount,
    TResult Function(_DecreaseCountEvent value)? decreaseCount,
    TResult Function(_ChangeDurationEvent value)? changeDuration,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements SettingsEvent {
  const factory _Initialize() = _$_Initialize;
}

/// @nodoc
abstract class _$$_IncreaseCountEventCopyWith<$Res> {
  factory _$$_IncreaseCountEventCopyWith(_$_IncreaseCountEvent value,
          $Res Function(_$_IncreaseCountEvent) then) =
      __$$_IncreaseCountEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IncreaseCountEventCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$_IncreaseCountEvent>
    implements _$$_IncreaseCountEventCopyWith<$Res> {
  __$$_IncreaseCountEventCopyWithImpl(
      _$_IncreaseCountEvent _value, $Res Function(_$_IncreaseCountEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IncreaseCountEvent implements _IncreaseCountEvent {
  const _$_IncreaseCountEvent();

  @override
  String toString() {
    return 'SettingsEvent.increaseCount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IncreaseCountEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() increaseCount,
    required TResult Function() decreaseCount,
    required TResult Function(TimeOfDay newDefaultDurationTimeSet)
        changeDuration,
  }) {
    return increaseCount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? increaseCount,
    TResult? Function()? decreaseCount,
    TResult? Function(TimeOfDay newDefaultDurationTimeSet)? changeDuration,
  }) {
    return increaseCount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? increaseCount,
    TResult Function()? decreaseCount,
    TResult Function(TimeOfDay newDefaultDurationTimeSet)? changeDuration,
    required TResult orElse(),
  }) {
    if (increaseCount != null) {
      return increaseCount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_IncreaseCountEvent value) increaseCount,
    required TResult Function(_DecreaseCountEvent value) decreaseCount,
    required TResult Function(_ChangeDurationEvent value) changeDuration,
  }) {
    return increaseCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_IncreaseCountEvent value)? increaseCount,
    TResult? Function(_DecreaseCountEvent value)? decreaseCount,
    TResult? Function(_ChangeDurationEvent value)? changeDuration,
  }) {
    return increaseCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_IncreaseCountEvent value)? increaseCount,
    TResult Function(_DecreaseCountEvent value)? decreaseCount,
    TResult Function(_ChangeDurationEvent value)? changeDuration,
    required TResult orElse(),
  }) {
    if (increaseCount != null) {
      return increaseCount(this);
    }
    return orElse();
  }
}

abstract class _IncreaseCountEvent implements SettingsEvent {
  const factory _IncreaseCountEvent() = _$_IncreaseCountEvent;
}

/// @nodoc
abstract class _$$_DecreaseCountEventCopyWith<$Res> {
  factory _$$_DecreaseCountEventCopyWith(_$_DecreaseCountEvent value,
          $Res Function(_$_DecreaseCountEvent) then) =
      __$$_DecreaseCountEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DecreaseCountEventCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$_DecreaseCountEvent>
    implements _$$_DecreaseCountEventCopyWith<$Res> {
  __$$_DecreaseCountEventCopyWithImpl(
      _$_DecreaseCountEvent _value, $Res Function(_$_DecreaseCountEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DecreaseCountEvent implements _DecreaseCountEvent {
  const _$_DecreaseCountEvent();

  @override
  String toString() {
    return 'SettingsEvent.decreaseCount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DecreaseCountEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() increaseCount,
    required TResult Function() decreaseCount,
    required TResult Function(TimeOfDay newDefaultDurationTimeSet)
        changeDuration,
  }) {
    return decreaseCount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? increaseCount,
    TResult? Function()? decreaseCount,
    TResult? Function(TimeOfDay newDefaultDurationTimeSet)? changeDuration,
  }) {
    return decreaseCount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? increaseCount,
    TResult Function()? decreaseCount,
    TResult Function(TimeOfDay newDefaultDurationTimeSet)? changeDuration,
    required TResult orElse(),
  }) {
    if (decreaseCount != null) {
      return decreaseCount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_IncreaseCountEvent value) increaseCount,
    required TResult Function(_DecreaseCountEvent value) decreaseCount,
    required TResult Function(_ChangeDurationEvent value) changeDuration,
  }) {
    return decreaseCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_IncreaseCountEvent value)? increaseCount,
    TResult? Function(_DecreaseCountEvent value)? decreaseCount,
    TResult? Function(_ChangeDurationEvent value)? changeDuration,
  }) {
    return decreaseCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_IncreaseCountEvent value)? increaseCount,
    TResult Function(_DecreaseCountEvent value)? decreaseCount,
    TResult Function(_ChangeDurationEvent value)? changeDuration,
    required TResult orElse(),
  }) {
    if (decreaseCount != null) {
      return decreaseCount(this);
    }
    return orElse();
  }
}

abstract class _DecreaseCountEvent implements SettingsEvent {
  const factory _DecreaseCountEvent() = _$_DecreaseCountEvent;
}

/// @nodoc
abstract class _$$_ChangeDurationEventCopyWith<$Res> {
  factory _$$_ChangeDurationEventCopyWith(_$_ChangeDurationEvent value,
          $Res Function(_$_ChangeDurationEvent) then) =
      __$$_ChangeDurationEventCopyWithImpl<$Res>;
  @useResult
  $Res call({TimeOfDay newDefaultDurationTimeSet});
}

/// @nodoc
class __$$_ChangeDurationEventCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$_ChangeDurationEvent>
    implements _$$_ChangeDurationEventCopyWith<$Res> {
  __$$_ChangeDurationEventCopyWithImpl(_$_ChangeDurationEvent _value,
      $Res Function(_$_ChangeDurationEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newDefaultDurationTimeSet = null,
  }) {
    return _then(_$_ChangeDurationEvent(
      newDefaultDurationTimeSet: null == newDefaultDurationTimeSet
          ? _value.newDefaultDurationTimeSet
          : newDefaultDurationTimeSet // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

/// @nodoc

class _$_ChangeDurationEvent implements _ChangeDurationEvent {
  const _$_ChangeDurationEvent({required this.newDefaultDurationTimeSet});

  @override
  final TimeOfDay newDefaultDurationTimeSet;

  @override
  String toString() {
    return 'SettingsEvent.changeDuration(newDefaultDurationTimeSet: $newDefaultDurationTimeSet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeDurationEvent &&
            (identical(other.newDefaultDurationTimeSet,
                    newDefaultDurationTimeSet) ||
                other.newDefaultDurationTimeSet == newDefaultDurationTimeSet));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newDefaultDurationTimeSet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeDurationEventCopyWith<_$_ChangeDurationEvent> get copyWith =>
      __$$_ChangeDurationEventCopyWithImpl<_$_ChangeDurationEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() increaseCount,
    required TResult Function() decreaseCount,
    required TResult Function(TimeOfDay newDefaultDurationTimeSet)
        changeDuration,
  }) {
    return changeDuration(newDefaultDurationTimeSet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? increaseCount,
    TResult? Function()? decreaseCount,
    TResult? Function(TimeOfDay newDefaultDurationTimeSet)? changeDuration,
  }) {
    return changeDuration?.call(newDefaultDurationTimeSet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? increaseCount,
    TResult Function()? decreaseCount,
    TResult Function(TimeOfDay newDefaultDurationTimeSet)? changeDuration,
    required TResult orElse(),
  }) {
    if (changeDuration != null) {
      return changeDuration(newDefaultDurationTimeSet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_IncreaseCountEvent value) increaseCount,
    required TResult Function(_DecreaseCountEvent value) decreaseCount,
    required TResult Function(_ChangeDurationEvent value) changeDuration,
  }) {
    return changeDuration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_IncreaseCountEvent value)? increaseCount,
    TResult? Function(_DecreaseCountEvent value)? decreaseCount,
    TResult? Function(_ChangeDurationEvent value)? changeDuration,
  }) {
    return changeDuration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_IncreaseCountEvent value)? increaseCount,
    TResult Function(_DecreaseCountEvent value)? decreaseCount,
    TResult Function(_ChangeDurationEvent value)? changeDuration,
    required TResult orElse(),
  }) {
    if (changeDuration != null) {
      return changeDuration(this);
    }
    return orElse();
  }
}

abstract class _ChangeDurationEvent implements SettingsEvent {
  const factory _ChangeDurationEvent(
          {required final TimeOfDay newDefaultDurationTimeSet}) =
      _$_ChangeDurationEvent;

  TimeOfDay get newDefaultDurationTimeSet;
  @JsonKey(ignore: true)
  _$$_ChangeDurationEventCopyWith<_$_ChangeDurationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int defaultNumberItems,
            int defaultDurationSetHour, int defaultDurationSetMinute)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int defaultNumberItems, int defaultDurationSetHour,
            int defaultDurationSetMinute)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int defaultNumberItems, int defaultDurationSetHour,
            int defaultDurationSetMinute)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

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
    extends _$SettingsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SettingsState.initial()';
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
    required TResult Function() loading,
    required TResult Function(int defaultNumberItems,
            int defaultDurationSetHour, int defaultDurationSetMinute)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int defaultNumberItems, int defaultDurationSetHour,
            int defaultDurationSetMinute)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int defaultNumberItems, int defaultDurationSetHour,
            int defaultDurationSetMinute)?
        loaded,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SettingsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'SettingsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int defaultNumberItems,
            int defaultDurationSetHour, int defaultDurationSetMinute)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int defaultNumberItems, int defaultDurationSetHour,
            int defaultDurationSetMinute)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int defaultNumberItems, int defaultDurationSetHour,
            int defaultDurationSetMinute)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SettingsState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int defaultNumberItems,
      int defaultDurationSetHour,
      int defaultDurationSetMinute});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultNumberItems = null,
    Object? defaultDurationSetHour = null,
    Object? defaultDurationSetMinute = null,
  }) {
    return _then(_$_Loaded(
      defaultNumberItems: null == defaultNumberItems
          ? _value.defaultNumberItems
          : defaultNumberItems // ignore: cast_nullable_to_non_nullable
              as int,
      defaultDurationSetHour: null == defaultDurationSetHour
          ? _value.defaultDurationSetHour
          : defaultDurationSetHour // ignore: cast_nullable_to_non_nullable
              as int,
      defaultDurationSetMinute: null == defaultDurationSetMinute
          ? _value.defaultDurationSetMinute
          : defaultDurationSetMinute // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {required this.defaultNumberItems,
      required this.defaultDurationSetHour,
      required this.defaultDurationSetMinute});

  @override
  final int defaultNumberItems;
  @override
  final int defaultDurationSetHour;
  @override
  final int defaultDurationSetMinute;

  @override
  String toString() {
    return 'SettingsState.loaded(defaultNumberItems: $defaultNumberItems, defaultDurationSetHour: $defaultDurationSetHour, defaultDurationSetMinute: $defaultDurationSetMinute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            (identical(other.defaultNumberItems, defaultNumberItems) ||
                other.defaultNumberItems == defaultNumberItems) &&
            (identical(other.defaultDurationSetHour, defaultDurationSetHour) ||
                other.defaultDurationSetHour == defaultDurationSetHour) &&
            (identical(
                    other.defaultDurationSetMinute, defaultDurationSetMinute) ||
                other.defaultDurationSetMinute == defaultDurationSetMinute));
  }

  @override
  int get hashCode => Object.hash(runtimeType, defaultNumberItems,
      defaultDurationSetHour, defaultDurationSetMinute);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int defaultNumberItems,
            int defaultDurationSetHour, int defaultDurationSetMinute)
        loaded,
  }) {
    return loaded(
        defaultNumberItems, defaultDurationSetHour, defaultDurationSetMinute);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int defaultNumberItems, int defaultDurationSetHour,
            int defaultDurationSetMinute)?
        loaded,
  }) {
    return loaded?.call(
        defaultNumberItems, defaultDurationSetHour, defaultDurationSetMinute);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int defaultNumberItems, int defaultDurationSetHour,
            int defaultDurationSetMinute)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          defaultNumberItems, defaultDurationSetHour, defaultDurationSetMinute);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements SettingsState {
  const factory _Loaded(
      {required final int defaultNumberItems,
      required final int defaultDurationSetHour,
      required final int defaultDurationSetMinute}) = _$_Loaded;

  int get defaultNumberItems;
  int get defaultDurationSetHour;
  int get defaultDurationSetMinute;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}
