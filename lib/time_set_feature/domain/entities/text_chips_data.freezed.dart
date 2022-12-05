// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_chips_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TextChoiceChipData {
  String get label => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TextChoiceChipDataCopyWith<TextChoiceChipData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextChoiceChipDataCopyWith<$Res> {
  factory $TextChoiceChipDataCopyWith(
          TextChoiceChipData value, $Res Function(TextChoiceChipData) then) =
      _$TextChoiceChipDataCopyWithImpl<$Res, TextChoiceChipData>;
  @useResult
  $Res call({String label, bool isSelected});
}

/// @nodoc
class _$TextChoiceChipDataCopyWithImpl<$Res, $Val extends TextChoiceChipData>
    implements $TextChoiceChipDataCopyWith<$Res> {
  _$TextChoiceChipDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? isSelected = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TextChoiceChipDataCopyWith<$Res>
    implements $TextChoiceChipDataCopyWith<$Res> {
  factory _$$_TextChoiceChipDataCopyWith(_$_TextChoiceChipData value,
          $Res Function(_$_TextChoiceChipData) then) =
      __$$_TextChoiceChipDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, bool isSelected});
}

/// @nodoc
class __$$_TextChoiceChipDataCopyWithImpl<$Res>
    extends _$TextChoiceChipDataCopyWithImpl<$Res, _$_TextChoiceChipData>
    implements _$$_TextChoiceChipDataCopyWith<$Res> {
  __$$_TextChoiceChipDataCopyWithImpl(
      _$_TextChoiceChipData _value, $Res Function(_$_TextChoiceChipData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? isSelected = null,
  }) {
    return _then(_$_TextChoiceChipData(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TextChoiceChipData implements _TextChoiceChipData {
  const _$_TextChoiceChipData({required this.label, required this.isSelected});

  @override
  final String label;
  @override
  final bool isSelected;

  @override
  String toString() {
    return 'TextChoiceChipData(label: $label, isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextChoiceChipData &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TextChoiceChipDataCopyWith<_$_TextChoiceChipData> get copyWith =>
      __$$_TextChoiceChipDataCopyWithImpl<_$_TextChoiceChipData>(
          this, _$identity);
}

abstract class _TextChoiceChipData implements TextChoiceChipData {
  const factory _TextChoiceChipData(
      {required final String label,
      required final bool isSelected}) = _$_TextChoiceChipData;

  @override
  String get label;
  @override
  bool get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$_TextChoiceChipDataCopyWith<_$_TextChoiceChipData> get copyWith =>
      throw _privateConstructorUsedError;
}
