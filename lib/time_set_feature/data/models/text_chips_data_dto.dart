

import 'package:hive_flutter/hive_flutter.dart';

part 'text_chips_data_dto.g.dart';

@HiveType(typeId: 3)
class TextChoiceChipDataDto {
  @HiveField(0)
  final String label;

  @HiveField(1)
  final bool isSelected;

  TextChoiceChipDataDto({required this.label, required this.isSelected});
}