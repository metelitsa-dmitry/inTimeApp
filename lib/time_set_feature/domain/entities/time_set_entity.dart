
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_time/time_set_feature/domain/entities/item_of_set_entity.dart';
import 'number_chips_data.dart';
import 'package:intl/intl.dart';

part 'time_set_entity.freezed.dart';

@freezed
class TimeSetEntity with _$TimeSetEntity{
  TimeSetEntity._();

  factory TimeSetEntity({
    required DateTime dateTimeSaved,
    List<ItemOfSetEntity>? itemsOfSet,
    List<NumberChipsData>? numberChips,
    required String title,
    required DateTime startTimeSet,
    required DateTime durationTimeSet,
  }) = _TimeSetEntity;

  final DateFormat _formatter1 = DateFormat('hh:mm a');
  final DateFormat _formatter2 = DateFormat('hh:mm');
  final DateFormat _formatter3 = DateFormat('yyyy-MM-dd, hh:mm a');
  String get startTimeSetFormat => _formatter1.format(startTimeSet);
  String get durationFormat => _formatter2.format(durationTimeSet);
  String get dateTimeSavedFormat => _formatter3.format(dateTimeSaved) ;
}
