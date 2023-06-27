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
    @JsonKey(name: "no_hp") @HiveField(4) String? noHp,
    @JsonKey(name: "tanggal_lahir") @HiveField(5) String? tanggalLahir,
    @JsonKey(name: "propinsi_id") @HiveField(6) int? propinsiId,
    @JsonKey(name: "kota_id") @HiveField(7) int? kotaId,
    @JsonKey(name: "is_aktivasi") @HiveField(8) bool? isAktivasi,
    @JsonKey(name: "is_blocked") @HiveField(9) bool? isBlocked,
    @JsonKey(name: "aktivasi_at") @HiveField(10) DateTime? aktivasiAt,
    @JsonKey(name: "blocked_at") @HiveField(11) DateTime? blockedAt,
    @JsonKey(name: "created_at") @HiveField(12) DateTime? createdAt,
    @JsonKey(name: "updated_at") @HiveField(13) DateTime? updatedAt,
    @JsonKey(name: "last_login_at") @HiveField(14) DateTime? lastloginAt,
    @JsonKey(name: "kode_pos") @HiveField(15) String? kodePos,
  }) = _Members;

  factory Members.fromJson(Map<String, dynamic> json) =>
      _$MembersFromJson(json);
}
