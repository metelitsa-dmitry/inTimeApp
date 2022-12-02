// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_chips_data_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NumberChipsDataDtoAdapter extends TypeAdapter<NumberChipsDataDto> {
  @override
  final int typeId = 2;

  @override
  NumberChipsDataDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NumberChipsDataDto(
      number: fields[0] as int,
      isSelected: fields[1] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, NumberChipsDataDto obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.number)
      ..writeByte(1)
      ..write(obj.isSelected);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NumberChipsDataDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
