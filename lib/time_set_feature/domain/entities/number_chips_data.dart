
import 'package:freezed_annotation/freezed_annotation.dart';

part 'number_chips_data.freezed.dart';

@freezed
class NumberChipsData with _$NumberChipsData {

   const factory NumberChipsData({
    required int number,
    required bool isSelected,
  }) = _NumberChipsData;
}
