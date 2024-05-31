// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_list.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SaveNewsListAdapter extends TypeAdapter<SaveNewsList> {
  @override
  final int typeId = 1;

  @override
  SaveNewsList read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SaveNewsList(
      image: fields[1] as String,
      title: fields[2] as String,
      description: fields[3] as String,
      content: fields[4] as String,
      author: fields[5] as String,
      sourceName: fields[6] as String,
      formattedDate: fields[7] as String,
      id: fields[0] as int?,
      url: fields[8] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SaveNewsList obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.image)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.content)
      ..writeByte(5)
      ..write(obj.author)
      ..writeByte(6)
      ..write(obj.sourceName)
      ..writeByte(7)
      ..write(obj.formattedDate)
      ..writeByte(8)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SaveNewsListAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
