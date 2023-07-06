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
      propinsiId: fields[6] as int?,
      kotaId: fields[7] as int?,
      isAktivasi: fields[8] as bool?,
      isBlocked: fields[9] as bool?,
      aktivasiAt: fields[10] as DateTime?,
      blockedAt: fields[11] as DateTime?,
      createdAt: fields[12] as DateTime?,
      updatedAt: fields[13] as DateTime?,
      lastloginAt: fields[14] as DateTime?,
      kodePos: fields[15] as String?,
      photoPath: fields[16] as String?,
      photoUrl: fields[17] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Members obj) {
    writer
      ..writeByte(18)
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
      ..write(obj.lastloginAt)
      ..writeByte(15)
      ..write(obj.kodePos)
      ..writeByte(16)
      ..write(obj.photoPath)
      ..writeByte(17)
      ..write(obj.photoUrl);
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
      noHp: json['no_hp'] as String?,
      tanggalLahir: json['tanggal_lahir'] as String?,
      propinsiId: json['propinsi_id'] as int?,
      kotaId: json['kota_id'] as int?,
      isAktivasi: json['is_aktivasi'] as bool?,
      isBlocked: json['is_blocked'] as bool?,
      aktivasiAt: json['aktivasi_at'] == null
          ? null
          : DateTime.parse(json['aktivasi_at'] as String),
      blockedAt: json['blocked_at'] == null
          ? null
          : DateTime.parse(json['blocked_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      lastloginAt: json['last_login_at'] == null
          ? null
          : DateTime.parse(json['last_login_at'] as String),
      kodePos: json['kode_pos'] as String?,
      photoPath: json['photo_path'] as String?,
      photoUrl: json['photo_url'] as String?,
    );

Map<String, dynamic> _$$_MembersToJson(_$_Members instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'username': instance.username,
      'fullname': instance.fullname,
      'email': instance.email,
      'no_hp': instance.noHp,
      'tanggal_lahir': instance.tanggalLahir,
      'propinsi_id': instance.propinsiId,
      'kota_id': instance.kotaId,
      'is_aktivasi': instance.isAktivasi,
      'is_blocked': instance.isBlocked,
      'aktivasi_at': instance.aktivasiAt?.toIso8601String(),
      'blocked_at': instance.blockedAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'last_login_at': instance.lastloginAt?.toIso8601String(),
      'kode_pos': instance.kodePos,
      'photo_path': instance.photoPath,
      'photo_url': instance.photoUrl,
    };
