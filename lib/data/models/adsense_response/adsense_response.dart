// To parse this JSON data, do
//
//     final adseneseResponse = adseneseResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'adsense_response.freezed.dart';
part 'adsense_response.g.dart';

@freezed
class AdsenseResponse with _$AdsenseResponse {
  const factory AdsenseResponse({
    String? message,
    Adsense? data,
  }) = _AdsenseResponse;

  factory AdsenseResponse.fromJson(Map<String, dynamic> json) =>
      _$AdsenseResponseFromJson(json);
}

@freezed
class Adsense with _$Adsense {
  const factory Adsense({
    int? id,
    @JsonKey(name: "tanggal_start") DateTime? tanggalStart,
    @JsonKey(name: "tanggal_end") DateTime? tanggalEnd,
    String? banner,
    @JsonKey(name: "kota_id") String? kotaId,
    @JsonKey(name: "kota_name") String? kotaName,
    @JsonKey(name: "propinsi_id") String? propinsiId,
    @JsonKey(name: "propinsi_name") String? propinsiName,
    @JsonKey(name: "deleted_at") String? deletedAt,
    @JsonKey(name: "status_ads") int? statusAds,
    @JsonKey(name: "deleted_by") String? deletedBy,
  }) = _Adsense;

  factory Adsense.fromJson(Map<String, dynamic> json) =>
      _$AdsenseFromJson(json);
}
