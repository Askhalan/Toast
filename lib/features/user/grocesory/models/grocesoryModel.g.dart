// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grocesoryModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GrocesoryModelAdapter extends TypeAdapter<GrocesoryModel> {
  @override
  final int typeId = 1;

  @override
  GrocesoryModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GrocesoryModel(
      ingredients: (fields[0] as List).cast<dynamic>(),
      listName: fields[1] as String,
      id: fields[2] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, GrocesoryModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.ingredients)
      ..writeByte(1)
      ..write(obj.listName)
      ..writeByte(2)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GrocesoryModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
