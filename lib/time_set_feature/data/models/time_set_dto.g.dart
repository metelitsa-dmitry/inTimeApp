// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_set_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TimeSetDtoAdapter extends TypeAdapter<TimeSetDto> {
  @override
  final int typeId = 0;

  @override
  TimeSetDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TimeSetDto(
      itemsOfSet: (fields[6] as List?)?.cast<ItemOfSetDto>(),
      numberChips: (fields[7] as List?)?.cast<NumberChipsDataDto>(),
      dateTimeSaved: fields[1] as DateTime,
      title: fields[0] as String,
      startTimeSet: fields[2] as DateTime,
      durationHourTimeSet: fields[3] as int,
      durationMinutesTimeSet: fields[4] as int,
      finishTimeSet: fields[5] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, TimeSetDto obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.dateTimeSaved)
      ..writeByte(2)
      ..write(obj.startTimeSet)
      ..writeByte(3)
      ..write(obj.durationHourTimeSet)
      ..writeByte(4)
      ..write(obj.durationMinutesTimeSet)
      ..writeByte(5)
      ..write(obj.finishTimeSet)
      ..writeByte(6)
      ..write(obj.itemsOfSet)
      ..writeByte(7)
      ..write(obj.numberChips);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TimeSetDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
