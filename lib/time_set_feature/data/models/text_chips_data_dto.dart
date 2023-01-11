import 'package:hive_flutter/hive_flutter.dart';
import 'package:in_time/time_set_feature/domain/entities/text_chips_data.dart';
part 'text_chips_data_dto.g.dart';

@HiveType(typeId: 3)
class TextChoiceChipDataDto {
  @HiveField(0)
  final String label;

  @HiveField(1)
  final bool isSelected;

  TextChoiceChipDataDto({required this.label, required this.isSelected});

  factory TextChoiceChipDataDto.fromDomain(TextChoiceChipData textChip) {
    return TextChoiceChipDataDto(
      label: textChip.label,
      isSelected: textChip.isSelected,
    );
  }

  TextChoiceChipData toDomain() {
    return TextChoiceChipData(
      label: label,
      isSelected: isSelected,
    );
  }

  TextChoiceChipDataDto copyWith(
    String? label,
    bool? isSelected,
  ) {
    return TextChoiceChipDataDto(
      label: label ?? this.label,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}
