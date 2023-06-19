// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

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
      'data': instance.data,
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
      'members': instance.members,
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
