// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TableModelAdapter extends TypeAdapter<TableModel> {
  @override
  final int typeId = 0;

  @override
  TableModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TableModel(
      id: fields[0] as String,
      number: fields[1] as String,
      status: fields[2] as TableStatus,
      capacity: fields[3] as int,
      activeOrderId: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, TableModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.number)
      ..writeByte(2)
      ..write(obj.status)
      ..writeByte(3)
      ..write(obj.capacity)
      ..writeByte(4)
      ..write(obj.activeOrderId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TableModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TableStatusAdapter extends TypeAdapter<TableStatus> {
  @override
  final int typeId = 1;

  @override
  TableStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TableStatus.available;
      case 1:
        return TableStatus.occupied;
      default:
        return TableStatus.available;
    }
  }

  @override
  void write(BinaryWriter writer, TableStatus obj) {
    switch (obj) {
      case TableStatus.available:
        writer.writeByte(0);
        break;
      case TableStatus.occupied:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TableStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
