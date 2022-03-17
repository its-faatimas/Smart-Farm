// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myanimals_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MyAnimalsModelAdapter extends TypeAdapter<MyAnimalsModel> {
  @override
  final int typeId = 0;

  @override
  MyAnimalsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MyAnimalsModel(
      id: fields[0] as int?,
      name: fields[1] as String?,
      description: fields[2] as String?,
      percentFood: fields[3] as int?,
      percentMade: fields[4] as int?,
      count: fields[5] as int?,
      slug: fields[6] as String?,
      publishedAt: fields[7] as DateTime?,
      createdAt: fields[8] as DateTime?,
      updatedAt: fields[9] as DateTime?,
      img: fields[10] as Img?,
    );
  }

  @override
  void write(BinaryWriter writer, MyAnimalsModel obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.percentFood)
      ..writeByte(4)
      ..write(obj.percentMade)
      ..writeByte(5)
      ..write(obj.count)
      ..writeByte(6)
      ..write(obj.slug)
      ..writeByte(7)
      ..write(obj.publishedAt)
      ..writeByte(8)
      ..write(obj.createdAt)
      ..writeByte(9)
      ..write(obj.updatedAt)
      ..writeByte(10)
      ..write(obj.img);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyAnimalsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ImgAdapter extends TypeAdapter<Img> {
  @override
  final int typeId = 1;

  @override
  Img read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Img(
      id: fields[0] as int?,
      name: fields[1] as String?,
      alternativeText: fields[2] as String?,
      caption: fields[3] as String?,
      width: fields[4] as int?,
      height: fields[5] as int?,
      formats: fields[6] as Formats?,
      hash: fields[7] as String?,
      ext: fields[8] as String?,
      mime: fields[9] as String?,
      size: fields[10] as double?,
      url: fields[11] as String?,
      previewUrl: fields[12] as dynamic,
      provider: fields[13] as String?,
      providerMetadata: fields[14] as dynamic,
      createdAt: fields[15] as DateTime?,
      updatedAt: fields[16] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, Img obj) {
    writer
      ..writeByte(17)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.alternativeText)
      ..writeByte(3)
      ..write(obj.caption)
      ..writeByte(4)
      ..write(obj.width)
      ..writeByte(5)
      ..write(obj.height)
      ..writeByte(6)
      ..write(obj.formats)
      ..writeByte(7)
      ..write(obj.hash)
      ..writeByte(8)
      ..write(obj.ext)
      ..writeByte(9)
      ..write(obj.mime)
      ..writeByte(10)
      ..write(obj.size)
      ..writeByte(11)
      ..write(obj.url)
      ..writeByte(12)
      ..write(obj.previewUrl)
      ..writeByte(13)
      ..write(obj.provider)
      ..writeByte(14)
      ..write(obj.providerMetadata)
      ..writeByte(15)
      ..write(obj.createdAt)
      ..writeByte(16)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImgAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class FormatsAdapter extends TypeAdapter<Formats> {
  @override
  final int typeId = 2;

  @override
  Formats read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Formats(
      thumbnail: fields[0] as Large?,
      large: fields[1] as Large?,
      medium: fields[2] as Large?,
      small: fields[3] as Large?,
    );
  }

  @override
  void write(BinaryWriter writer, Formats obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.thumbnail)
      ..writeByte(1)
      ..write(obj.large)
      ..writeByte(2)
      ..write(obj.medium)
      ..writeByte(3)
      ..write(obj.small);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FormatsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class LargeAdapter extends TypeAdapter<Large> {
  @override
  final int typeId = 3;

  @override
  Large read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Large(
      name: fields[0] as String?,
      hash: fields[2] as String?,
      ext: fields[1] as String?,
      mime: fields[3] as String?,
      width: fields[4] as int?,
      height: fields[5] as int?,
      size: fields[6] as double?,
      path: fields[7] as dynamic,
      url: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Large obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.ext)
      ..writeByte(2)
      ..write(obj.hash)
      ..writeByte(3)
      ..write(obj.mime)
      ..writeByte(4)
      ..write(obj.width)
      ..writeByte(5)
      ..write(obj.height)
      ..writeByte(6)
      ..write(obj.size)
      ..writeByte(7)
      ..write(obj.path)
      ..writeByte(8)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LargeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
