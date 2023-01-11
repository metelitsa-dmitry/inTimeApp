
import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_chips_data.freezed.dart';

@freezed
class TextChoiceChipData with _$TextChoiceChipData {

 TextChoiceChipData._(); //If will be added some methods

  factory TextChoiceChipData({
    required String label,
    @Default(false) bool isSelected,
  }) = _TextChoiceChipData;

  factory TextChoiceChipData.empty(){
    return TextChoiceChipData(label: '', isSelected: false);
  }

}