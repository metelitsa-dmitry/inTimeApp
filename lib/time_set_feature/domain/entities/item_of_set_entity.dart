import 'package:equatable/equatable.dart';

class ItemOfSetEntity extends Equatable {
  final String? titleItem; // text in item
  final List<String>? chipsItem;

  final DateTime durationOfItemSet;
  // final int durationHours;
  // final int durationMinutes;
  // final int durationSeconds;

  final DateTime startItemOfSet;
  // final int startTimeItemHours; // hours of item's start time
  // final int startTimeItemMinutes; // minutes of item's start time
  // final int startTimeItemSeconds; // seconds of item's start time

  final bool? isPicture; // need to discuss picture
  final bool? isVerse; // need to read verse
  final bool? isTable; // ne

  const ItemOfSetEntity({
    this.titleItem,
    this.chipsItem,
    this.isPicture,
    this.isVerse,
    this.isTable,
    required this.startItemOfSet,
    required this.durationOfItemSet,
  });

  @override
  List<Object?> get props => [
        startItemOfSet,
        durationOfItemSet,
        isPicture,
        isVerse,
        isTable,
        titleItem,
        chipsItem
      ];
}
