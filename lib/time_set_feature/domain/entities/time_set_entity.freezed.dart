// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_set_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimeSetEntity {
  DateTime get dateTimeSaved => throw _privateConstructorUsedError;
  List<ItemOfSetEntity>? get itemsOfSet => throw _privateConstructorUsedError;
  List<NumberChipsData>? get numberChips => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get startTimeSet => throw _privateConstructorUsedError;
  DateTime get durationTimeSet => throw _privateConstructorUsedError;
  DateTime get finishTimeSet => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimeSetEntityCopyWith<TimeSetEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeSetEntityCopyWith<$Res> {
  factory $TimeSetEntityCopyWith(
          TimeSetEntity value, $Res Function(TimeSetEntity) then) =
      _$TimeSetEntityCopyWithImpl<$Res, TimeSetEntity>;
  @useResult
  $Res call(
      {DateTime dateTimeSaved,
      List<ItemOfSetEntity>? itemsOfSet,
      List<NumberChipsData>? numberChips,
      String title,
      DateTime startTimeSet,
      DateTime durationTimeSet,
      DateTime finishTimeSet});
}

/// @nodoc
class _$TimeSetEntityCopyWithImpl<$Res, $Val extends TimeSetEntity>
    implements $TimeSetEntityCopyWith<$Res> {
  _$TimeSetEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTimeSaved = null,
    Object? itemsOfSet = freezed,
    Object? numberChips = freezed,
    Object? title = null,
    Object? startTimeSet = null,
    Object? durationTimeSet = null,
    Object? finishTimeSet = null,
  }) {
    return _then(_value.copyWith(
      dateTimeSaved: null == dateTimeSaved
          ? _value.dateTimeSaved
          : dateTimeSaved // ignore: cast_nullable_to_non_nullable
              as DateTime,
      itemsOfSet: freezed == itemsOfSet
          ? _value.itemsOfSet
          : itemsOfSet // ignore: cast_nullable_to_non_nullable
              as List<ItemOfSetEntity>?,
      numberChips: freezed == numberChips
          ? _value.numberChips
          : numberChips // ignore: cast_nullable_to_non_nullable
              as List<NumberChipsData>?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      startTimeSet: null == startTimeSet
          ? _value.startTimeSet
          : startTimeSet // ignore: cast_nullable_to_non_nullable
              as DateTime,
      durationTimeSet: null == durationTimeSet
          ? _value.durationTimeSet
          : durationTimeSet // ignore: cast_nullable_to_non_nullable
              as DateTime,
      finishTimeSet: null == finishTimeSet
          ? _value.finishTimeSet
          : finishTimeSet // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimeSetEntityCopyWith<$Res>
    implements $TimeSetEntityCopyWith<$Res> {
  factory _$$_TimeSetEntityCopyWith(
          _$_TimeSetEntity value, $Res Function(_$_TimeSetEntity) then) =
      __$$_TimeSetEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime dateTimeSaved,
      List<ItemOfSetEntity>? itemsOfSet,
      List<NumberChipsData>? numberChips,
      String title,
      DateTime startTimeSet,
      DateTime durationTimeSet,
      DateTime finishTimeSet});
}

/// @nodoc
class __$$_TimeSetEntityCopyWithImpl<$Res>
    extends _$TimeSetEntityCopyWithImpl<$Res, _$_TimeSetEntity>
    implements _$$_TimeSetEntityCopyWith<$Res> {
  __$$_TimeSetEntityCopyWithImpl(
      _$_TimeSetEntity _value, $Res Function(_$_TimeSetEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTimeSaved = null,
    Object? itemsOfSet = freezed,
    Object? numberChips = freezed,
    Object? title = null,
    Object? startTimeSet = null,
    Object? durationTimeSet = null,
    Object? finishTimeSet = null,
  }) {
    return _then(_$_TimeSetEntity(
      dateTimeSaved: null == dateTimeSaved
          ? _value.dateTimeSaved
          : dateTimeSaved // ignore: cast_nullable_to_non_nullable
              as DateTime,
      itemsOfSet: freezed == itemsOfSet
          ? _value._itemsOfSet
          : itemsOfSet // ignore: cast_nullable_to_non_nullable
              as List<ItemOfSetEntity>?,
      numberChips: freezed == numberChips
          ? _value._numberChips
          : numberChips // ignore: cast_nullable_to_non_nullable
              as List<NumberChipsData>?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      startTimeSet: null == startTimeSet
          ? _value.startTimeSet
          : startTimeSet // ignore: cast_nullable_to_non_nullable
              as DateTime,
      durationTimeSet: null == durationTimeSet
          ? _value.durationTimeSet
          : durationTimeSet // ignore: cast_nullable_to_non_nullable
              as DateTime,
      finishTimeSet: null == finishTimeSet
          ? _value.finishTimeSet
          : finishTimeSet // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_TimeSetEntity extends _TimeSetEntity {
  _$_TimeSetEntity(
      {required this.dateTimeSaved,
      final List<ItemOfSetEntity>? itemsOfSet,
      final List<NumberChipsData>? numberChips,
      required this.title,
      required this.startTimeSet,
      required this.durationTimeSet,
      required this.finishTimeSet})
      : _itemsOfSet = itemsOfSet,
        _numberChips = numberChips,
        super._();

  @override
  final DateTime dateTimeSaved;
  final List<ItemOfSetEntity>? _itemsOfSet;
  @override
  List<ItemOfSetEntity>? get itemsOfSet {
    final value = _itemsOfSet;
    if (value == null) return null;
    if (_itemsOfSet is EqualUnmodifiableListView) return _itemsOfSet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<NumberChipsData>? _numberChips;
  @override
  List<NumberChipsData>? get numberChips {
    final value = _numberChips;
    if (value == null) return null;
    if (_numberChips is EqualUnmodifiableListView) return _numberChips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String title;
  @override
  final DateTime startTimeSet;
  @override
  final DateTime durationTimeSet;
  @override
  final DateTime finishTimeSet;

  @override
  String toString() {
    return 'TimeSetEntity(dateTimeSaved: $dateTimeSaved, itemsOfSet: $itemsOfSet, numberChips: $numberChips, title: $title, startTimeSet: $startTimeSet, durationTimeSet: $durationTimeSet, finishTimeSet: $finishTimeSet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeSetEntity &&
            (identical(other.dateTimeSaved, dateTimeSaved) ||
                other.dateTimeSaved == dateTimeSaved) &&
            const DeepCollectionEquality()
                .equals(other._itemsOfSet, _itemsOfSet) &&
            const DeepCollectionEquality()
                .equals(other._numberChips, _numberChips) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.startTimeSet, startTimeSet) ||
                other.startTimeSet == startTimeSet) &&
            (identical(other.durationTimeSet, durationTimeSet) ||
                other.durationTimeSet == durationTimeSet) &&
            (identical(other.finishTimeSet, finishTimeSet) ||
                other.finishTimeSet == finishTimeSet));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      dateTimeSaved,
      const DeepCollectionEquality().hash(_itemsOfSet),
      const DeepCollectionEquality().hash(_numberChips),
      title,
      startTimeSet,
      durationTimeSet,
      finishTimeSet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimeSetEntityCopyWith<_$_TimeSetEntity> get copyWith =>
      __$$_TimeSetEntityCopyWithImpl<_$_TimeSetEntity>(this, _$identity);
}

abstract class _TimeSetEntity extends TimeSetEntity {
  factory _TimeSetEntity(
      {required final DateTime dateTimeSaved,
      final List<ItemOfSetEntity>? itemsOfSet,
      final List<NumberChipsData>? numberChips,
      required final String title,
      required final DateTime startTimeSet,
      required final DateTime durationTimeSet,
      required final DateTime finishTimeSet}) = _$_TimeSetEntity;
  _TimeSetEntity._() : super._();

  @override
  DateTime get dateTimeSaved;
  @override
  List<ItemOfSetEntity>? get itemsOfSet;
  @override
  List<NumberChipsData>? get numberChips;
  @override
  String get title;
  @override
  DateTime get startTimeSet;
  @override
  DateTime get durationTimeSet;
  @override
  DateTime get finishTimeSet;
  @override
  @JsonKey(ignore: true)
  _$$_TimeSetEntityCopyWith<_$_TimeSetEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
