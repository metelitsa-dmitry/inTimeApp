import 'package:equatable/equatable.dart';
import 'package:in_time/time_set_feature/domain/entities/item_of_set.dart';
import 'number_chips_data.dart';

class TimeSet extends Equatable {
  final String title;
  final DateTime? dateTimeSaved;

  final int startTimeSetHours;
  final int startTimeSetMinutes;
  final int startTimeSetSeconds;

  final int durationTimeSetHours;
  final int durationTimeSetMinutes;
  final int durationTimeSetSecons;

  final List<ItemOfSet>? itemsOfSet;
  final List<NumberChipsData>? numberChips;

  const TimeSet(
    this.dateTimeSaved,
    this.itemsOfSet,
    this.numberChips, {
    required this.title,
    required this.startTimeSetHours,
    required this.startTimeSetMinutes,
    required this.startTimeSetSeconds,
    required this.durationTimeSetHours,
    required this.durationTimeSetMinutes,
    required this.durationTimeSetSecons,
  });

  @override
  List<Object?> get props => [
        title,
        dateTimeSaved,
        startTimeSetHours,
        startTimeSetMinutes,
        startTimeSetSeconds,
        durationTimeSetHours,
        durationTimeSetMinutes,
        durationTimeSetSecons,
        itemsOfSet,
        numberChips,
      ];
}
