import 'package:equatable/equatable.dart';
import 'package:in_time/time_set_feature/domain/entities/item_of_set_entity.dart';
import 'number_chips_data.dart';

class TimeSetEntity extends Equatable {
  final String title;
  final DateTime? dateTimeSaved;
  final DateTime startTimeSet;
  final DateTime durationTimeSet;
  final List<ItemOfSetEntity>? itemsOfSet;
  final List<NumberChipsData>? numberChips;

  const TimeSetEntity({
    this.dateTimeSaved,
    this.itemsOfSet,
    this.numberChips,
    required this.title,
    required this.startTimeSet,
    required this.durationTimeSet,
  });

  @override
  List<Object?> get props => [
        title,
        dateTimeSaved,
        startTimeSet,
        durationTimeSet,
        itemsOfSet,
        numberChips,
      ];
}
