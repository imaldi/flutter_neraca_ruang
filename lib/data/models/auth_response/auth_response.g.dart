// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AuthResponseAdapter extends TypeAdapter<_$_AuthResponse> {
  @override
  final int typeId = 4;

  @override
  _$_AuthResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_AuthResponse(
      message: fields[0] as String?,
      data: fields[1] as MemberData?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_AuthResponse obj) {
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
      other is AuthResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MemberDataAdapter extends TypeAdapter<_$_MemberData> {
  @override
  final int typeId = 5;

  @override
  _$_MemberData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_MemberData(
      members: fields[0] as Members?,
      token: fields[1] as String?,
      loginDate: fields[2] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_MemberData obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.members)
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
      other is MemberDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MemberAdapter extends TypeAdapter<_$_Members> {
  @override
  final int typeId = 6;

  @override
  _$_Members read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Members(
      memberId: fields[0] as int?,
      username: fields[1] as String?,
      fullname: fields[2] as String?,
      email: fields[3] as String?,
      noHp: fields[4] as String?,
      tanggalLahir: fields[5] as String?,
      propinsiId: fields[6] as String?,
      kotaId: fields[7] as String?,
      isAktivasi: fields[8] as String?,
      isBlocked: fields[9] as String?,
      aktivasiAt: fields[10] as String?,
      blockedAt: fields[11] as String?,
      createdAt: fields[12] as String?,
      updatedAt: fields[13] as DateTime?,
      lastloginAt: fields[14] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Members obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.memberId)
      ..writeByte(1)
      ..write(obj.username)
      ..writeByte(2)
      ..write(obj.fullname)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.noHp)
      ..writeByte(5)
      ..write(obj.tanggalLahir)
      ..writeByte(6)
      ..write(obj.propinsiId)
      ..writeByte(7)
      ..write(obj.kotaId)
      ..writeByte(8)
      ..write(obj.isAktivasi)
      ..writeByte(9)
      ..write(obj.isBlocked)
      ..writeByte(10)
      ..write(obj.aktivasiAt)
      ..writeByte(11)
      ..write(obj.blockedAt)
      ..writeByte(12)
      ..write(obj.createdAt)
      ..writeByte(13)
      ..write(obj.updatedAt)
      ..writeByte(14)
      ..write(obj.lastloginAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MemberAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthResponse _$$_AuthResponseFromJson(Map<String, dynamic> json) =>
    _$_AuthResponse(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : MemberData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AuthResponseToJson(_$_AuthResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

_$_MemberData _$$_MemberDataFromJson(Map<String, dynamic> json) =>
    _$_MemberData(
      members: json['members'] == null
          ? null
          : Members.fromJson(json['members'] as Map<String, dynamic>),
      token: json['token'] as String?,
      loginDate: json['loginDate'] == null
          ? null
          : DateTime.parse(json['loginDate'] as String),
    );

Map<String, dynamic> _$$_MemberDataToJson(_$_MemberData instance) =>
    <String, dynamic>{
      'members': instance.members?.toJson(),
      'token': instance.token,
      'loginDate': instance.loginDate?.toIso8601String(),
    };

_$_Members _$$_MembersFromJson(Map<String, dynamic> json) => _$_Members(
      memberId: json['memberId'] as int?,
      username: json['username'] as String?,
      fullname: json['fullname'] as String?,
      email: json['email'] as String?,
      noHp: json['noHp'] as String?,
      tanggalLahir: json['tanggalLahir'] as String?,
      propinsiId: json['propinsiId'] as String?,
      kotaId: json['kotaId'] as String?,
      isAktivasi: json['isAktivasi'] as String?,
      isBlocked: json['isBlocked'] as String?,
      aktivasiAt: json['aktivasiAt'] as String?,
      blockedAt: json['blockedAt'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      lastloginAt: json['lastloginAt'] == null
          ? null
          : DateTime.parse(json['lastloginAt'] as String),
    );

Map<String, dynamic> _$$_MembersToJson(_$_Members instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'username': instance.username,
      'fullname': instance.fullname,
      'email': instance.email,
      'noHp': instance.noHp,
      'tanggalLahir': instance.tanggalLahir,
      'propinsiId': instance.propinsiId,
      'kotaId': instance.kotaId,
      'isAktivasi': instance.isAktivasi,
      'isBlocked': instance.isBlocked,
      'aktivasiAt': instance.aktivasiAt,
      'blockedAt': instance.blockedAt,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'lastloginAt': instance.lastloginAt?.toIso8601String(),
    };
