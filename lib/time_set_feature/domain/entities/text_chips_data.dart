
import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_chips_data.freezed.dart';

@freezed
class TextChoiceChipData with _$TextChoiceChipData {

 // TextChoiceChipData._(); If will be added some methods

  const factory TextChoiceChipData({
    required String label,
    required bool isSelected,
  }) = _TextChoiceChipData;

}