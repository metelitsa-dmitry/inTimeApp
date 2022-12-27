import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'item_of_set_entity.freezed.dart';

@freezed
class ItemOfSetEntity with _$ItemOfSetEntity {
  ItemOfSetEntity._();

  factory ItemOfSetEntity ({
    String? titleItem, // text in item
    List<String>? chipsItem,
    required int durationHourOfItemSet,
    required int durationMinutesOfItemSet,
    required int durationSecondsOfItemSet,
    required DateTime startItemOfSet,
    bool? isPicture, // need to discuss picture
    bool? isVerse, // need to read verse
    bool? isTable, // ne
  }) = _ItemOfSetEntity;

  final DateFormat _formatter1 = DateFormat('hh:mm:ss a');
  String get startItemOfSetFormat => _formatter1.format(startItemOfSet);


}
