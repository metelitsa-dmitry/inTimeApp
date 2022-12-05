import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'item_of_set_entity.freezed.dart';

@freezed
class ItemOfSetEntity with _$ItemOfSetEntity {
  ItemOfSetEntity._();

  factory ItemOfSetEntity ({
    String? titleItem, // text in item
    List<String>? chipsItem,
    required DateTime durationOfItemSet,
    required DateTime startItemOfSet,
    bool? isPicture, // need to discuss picture
    bool? isVerse, // need to read verse
    bool? isTable, // ne
  }) = _ItemOfSetEntity;

  final DateFormat _formatter1 = DateFormat('hh:mm:ss a');
  final DateFormat _formatter2 = DateFormat('hh:mm:ss');
  String get startItemOfSetFormat => _formatter1.format(startItemOfSet);
  String get durationOfItemSetFormat => _formatter2.format(durationOfItemSet);

// final int durationHours;
// final int durationMinutes;
// final int durationSeconds;


// final int startTimeItemHours; // hours of item's start time
// final int startTimeItemMinutes; // minutes of item's start time
// final int startTimeItemSeconds; // seconds of item's start time


}
