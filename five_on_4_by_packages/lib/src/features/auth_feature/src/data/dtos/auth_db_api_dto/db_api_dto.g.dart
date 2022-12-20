// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_api_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AuthDbApiDTOAdapter extends TypeAdapter<AuthDbApiDTO> {
  @override
  final int typeId = 0;

  @override
  AuthDbApiDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AuthDbApiDTO(
      id: fields[0] as String,
      name: fields[1] as String,
      token: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AuthDbApiDTO obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.token);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthDbApiDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
