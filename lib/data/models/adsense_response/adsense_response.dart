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
    AdsenseData? data,
  }) = _AdsenseResponse;

  factory AdsenseResponse.fromJson(Map<String, dynamic> json) =>
      _$AdsenseResponseFromJson(json);
}

@freezed
class AdsenseData with _$AdsenseData {
  const factory AdsenseData({
    @JsonKey(name: "current_page") int? currentPage,
    List<Adsense>? data,
    @JsonKey(name: "first_page_url") String? firstPageUrl,
    int? from,
    @JsonKey(name: "last_page") int? lastPage,
    @JsonKey(name: "last_page_url") String? lastPageUrl,
    List<Link>? links,
    @JsonKey(name: "next_page_url") String? nextPageUrl,
    String? path,
    int? perPage,
    @JsonKey(name: "prev_page_url") String? prevPageUrl,
    int? to,
    int? total,
  }) = _AdsenseData;

  factory AdsenseData.fromJson(Map<String, dynamic> json) =>
      _$AdsenseDataFromJson(json);
}

@freezed
class Adsense with _$Adsense {
  const factory Adsense({
    int? id,
    @JsonKey(name: "tanggal_start") DateTime? tanggalStart,
    @JsonKey(name: "tanggal_end") DateTime? tanggalEnd,
    String? banner,
    @JsonKey(name: "deleted_at") int? statusAds,
    String? deletedAt,
    @JsonKey(name: "deleted_by") String? deletedBy,
  }) = _Adsense;

  factory Adsense.fromJson(Map<String, dynamic> json) =>
      _$AdsenseFromJson(json);
}

@freezed
class Link with _$Link {
  const factory Link({
    String? url,
    String? label,
    bool? active,
  }) = _Link;

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}
