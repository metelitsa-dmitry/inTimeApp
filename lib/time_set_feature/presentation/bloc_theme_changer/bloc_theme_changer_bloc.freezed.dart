// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc_theme_changer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThemeChangerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isDark) changeLightDarkTheme,
    required TResult Function(bool isM3) changeDesignTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isDark)? changeLightDarkTheme,
    TResult? Function(bool isM3)? changeDesignTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isDark)? changeLightDarkTheme,
    TResult Function(bool isM3)? changeDesignTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeLightDarkThemeEvent value)
        changeLightDarkTheme,
    required TResult Function(_ChangeDesignThemeEvent value) changeDesignTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeLightDarkThemeEvent value)? changeLightDarkTheme,
    TResult? Function(_ChangeDesignThemeEvent value)? changeDesignTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeLightDarkThemeEvent value)? changeLightDarkTheme,
    TResult Function(_ChangeDesignThemeEvent value)? changeDesignTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeChangerEventCopyWith<$Res> {
  factory $ThemeChangerEventCopyWith(
          ThemeChangerEvent value, $Res Function(ThemeChangerEvent) then) =
      _$ThemeChangerEventCopyWithImpl<$Res, ThemeChangerEvent>;
}

/// @nodoc
class _$ThemeChangerEventCopyWithImpl<$Res, $Val extends ThemeChangerEvent>
    implements $ThemeChangerEventCopyWith<$Res> {
  _$ThemeChangerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$ThemeChangerEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ThemeChangerEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isDark) changeLightDarkTheme,
    required TResult Function(bool isM3) changeDesignTheme,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isDark)? changeLightDarkTheme,
    TResult? Function(bool isM3)? changeDesignTheme,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isDark)? changeLightDarkTheme,
    TResult Function(bool isM3)? changeDesignTheme,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeLightDarkThemeEvent value)
        changeLightDarkTheme,
    required TResult Function(_ChangeDesignThemeEvent value) changeDesignTheme,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeLightDarkThemeEvent value)? changeLightDarkTheme,
    TResult? Function(_ChangeDesignThemeEvent value)? changeDesignTheme,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeLightDarkThemeEvent value)? changeLightDarkTheme,
    TResult Function(_ChangeDesignThemeEvent value)? changeDesignTheme,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ThemeChangerEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_ChangeLightDarkThemeEventCopyWith<$Res> {
  factory _$$_ChangeLightDarkThemeEventCopyWith(
          _$_ChangeLightDarkThemeEvent value,
          $Res Function(_$_ChangeLightDarkThemeEvent) then) =
      __$$_ChangeLightDarkThemeEventCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isDark});
}

/// @nodoc
class __$$_ChangeLightDarkThemeEventCopyWithImpl<$Res>
    extends _$ThemeChangerEventCopyWithImpl<$Res, _$_ChangeLightDarkThemeEvent>
    implements _$$_ChangeLightDarkThemeEventCopyWith<$Res> {
  __$$_ChangeLightDarkThemeEventCopyWithImpl(
      _$_ChangeLightDarkThemeEvent _value,
      $Res Function(_$_ChangeLightDarkThemeEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = null,
  }) {
    return _then(_$_ChangeLightDarkThemeEvent(
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeLightDarkThemeEvent implements _ChangeLightDarkThemeEvent {
  const _$_ChangeLightDarkThemeEvent({required this.isDark});

  @override
  final bool isDark;

  @override
  String toString() {
    return 'ThemeChangerEvent.changeLightDarkTheme(isDark: $isDark)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeLightDarkThemeEvent &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeLightDarkThemeEventCopyWith<_$_ChangeLightDarkThemeEvent>
      get copyWith => __$$_ChangeLightDarkThemeEventCopyWithImpl<
          _$_ChangeLightDarkThemeEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isDark) changeLightDarkTheme,
    required TResult Function(bool isM3) changeDesignTheme,
  }) {
    return changeLightDarkTheme(isDark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isDark)? changeLightDarkTheme,
    TResult? Function(bool isM3)? changeDesignTheme,
  }) {
    return changeLightDarkTheme?.call(isDark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isDark)? changeLightDarkTheme,
    TResult Function(bool isM3)? changeDesignTheme,
    required TResult orElse(),
  }) {
    if (changeLightDarkTheme != null) {
      return changeLightDarkTheme(isDark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeLightDarkThemeEvent value)
        changeLightDarkTheme,
    required TResult Function(_ChangeDesignThemeEvent value) changeDesignTheme,
  }) {
    return changeLightDarkTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeLightDarkThemeEvent value)? changeLightDarkTheme,
    TResult? Function(_ChangeDesignThemeEvent value)? changeDesignTheme,
  }) {
    return changeLightDarkTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeLightDarkThemeEvent value)? changeLightDarkTheme,
    TResult Function(_ChangeDesignThemeEvent value)? changeDesignTheme,
    required TResult orElse(),
  }) {
    if (changeLightDarkTheme != null) {
      return changeLightDarkTheme(this);
    }
    return orElse();
  }
}

abstract class _ChangeLightDarkThemeEvent implements ThemeChangerEvent {
  const factory _ChangeLightDarkThemeEvent({required final bool isDark}) =
      _$_ChangeLightDarkThemeEvent;

  bool get isDark;
  @JsonKey(ignore: true)
  _$$_ChangeLightDarkThemeEventCopyWith<_$_ChangeLightDarkThemeEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeDesignThemeEventCopyWith<$Res> {
  factory _$$_ChangeDesignThemeEventCopyWith(_$_ChangeDesignThemeEvent value,
          $Res Function(_$_ChangeDesignThemeEvent) then) =
      __$$_ChangeDesignThemeEventCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isM3});
}

/// @nodoc
class __$$_ChangeDesignThemeEventCopyWithImpl<$Res>
    extends _$ThemeChangerEventCopyWithImpl<$Res, _$_ChangeDesignThemeEvent>
    implements _$$_ChangeDesignThemeEventCopyWith<$Res> {
  __$$_ChangeDesignThemeEventCopyWithImpl(_$_ChangeDesignThemeEvent _value,
      $Res Function(_$_ChangeDesignThemeEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isM3 = null,
  }) {
    return _then(_$_ChangeDesignThemeEvent(
      isM3: null == isM3
          ? _value.isM3
          : isM3 // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeDesignThemeEvent implements _ChangeDesignThemeEvent {
  const _$_ChangeDesignThemeEvent({required this.isM3});

  @override
  final bool isM3;

  @override
  String toString() {
    return 'ThemeChangerEvent.changeDesignTheme(isM3: $isM3)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeDesignThemeEvent &&
            (identical(other.isM3, isM3) || other.isM3 == isM3));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isM3);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeDesignThemeEventCopyWith<_$_ChangeDesignThemeEvent> get copyWith =>
      __$$_ChangeDesignThemeEventCopyWithImpl<_$_ChangeDesignThemeEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isDark) changeLightDarkTheme,
    required TResult Function(bool isM3) changeDesignTheme,
  }) {
    return changeDesignTheme(isM3);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isDark)? changeLightDarkTheme,
    TResult? Function(bool isM3)? changeDesignTheme,
  }) {
    return changeDesignTheme?.call(isM3);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isDark)? changeLightDarkTheme,
    TResult Function(bool isM3)? changeDesignTheme,
    required TResult orElse(),
  }) {
    if (changeDesignTheme != null) {
      return changeDesignTheme(isM3);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeLightDarkThemeEvent value)
        changeLightDarkTheme,
    required TResult Function(_ChangeDesignThemeEvent value) changeDesignTheme,
  }) {
    return changeDesignTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeLightDarkThemeEvent value)? changeLightDarkTheme,
    TResult? Function(_ChangeDesignThemeEvent value)? changeDesignTheme,
  }) {
    return changeDesignTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeLightDarkThemeEvent value)? changeLightDarkTheme,
    TResult Function(_ChangeDesignThemeEvent value)? changeDesignTheme,
    required TResult orElse(),
  }) {
    if (changeDesignTheme != null) {
      return changeDesignTheme(this);
    }
    return orElse();
  }
}

abstract class _ChangeDesignThemeEvent implements ThemeChangerEvent {
  const factory _ChangeDesignThemeEvent({required final bool isM3}) =
      _$_ChangeDesignThemeEvent;

  bool get isM3;
  @JsonKey(ignore: true)
  _$$_ChangeDesignThemeEventCopyWith<_$_ChangeDesignThemeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ThemeChangerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ThemeData newThemeData) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ThemeData newThemeData)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeData newThemeData)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangedThemeState value) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangedThemeState value)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangedThemeState value)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeChangerStateCopyWith<$Res> {
  factory $ThemeChangerStateCopyWith(
          ThemeChangerState value, $Res Function(ThemeChangerState) then) =
      _$ThemeChangerStateCopyWithImpl<$Res, ThemeChangerState>;
}

/// @nodoc
class _$ThemeChangerStateCopyWithImpl<$Res, $Val extends ThemeChangerState>
    implements $ThemeChangerStateCopyWith<$Res> {
  _$ThemeChangerStateCopyWithImpl(this._value, this._then);

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
    extends _$ThemeChangerStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ThemeChangerState.initial()';
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
    required TResult Function(ThemeData newThemeData) changed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ThemeData newThemeData)? changed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeData newThemeData)? changed,
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
    required TResult Function(_ChangedThemeState value) changed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangedThemeState value)? changed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangedThemeState value)? changed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ThemeChangerState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ChangedThemeStateCopyWith<$Res> {
  factory _$$_ChangedThemeStateCopyWith(_$_ChangedThemeState value,
          $Res Function(_$_ChangedThemeState) then) =
      __$$_ChangedThemeStateCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeData newThemeData});
}

/// @nodoc
class __$$_ChangedThemeStateCopyWithImpl<$Res>
    extends _$ThemeChangerStateCopyWithImpl<$Res, _$_ChangedThemeState>
    implements _$$_ChangedThemeStateCopyWith<$Res> {
  __$$_ChangedThemeStateCopyWithImpl(
      _$_ChangedThemeState _value, $Res Function(_$_ChangedThemeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newThemeData = null,
  }) {
    return _then(_$_ChangedThemeState(
      newThemeData: null == newThemeData
          ? _value.newThemeData
          : newThemeData // ignore: cast_nullable_to_non_nullable
              as ThemeData,
    ));
  }
}

/// @nodoc

class _$_ChangedThemeState implements _ChangedThemeState {
  const _$_ChangedThemeState({required this.newThemeData});

  @override
  final ThemeData newThemeData;

  @override
  String toString() {
    return 'ThemeChangerState.changed(newThemeData: $newThemeData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangedThemeState &&
            (identical(other.newThemeData, newThemeData) ||
                other.newThemeData == newThemeData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newThemeData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangedThemeStateCopyWith<_$_ChangedThemeState> get copyWith =>
      __$$_ChangedThemeStateCopyWithImpl<_$_ChangedThemeState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ThemeData newThemeData) changed,
  }) {
    return changed(newThemeData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ThemeData newThemeData)? changed,
  }) {
    return changed?.call(newThemeData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ThemeData newThemeData)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(newThemeData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangedThemeState value) changed,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangedThemeState value)? changed,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangedThemeState value)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class _ChangedThemeState implements ThemeChangerState {
  const factory _ChangedThemeState({required final ThemeData newThemeData}) =
      _$_ChangedThemeState;

  ThemeData get newThemeData;
  @JsonKey(ignore: true)
  _$$_ChangedThemeStateCopyWith<_$_ChangedThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}
