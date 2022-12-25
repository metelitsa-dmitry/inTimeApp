import 'package:hive_flutter/hive_flutter.dart';
import 'package:in_time/time_set_feature/domain/entities/item_of_set_entity.dart';

part 'item_of_set_dto.g.dart';

@HiveType(typeId: 1)
class ItemOfSetDto {
  @HiveField(0)
  final String? titleItem;

  @HiveField(1)
  final List<String>? chipsItem;

  @HiveField(2)
  final int durationHourOfItemSet;

  @HiveField(3)
  final int durationMinutesOfItemSet;

  @HiveField(4)
  final int durationSecondsOfItemSet;

  @HiveField(5)
  final DateTime startItemOfSet;

  @HiveField(6)
  final bool? isPicture;

  @HiveField(7)
  final bool? isVerse;

  @HiveField(8)
  final bool? isTable;

  ItemOfSetDto( {
    this.titleItem,
    this.chipsItem,
    this.isPicture,
    this.isVerse,
    this.isTable,
    required this.durationHourOfItemSet,
    required this.durationMinutesOfItemSet,
    required this.durationSecondsOfItemSet,
    required this.startItemOfSet,
  });

  factory ItemOfSetDto.fromDomain(ItemOfSetEntity itemOfSet){
    return ItemOfSetDto(
        titleItem: itemOfSet.titleItem,
        chipsItem: itemOfSet.chipsItem,
        isPicture: itemOfSet.isPicture,
        isVerse: itemOfSet.isVerse,
        isTable: itemOfSet.isTable,
        durationHourOfItemSet: itemOfSet.durationHourOfItemSet,
        durationMinutesOfItemSet: itemOfSet.durationMinutesOfItemSet,
        durationSecondsOfItemSet: itemOfSet.durationSecondsOfItemSet,
        startItemOfSet: itemOfSet.startItemOfSet);
  }

  ItemOfSetEntity toDomain(){
    return ItemOfSetEntity(
        titleItem: titleItem ,
        chipsItem: chipsItem,
        isPicture: isPicture,
        isVerse: isVerse,
        isTable: isTable,
        startItemOfSet: startItemOfSet,
      durationHourOfItemSet: durationHourOfItemSet,
      durationMinutesOfItemSet: durationMinutesOfItemSet,
      durationSecondsOfItemSet: durationSecondsOfItemSet,
    );
  }

}
