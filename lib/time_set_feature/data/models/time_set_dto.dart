import 'package:in_time/time_set_feature/domain/entities/time_set_entity.dart';

import 'item_of_set_dto.dart';
import 'number_chips_data_dto.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'time_set_dto.g.dart';

@HiveType(typeId: 0)
class TimeSetDto {
  @HiveField(0)
  final String title;

  @HiveField(1)
  final DateTime dateTimeSaved;

  @HiveField(2)
  final DateTime startTimeSet;

  @HiveField(3)
  final DateTime durationTimeSet;

  @HiveField(6)
  final DateTime finishTimeSet;

  @HiveField(4)
  final List<ItemOfSetDto>? itemsOfSet;

  @HiveField(5)
  final List<NumberChipsDataDto>? numberChips;

  TimeSetDto( {
    this.itemsOfSet,
    this.numberChips,
    required this.dateTimeSaved,
    required this.title,
    required this.startTimeSet,
    required this.durationTimeSet,
    required this.finishTimeSet,
  });


  factory TimeSetDto.fromDomain(TimeSetEntity timeSet) {
    return TimeSetDto(
        itemsOfSet: timeSet.itemsOfSet?.map((item) => ItemOfSetDto.fromDomain(item)).toList(),
        numberChips: timeSet.numberChips?.map((chip) => NumberChipsDataDto.fromDomain(chip)).toList(),
        dateTimeSaved: timeSet.dateTimeSaved,
        title: timeSet.title,
        startTimeSet: timeSet.startTimeSet,
        durationTimeSet: timeSet.durationTimeSet,
      finishTimeSet: timeSet.finishTimeSet,
    );

  }

  TimeSetEntity toDomain() {
    return TimeSetEntity(
      title: title,
      dateTimeSaved: dateTimeSaved,
      startTimeSet: startTimeSet,
      durationTimeSet: durationTimeSet,
      finishTimeSet: finishTimeSet,
      itemsOfSet: itemsOfSet?.map((item) => item.toDomain()).toList() ?? [],
      numberChips: numberChips?.map((chip) => chip.toDomain()).toList() ?? [],
    );
  }

}
