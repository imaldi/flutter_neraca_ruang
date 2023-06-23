// To parse this JSON data, do
//
//     final kotaKabupatenResponse = kotaKabupatenResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'kota_kabupaten_response.freezed.dart';
part 'kota_kabupaten_response.g.dart';

@freezed
class KotaKabupatenResponse with _$KotaKabupatenResponse {
  const factory KotaKabupatenResponse({
    String? message,
    List<KotaKabupaten>? data,
  }) = _KotaKabupatenResponse;

  factory KotaKabupatenResponse.fromJson(Map<String, dynamic> json) =>
      _$KotaKabupatenResponseFromJson(json);
}

@freezed
class KotaKabupaten with _$KotaKabupaten {
  const factory KotaKabupaten({
    int? id,
    int? propinsiId,
    int? kotaId,
    String? name,
    String? kotaIcon1,
    String? kotaIcon2,
    String? kotaIcon3,
    String? kotaIcon4,
    String? kotaIcon5,
  }) = _KotaKabupaten;

  factory KotaKabupaten.fromJson(Map<String, dynamic> json) =>
      _$KotaKabupatenFromJson(json);
}
