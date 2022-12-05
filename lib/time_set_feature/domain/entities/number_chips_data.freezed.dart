// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'number_chips_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NumberChipsData {
  int get number => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NumberChipsDataCopyWith<NumberChipsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberChipsDataCopyWith<$Res> {
  factory $NumberChipsDataCopyWith(
          NumberChipsData value, $Res Function(NumberChipsData) then) =
      _$NumberChipsDataCopyWithImpl<$Res, NumberChipsData>;
  @useResult
  $Res call({int number, bool isSelected});
}

/// @nodoc
class _$NumberChipsDataCopyWithImpl<$Res, $Val extends NumberChipsData>
    implements $NumberChipsDataCopyWith<$Res> {
  _$NumberChipsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? isSelected = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NumberChipsDataCopyWith<$Res>
    implements $NumberChipsDataCopyWith<$Res> {
  factory _$$_NumberChipsDataCopyWith(
          _$_NumberChipsData value, $Res Function(_$_NumberChipsData) then) =
      __$$_NumberChipsDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int number, bool isSelected});
}

/// @nodoc
class __$$_NumberChipsDataCopyWithImpl<$Res>
    extends _$NumberChipsDataCopyWithImpl<$Res, _$_NumberChipsData>
    implements _$$_NumberChipsDataCopyWith<$Res> {
  __$$_NumberChipsDataCopyWithImpl(
      _$_NumberChipsData _value, $Res Function(_$_NumberChipsData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? isSelected = null,
  }) {
    return _then(_$_NumberChipsData(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NumberChipsData implements _NumberChipsData {
  const _$_NumberChipsData({required this.number, required this.isSelected});

  @override
  final int number;
  @override
  final bool isSelected;

  @override
  String toString() {
    return 'NumberChipsData(number: $number, isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NumberChipsData &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NumberChipsDataCopyWith<_$_NumberChipsData> get copyWith =>
      __$$_NumberChipsDataCopyWithImpl<_$_NumberChipsData>(this, _$identity);
}

abstract class _NumberChipsData implements NumberChipsData {
  const factory _NumberChipsData(
      {required final int number,
      required final bool isSelected}) = _$_NumberChipsData;

  @override
  int get number;
  @override
  bool get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$_NumberChipsDataCopyWith<_$_NumberChipsData> get copyWith =>
      throw _privateConstructorUsedError;
}
