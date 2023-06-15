// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LoginResponseAdapter extends TypeAdapter<_$_LoginResponse> {
  @override
  final int typeId = 1;

  @override
  _$_LoginResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_LoginResponse(
      message: fields[0] as String?,
      data: fields[1] as UserData?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_LoginResponse obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.message)
      ..writeByte(1)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UserDataAdapter extends TypeAdapter<_$_UserData> {
  @override
  final int typeId = 2;

  @override
  _$_UserData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_UserData(
      user: fields[0] as User?,
      token: fields[1] as String?,
      loginDate: fields[2] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_UserData obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.user)
      ..writeByte(1)
      ..write(obj.token)
      ..writeByte(2)
      ..write(obj.loginDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UserAdapter extends TypeAdapter<_$_User> {
  @override
  final int typeId = 3;

  @override
  _$_User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_User(
      id: fields[0] as int?,
      username: fields[1] as String?,
      fullname: fields[2] as String?,
      email: fields[3] as String?,
      emailVerifiedAt: fields[4] as DateTime?,
      createdAt: fields[5] as DateTime?,
      updatedAt: fields[6] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_User obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.username)
      ..writeByte(2)
      ..write(obj.fullname)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.emailVerifiedAt)
      ..writeByte(5)
      ..write(obj.createdAt)
      ..writeByte(6)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponse _$$_LoginResponseFromJson(Map<String, dynamic> json) =>
    _$_LoginResponse(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UserData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LoginResponseToJson(_$_LoginResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

_$_UserData _$$_UserDataFromJson(Map<String, dynamic> json) => _$_UserData(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
      loginDate: json['login_date'] == null
          ? null
          : DateTime.parse(json['login_date'] as String),
    );

Map<String, dynamic> _$$_UserDataToJson(_$_UserData instance) =>
    <String, dynamic>{
      'user': instance.user?.toJson(),
      'token': instance.token,
      'login_date': instance.loginDate?.toIso8601String(),
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int?,
      username: json['username'] as String?,
      fullname: json['fullname'] as String?,
      email: json['email'] as String?,
      emailVerifiedAt: json['email_verified_at'] == null
          ? null
          : DateTime.parse(json['email_verified_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'fullname': instance.fullname,
      'email': instance.email,
      'email_verified_at': instance.emailVerifiedAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
