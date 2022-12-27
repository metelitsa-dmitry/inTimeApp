// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_add_dialog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResultAddDialog {
  int get counter => throw _privateConstructorUsedError;
  int get startNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResultAddDialogCopyWith<ResultAddDialog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultAddDialogCopyWith<$Res> {
  factory $ResultAddDialogCopyWith(
          ResultAddDialog value, $Res Function(ResultAddDialog) then) =
      _$ResultAddDialogCopyWithImpl<$Res, ResultAddDialog>;
  @useResult
  $Res call({int counter, int startNumber});
}

/// @nodoc
class _$ResultAddDialogCopyWithImpl<$Res, $Val extends ResultAddDialog>
    implements $ResultAddDialogCopyWith<$Res> {
  _$ResultAddDialogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? startNumber = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      startNumber: null == startNumber
          ? _value.startNumber
          : startNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultAddDialogCopyWith<$Res>
    implements $ResultAddDialogCopyWith<$Res> {
  factory _$$_ResultAddDialogCopyWith(
          _$_ResultAddDialog value, $Res Function(_$_ResultAddDialog) then) =
      __$$_ResultAddDialogCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, int startNumber});
}

/// @nodoc
class __$$_ResultAddDialogCopyWithImpl<$Res>
    extends _$ResultAddDialogCopyWithImpl<$Res, _$_ResultAddDialog>
    implements _$$_ResultAddDialogCopyWith<$Res> {
  __$$_ResultAddDialogCopyWithImpl(
      _$_ResultAddDialog _value, $Res Function(_$_ResultAddDialog) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? startNumber = null,
  }) {
    return _then(_$_ResultAddDialog(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      startNumber: null == startNumber
          ? _value.startNumber
          : startNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ResultAddDialog extends _ResultAddDialog {
  _$_ResultAddDialog({required this.counter, required this.startNumber})
      : super._();

  @override
  final int counter;
  @override
  final int startNumber;

  @override
  String toString() {
    return 'ResultAddDialog(counter: $counter, startNumber: $startNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultAddDialog &&
            (identical(other.counter, counter) || other.counter == counter) &&
            (identical(other.startNumber, startNumber) ||
                other.startNumber == startNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, counter, startNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultAddDialogCopyWith<_$_ResultAddDialog> get copyWith =>
      __$$_ResultAddDialogCopyWithImpl<_$_ResultAddDialog>(this, _$identity);
}

abstract class _ResultAddDialog extends ResultAddDialog {
  factory _ResultAddDialog(
      {required final int counter,
      required final int startNumber}) = _$_ResultAddDialog;
  _ResultAddDialog._() : super._();

  @override
  int get counter;
  @override
  int get startNumber;
  @override
  @JsonKey(ignore: true)
  _$$_ResultAddDialogCopyWith<_$_ResultAddDialog> get copyWith =>
      throw _privateConstructorUsedError;
}
