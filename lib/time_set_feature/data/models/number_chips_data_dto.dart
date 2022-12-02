import 'package:hive_flutter/hive_flutter.dart';
import 'package:in_time/time_set_feature/domain/entities/number_chips_data.dart';

part 'number_chips_data_dto.g.dart';

@HiveType(typeId: 2)
class NumberChipsDataDto {
  @HiveField(0)
  final int number;

  @HiveField(1)
  final bool isSelected;

  NumberChipsDataDto({required this.number, required this.isSelected});

  factory NumberChipsDataDto.fromDomain(NumberChipsData numberChipsData) {
    return NumberChipsDataDto(
        number: numberChipsData.number, isSelected: numberChipsData.isSelected);
  }

  NumberChipsData toDomain() {
    return NumberChipsData(number: number, isSelected: isSelected);
  }
}
