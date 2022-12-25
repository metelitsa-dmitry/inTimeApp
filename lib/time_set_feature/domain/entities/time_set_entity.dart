
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
    required int durationHourTimeSet,
    required int durationMinutesTimeSet,

    required DateTime finishTimeSet,
  }) = _TimeSetEntity;

  final DateFormat _formatter1 = DateFormat('hh:mm a');
  final DateFormat _formatter2 = DateFormat('yyyy-MM-dd, hh:mm a');
  String get startTimeSetFormat => _formatter1.format(startTimeSet);
  String get finishTimeSetFormat => _formatter1.format(finishTimeSet);
  String get dateTimeSavedFormat => _formatter2.format(dateTimeSaved) ;
}
