// To parse this JSON data, do
//
//     final authResponse = authResponseFromJson(jsonString);

import 'package:flutter_neraca_ruang/core/consts/hive_type_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@freezed
class AuthResponse with _$AuthResponse {
  @HiveType(typeId: authResponseTypeId, adapterName: 'AuthResponseAdapter')
  @JsonSerializable(explicitToJson: true)
  const factory AuthResponse({
    @HiveField(0) String? message,
    @HiveField(1) MemberData? data,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}

@freezed
class MemberData with _$MemberData {
  @HiveType(typeId: memberDataTypeId, adapterName: 'MemberDataAdapter')
  @JsonSerializable(explicitToJson: true)
  const factory MemberData({
    @HiveField(0) Members? members,
    @HiveField(1) String? token,
    @HiveField(2) DateTime? loginDate,
  }) = _MemberData;

  factory MemberData.fromJson(Map<String, dynamic> json) =>
      _$MemberDataFromJson(json);
}

@freezed
class Members with _$Members {
  @HiveType(typeId: memberTypeId, adapterName: 'MemberAdapter')
  @JsonSerializable(explicitToJson: true)
  const factory Members({
    @HiveField(0) int? memberId,
    @HiveField(1) String? username,
    @HiveField(2) String? fullname,
    @HiveField(3) String? email,
    @HiveField(4) String? noHp,
    @HiveField(5) String? tanggalLahir,
    @HiveField(6) String? propinsiId,
    @HiveField(7) String? kotaId,
    @HiveField(8) String? isAktivasi,
    @HiveField(9) String? isBlocked,
    @HiveField(10) String? aktivasiAt,
    @HiveField(11) String? blockedAt,
    @HiveField(12) String? createdAt,
    @HiveField(13) DateTime? updatedAt,
    @HiveField(14) DateTime? lastloginAt,
  }) = _Members;

  factory Members.fromJson(Map<String, dynamic> json) =>
      _$MembersFromJson(json);
}
