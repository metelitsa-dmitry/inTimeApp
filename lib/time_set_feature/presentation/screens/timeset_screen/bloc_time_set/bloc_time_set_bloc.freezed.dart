// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc_time_set_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimeSetEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String id) getTimeSet,
    required TResult Function(String id) saveAsTimeSet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String id)? getTimeSet,
    TResult? Function(String id)? saveAsTimeSet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String id)? getTimeSet,
    TResult Function(String id)? saveAsTimeSet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimeSetInitialEvent value) initial,
    required TResult Function(GetTimeSetEvent value) getTimeSet,
    required TResult Function(SaveAsTimeSetEvent value) saveAsTimeSet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimeSetInitialEvent value)? initial,
    TResult? Function(GetTimeSetEvent value)? getTimeSet,
    TResult? Function(SaveAsTimeSetEvent value)? saveAsTimeSet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimeSetInitialEvent value)? initial,
    TResult Function(GetTimeSetEvent value)? getTimeSet,
    TResult Function(SaveAsTimeSetEvent value)? saveAsTimeSet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeSetEventCopyWith<$Res> {
  factory $TimeSetEventCopyWith(
          TimeSetEvent value, $Res Function(TimeSetEvent) then) =
      _$TimeSetEventCopyWithImpl<$Res, TimeSetEvent>;
}

/// @nodoc
class _$TimeSetEventCopyWithImpl<$Res, $Val extends TimeSetEvent>
    implements $TimeSetEventCopyWith<$Res> {
  _$TimeSetEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TimeSetInitialEventCopyWith<$Res> {
  factory _$$TimeSetInitialEventCopyWith(_$TimeSetInitialEvent value,
          $Res Function(_$TimeSetInitialEvent) then) =
      __$$TimeSetInitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimeSetInitialEventCopyWithImpl<$Res>
    extends _$TimeSetEventCopyWithImpl<$Res, _$TimeSetInitialEvent>
    implements _$$TimeSetInitialEventCopyWith<$Res> {
  __$$TimeSetInitialEventCopyWithImpl(
      _$TimeSetInitialEvent _value, $Res Function(_$TimeSetInitialEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimeSetInitialEvent implements TimeSetInitialEvent {
  const _$TimeSetInitialEvent();

  @override
  String toString() {
    return 'TimeSetEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimeSetInitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String id) getTimeSet,
    required TResult Function(String id) saveAsTimeSet,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String id)? getTimeSet,
    TResult? Function(String id)? saveAsTimeSet,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String id)? getTimeSet,
    TResult Function(String id)? saveAsTimeSet,
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
    required TResult Function(TimeSetInitialEvent value) initial,
    required TResult Function(GetTimeSetEvent value) getTimeSet,
    required TResult Function(SaveAsTimeSetEvent value) saveAsTimeSet,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimeSetInitialEvent value)? initial,
    TResult? Function(GetTimeSetEvent value)? getTimeSet,
    TResult? Function(SaveAsTimeSetEvent value)? saveAsTimeSet,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimeSetInitialEvent value)? initial,
    TResult Function(GetTimeSetEvent value)? getTimeSet,
    TResult Function(SaveAsTimeSetEvent value)? saveAsTimeSet,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TimeSetInitialEvent implements TimeSetEvent {
  const factory TimeSetInitialEvent() = _$TimeSetInitialEvent;
}

/// @nodoc
abstract class _$$GetTimeSetEventCopyWith<$Res> {
  factory _$$GetTimeSetEventCopyWith(
          _$GetTimeSetEvent value, $Res Function(_$GetTimeSetEvent) then) =
      __$$GetTimeSetEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetTimeSetEventCopyWithImpl<$Res>
    extends _$TimeSetEventCopyWithImpl<$Res, _$GetTimeSetEvent>
    implements _$$GetTimeSetEventCopyWith<$Res> {
  __$$GetTimeSetEventCopyWithImpl(
      _$GetTimeSetEvent _value, $Res Function(_$GetTimeSetEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetTimeSetEvent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTimeSetEvent implements GetTimeSetEvent {
  const _$GetTimeSetEvent({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'TimeSetEvent.getTimeSet(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTimeSetEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTimeSetEventCopyWith<_$GetTimeSetEvent> get copyWith =>
      __$$GetTimeSetEventCopyWithImpl<_$GetTimeSetEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String id) getTimeSet,
    required TResult Function(String id) saveAsTimeSet,
  }) {
    return getTimeSet(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String id)? getTimeSet,
    TResult? Function(String id)? saveAsTimeSet,
  }) {
    return getTimeSet?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String id)? getTimeSet,
    TResult Function(String id)? saveAsTimeSet,
    required TResult orElse(),
  }) {
    if (getTimeSet != null) {
      return getTimeSet(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimeSetInitialEvent value) initial,
    required TResult Function(GetTimeSetEvent value) getTimeSet,
    required TResult Function(SaveAsTimeSetEvent value) saveAsTimeSet,
  }) {
    return getTimeSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimeSetInitialEvent value)? initial,
    TResult? Function(GetTimeSetEvent value)? getTimeSet,
    TResult? Function(SaveAsTimeSetEvent value)? saveAsTimeSet,
  }) {
    return getTimeSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimeSetInitialEvent value)? initial,
    TResult Function(GetTimeSetEvent value)? getTimeSet,
    TResult Function(SaveAsTimeSetEvent value)? saveAsTimeSet,
    required TResult orElse(),
  }) {
    if (getTimeSet != null) {
      return getTimeSet(this);
    }
    return orElse();
  }
}

abstract class GetTimeSetEvent implements TimeSetEvent {
  const factory GetTimeSetEvent({required final String id}) = _$GetTimeSetEvent;

  String get id;
  @JsonKey(ignore: true)
  _$$GetTimeSetEventCopyWith<_$GetTimeSetEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveAsTimeSetEventCopyWith<$Res> {
  factory _$$SaveAsTimeSetEventCopyWith(_$SaveAsTimeSetEvent value,
          $Res Function(_$SaveAsTimeSetEvent) then) =
      __$$SaveAsTimeSetEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$SaveAsTimeSetEventCopyWithImpl<$Res>
    extends _$TimeSetEventCopyWithImpl<$Res, _$SaveAsTimeSetEvent>
    implements _$$SaveAsTimeSetEventCopyWith<$Res> {
  __$$SaveAsTimeSetEventCopyWithImpl(
      _$SaveAsTimeSetEvent _value, $Res Function(_$SaveAsTimeSetEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SaveAsTimeSetEvent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveAsTimeSetEvent implements SaveAsTimeSetEvent {
  const _$SaveAsTimeSetEvent({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'TimeSetEvent.saveAsTimeSet(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveAsTimeSetEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveAsTimeSetEventCopyWith<_$SaveAsTimeSetEvent> get copyWith =>
      __$$SaveAsTimeSetEventCopyWithImpl<_$SaveAsTimeSetEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String id) getTimeSet,
    required TResult Function(String id) saveAsTimeSet,
  }) {
    return saveAsTimeSet(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String id)? getTimeSet,
    TResult? Function(String id)? saveAsTimeSet,
  }) {
    return saveAsTimeSet?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String id)? getTimeSet,
    TResult Function(String id)? saveAsTimeSet,
    required TResult orElse(),
  }) {
    if (saveAsTimeSet != null) {
      return saveAsTimeSet(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimeSetInitialEvent value) initial,
    required TResult Function(GetTimeSetEvent value) getTimeSet,
    required TResult Function(SaveAsTimeSetEvent value) saveAsTimeSet,
  }) {
    return saveAsTimeSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimeSetInitialEvent value)? initial,
    TResult? Function(GetTimeSetEvent value)? getTimeSet,
    TResult? Function(SaveAsTimeSetEvent value)? saveAsTimeSet,
  }) {
    return saveAsTimeSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimeSetInitialEvent value)? initial,
    TResult Function(GetTimeSetEvent value)? getTimeSet,
    TResult Function(SaveAsTimeSetEvent value)? saveAsTimeSet,
    required TResult orElse(),
  }) {
    if (saveAsTimeSet != null) {
      return saveAsTimeSet(this);
    }
    return orElse();
  }
}

abstract class SaveAsTimeSetEvent implements TimeSetEvent {
  const factory SaveAsTimeSetEvent({required final String id}) =
      _$SaveAsTimeSetEvent;

  String get id;
  @JsonKey(ignore: true)
  _$$SaveAsTimeSetEventCopyWith<_$SaveAsTimeSetEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TimeSetState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TimeSetEntity timeSet) loadedTimeSet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TimeSetEntity timeSet)? loadedTimeSet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TimeSetEntity timeSet)? loadedTimeSet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedTimeSet value) loadedTimeSet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedTimeSet value)? loadedTimeSet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedTimeSet value)? loadedTimeSet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeSetStateCopyWith<$Res> {
  factory $TimeSetStateCopyWith(
          TimeSetState value, $Res Function(TimeSetState) then) =
      _$TimeSetStateCopyWithImpl<$Res, TimeSetState>;
}

/// @nodoc
class _$TimeSetStateCopyWithImpl<$Res, $Val extends TimeSetState>
    implements $TimeSetStateCopyWith<$Res> {
  _$TimeSetStateCopyWithImpl(this._value, this._then);

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
    extends _$TimeSetStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TimeSetState.initial()';
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
    required TResult Function(TimeSetEntity timeSet) loadedTimeSet,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TimeSetEntity timeSet)? loadedTimeSet,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TimeSetEntity timeSet)? loadedTimeSet,
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
    required TResult Function(_LoadedTimeSet value) loadedTimeSet,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedTimeSet value)? loadedTimeSet,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedTimeSet value)? loadedTimeSet,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TimeSetState {
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
    extends _$TimeSetStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'TimeSetState.loading()';
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
    required TResult Function(TimeSetEntity timeSet) loadedTimeSet,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TimeSetEntity timeSet)? loadedTimeSet,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TimeSetEntity timeSet)? loadedTimeSet,
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
    required TResult Function(_LoadedTimeSet value) loadedTimeSet,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedTimeSet value)? loadedTimeSet,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedTimeSet value)? loadedTimeSet,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TimeSetState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedTimeSetCopyWith<$Res> {
  factory _$$_LoadedTimeSetCopyWith(
          _$_LoadedTimeSet value, $Res Function(_$_LoadedTimeSet) then) =
      __$$_LoadedTimeSetCopyWithImpl<$Res>;
  @useResult
  $Res call({TimeSetEntity timeSet});

  $TimeSetEntityCopyWith<$Res> get timeSet;
}

/// @nodoc
class __$$_LoadedTimeSetCopyWithImpl<$Res>
    extends _$TimeSetStateCopyWithImpl<$Res, _$_LoadedTimeSet>
    implements _$$_LoadedTimeSetCopyWith<$Res> {
  __$$_LoadedTimeSetCopyWithImpl(
      _$_LoadedTimeSet _value, $Res Function(_$_LoadedTimeSet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSet = null,
  }) {
    return _then(_$_LoadedTimeSet(
      timeSet: null == timeSet
          ? _value.timeSet
          : timeSet // ignore: cast_nullable_to_non_nullable
              as TimeSetEntity,
    ));
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

class _$_LoadedTimeSet implements _LoadedTimeSet {
  const _$_LoadedTimeSet({required this.timeSet});

  @override
  final TimeSetEntity timeSet;

  @override
  String toString() {
    return 'TimeSetState.loadedTimeSet(timeSet: $timeSet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedTimeSet &&
            (identical(other.timeSet, timeSet) || other.timeSet == timeSet));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeSet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedTimeSetCopyWith<_$_LoadedTimeSet> get copyWith =>
      __$$_LoadedTimeSetCopyWithImpl<_$_LoadedTimeSet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TimeSetEntity timeSet) loadedTimeSet,
  }) {
    return loadedTimeSet(timeSet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TimeSetEntity timeSet)? loadedTimeSet,
  }) {
    return loadedTimeSet?.call(timeSet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TimeSetEntity timeSet)? loadedTimeSet,
    required TResult orElse(),
  }) {
    if (loadedTimeSet != null) {
      return loadedTimeSet(timeSet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedTimeSet value) loadedTimeSet,
  }) {
    return loadedTimeSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedTimeSet value)? loadedTimeSet,
  }) {
    return loadedTimeSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedTimeSet value)? loadedTimeSet,
    required TResult orElse(),
  }) {
    if (loadedTimeSet != null) {
      return loadedTimeSet(this);
    }
    return orElse();
  }
}

abstract class _LoadedTimeSet implements TimeSetState {
  const factory _LoadedTimeSet({required final TimeSetEntity timeSet}) =
      _$_LoadedTimeSet;

  TimeSetEntity get timeSet;
  @JsonKey(ignore: true)
  _$$_LoadedTimeSetCopyWith<_$_LoadedTimeSet> get copyWith =>
      throw _privateConstructorUsedError;
}
