
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_time/time_set_feature/domain/entities/item_of_set_entity.dart';
import 'number_chips_data.dart';

part 'time_set_entity.freezed.dart';

@freezed
class TimeSetEntity with _$TimeSetEntity{

  factory TimeSetEntity({
    DateTime? dateTimeSaved,
    List<ItemOfSetEntity>? itemsOfSet,
    List<NumberChipsData>? numberChips,
    required String title,
    required DateTime startTimeSet,
    required DateTime durationTimeSet,
  }) = _TimeSetEntity;

}
