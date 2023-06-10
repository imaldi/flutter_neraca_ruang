// To parse this JSON data, do
//
//     final dashboardResponse = dashboardResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_response.freezed.dart';
part 'dashboard_response.g.dart';

@freezed
class DashboardResponse with _$DashboardResponse {
  const factory DashboardResponse({
    String? message,
    Data? data,
  }) = _DashboardResponse;

  factory DashboardResponse.fromJson(Map<String, dynamic> json) =>
      _$DashboardResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    int? currentPage,
    List<Datum>? data,
    String? firstPageUrl,
    int? from,
    int? lastPage,
    String? lastPageUrl,
    List<Link>? links,
    dynamic nextPageUrl,
    String? path,
    int? perPage,
    dynamic prevPageUrl,
    int? to,
    int? total,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    int? id,
    String? judul,
    String? slug,
    String? keterangan,
    String? tipe,
    dynamic kategoriId,
    String? kategoriName,
    int? sourceId,
    String? sourceName,
    String? sourceUrl,
    dynamic sourceDate,
    int? propinsiId,
    int? kotaId,
    String? propinsiName,
    String? kotaName,
    Tags? tagsPihak,
    Tags? tagsTopik,
    Tags? tagsOtonomi,
    int? totalRead,
    int? totalLike,
    dynamic totalShared,
    String? domain,
    String? fullPath,
    String? fileUpload,
    String? thumbPath,
    dynamic videoUrl,
    dynamic thumbnail,
    String? images,
    DateTime? activeAt,
    String? activeBy,
    DateTime? publishAt,
    DateTime? publishBy,
    DateTime? deletedAt,
    DateTime? deletedBy,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class Tags with _$Tags {
  const factory Tags({
    int? tagsId,
    String? tagsName,
    String? tagsIcon,
    TagsTipe? tagsTipe,
  }) = _Tags;

  factory Tags.fromJson(Map<String, dynamic> json) => _$TagsFromJson(json);
}

enum TagsTipe { OTONOMI, PIHAK_TERKAIT, TOPIK }

final tagsTipeValues = EnumValues({
  "otonomi": TagsTipe.OTONOMI,
  "pihak-terkait": TagsTipe.PIHAK_TERKAIT,
  "topik": TagsTipe.TOPIK
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
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
