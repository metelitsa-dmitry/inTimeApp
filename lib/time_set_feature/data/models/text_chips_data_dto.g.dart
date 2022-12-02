// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_chips_data_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TextChoiceChipDataDtoAdapter extends TypeAdapter<TextChoiceChipDataDto> {
  @override
  final int typeId = 3;

  @override
  TextChoiceChipDataDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TextChoiceChipDataDto(
      label: fields[0] as String,
      isSelected: fields[1] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, TextChoiceChipDataDto obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.label)
      ..writeByte(1)
      ..write(obj.isSelected);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TextChoiceChipDataDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
