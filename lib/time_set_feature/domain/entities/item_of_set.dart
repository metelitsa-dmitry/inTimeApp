import 'package:equatable/equatable.dart';

class ItemOfSet extends Equatable {
  final String? titleItem; // text in item
  final List<String>? chipsItem;

  final int durationHours;
  final int durationMinutes;
  final int durationSeconds;

  final int startTimeItemHours; // hours of item's start time
  final int startTimeItemMinutes; // minutes of item's start time
  final int startTimeItemSeconds; // seconds of item's start time

  final bool? isPicture; // need to discuss picture
  final bool? isVerse; // need to read verse
  final bool? isTable; // ne

  const ItemOfSet(
    this.titleItem,
    this.chipsItem,
    this.isPicture,
    this.isVerse,
    this.isTable,
      {
    required this.startTimeItemHours,
    required this.startTimeItemMinutes,
    required this.startTimeItemSeconds,
    required this.durationHours,
    required this.durationMinutes,
    required this.durationSeconds,
  });

  @override
  List<Object?> get props => [
        startTimeItemHours,
        startTimeItemMinutes,
        startTimeItemSeconds,
        durationHours,
        durationMinutes,
        durationSeconds,
        isPicture,
        isVerse,
        isTable,
        titleItem,
        chipsItem
      ];
}
