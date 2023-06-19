// To parse this JSON data, do
//
//     final authResponse = authResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@freezed
class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
    String? message,
    MemberData? data,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}

@freezed
class MemberData with _$MemberData {
  const factory MemberData({
    Members? members,
    String? token,
    DateTime? loginDate,
  }) = _MemberData;

  factory MemberData.fromJson(Map<String, dynamic> json) =>
      _$MemberDataFromJson(json);
}

@freezed
class Members with _$Members {
  const factory Members({
    int? memberId,
    String? username,
    String? fullname,
    String? email,
    String? noHp,
    String? tanggalLahir,
    String? propinsiId,
    String? kotaId,
    String? isAktivasi,
    String? isBlocked,
    String? aktivasiAt,
    String? blockedAt,
    String? createdAt,
    DateTime? updatedAt,
    DateTime? lastloginAt,
  }) = _Members;

  factory Members.fromJson(Map<String, dynamic> json) =>
      _$MembersFromJson(json);
}
