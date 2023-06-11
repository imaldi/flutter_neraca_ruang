// To parse this JSON data, do
//
//     final adsenseResponse = adsenseResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'adsense_response.freezed.dart';
part 'adsense_response.g.dart';

@freezed
class AdsenseResponse with _$AdsenseResponse {
  const factory AdsenseResponse({
    String? message,
    Data? data,
  }) = _AdsenseResponse;

  factory AdsenseResponse.fromJson(Map<String, dynamic> json) =>
      _$AdsenseResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "current_page") int? currentPage,
    List<Adsense>? data,
    @JsonKey(name: "first_page_url") String? firstPageUrl,
    int? from,
    @JsonKey(name: "last_page") int? lastPage,
    @JsonKey(name: "last_page_url") String? lastPageUrl,
    List<Link>? links,
    @JsonKey(name: "next_page_url") String? nextPageUrl,
    String? path,
    @JsonKey(name: "per_page") int? perPage,
    @JsonKey(name: "prev_page_url") String? prevPageUrl,
    int? to,
    int? total,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Adsense with _$Adsense {
  const factory Adsense({
    int? id,
    @JsonKey(name: "tanggal_start") DateTime? tanggalStart,
    @JsonKey(name: "tanggal_end") DateTime? tanggalEnd,
    String? domain,
    @JsonKey(name: "full_path") String? fullPath,
    @JsonKey(name: "file_ads") String? fileAds,
    @JsonKey(name: "status_ads") int? statusAds,
    @JsonKey(name: "delete_at") DateTime? deletedAt,
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
