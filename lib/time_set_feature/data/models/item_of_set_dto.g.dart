// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_of_set_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ItemOfSetDtoAdapter extends TypeAdapter<ItemOfSetDto> {
  @override
  final int typeId = 1;

  @override
  ItemOfSetDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ItemOfSetDto(
      titleItem: fields[0] as String?,
      chipsItem: (fields[1] as List?)?.cast<String>(),
      isPicture: fields[6] as bool?,
      isVerse: fields[7] as bool?,
      isTable: fields[8] as bool?,
      durationHourOfItemSet: fields[2] as int,
      durationMinutesOfItemSet: fields[3] as int,
      durationSecondsOfItemSet: fields[4] as int,
      startItemOfSet: fields[5] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, ItemOfSetDto obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.titleItem)
      ..writeByte(1)
      ..write(obj.chipsItem)
      ..writeByte(2)
      ..write(obj.durationHourOfItemSet)
      ..writeByte(3)
      ..write(obj.durationMinutesOfItemSet)
      ..writeByte(4)
      ..write(obj.durationSecondsOfItemSet)
      ..writeByte(5)
      ..write(obj.startItemOfSet)
      ..writeByte(6)
      ..write(obj.isPicture)
      ..writeByte(7)
      ..write(obj.isVerse)
      ..writeByte(8)
      ..write(obj.isTable);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemOfSetDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
