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
    @JsonKey(name: "current_page") int? currentPage,
    List<Datum>? data,
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
class Datum with _$Datum {
  const factory Datum({
    int? id,
    String? judul,
    String? slug,
    String? keterangan,
    String? tipe,
    @JsonKey(name: "kategori_id") int? kategoriId,
    @JsonKey(name: "kategori_name") String? kategoriName,
    @JsonKey(name: "source_id") int? sourceId,
    @JsonKey(name: "source_name") String? sourceName,
    @JsonKey(name: "source_url") String? sourceUrl,
    @JsonKey(name: "source_date") dynamic sourceDate,
    @JsonKey(name: "propinsi_id") int? propinsiId,
    @JsonKey(name: "kota_id") int? kotaId,
    @JsonKey(name: "propinsi_name") String? propinsiName,
    @JsonKey(name: "kota_name") String? kotaName,
    @JsonKey(name: "tags_pihak") Tags? tagsPihak,
    @JsonKey(name: "tags_topik") Tags? tagsTopik,
    @JsonKey(name: "tags_otonomi") Tags? tagsOtonomi,
    @JsonKey(name: "total_read") int? totalRead,
    @JsonKey(name: "total_like") int? totalLike,
    @JsonKey(name: "total_comment") int? totalComment,
    @JsonKey(name: "total_shared") int? totalShared,
    String? domain,
    @JsonKey(name: "full_path") String? fullPath,
    @JsonKey(name: "file_upload") String? fileUpload,
    @JsonKey(name: "thumb_path") String? thumbPath,
    @JsonKey(name: "video_url") String? videoUrl,
    String? thumbnail,
    String? images,
    @JsonKey(name: "active_at") DateTime? activeAt,
    @JsonKey(name: "active_by") String? activeBy,
    @JsonKey(name: "publish_at") DateTime? publishAt,
    @JsonKey(name: "publish_by") String? publishBy,
    @JsonKey(name: "deleted_at") DateTime? deletedAt,
    @JsonKey(name: "deleted_by") String? deletedBy,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class Tags with _$Tags {
  const factory Tags({
    @JsonKey(name: "tags_id") int? tagsId,
    @JsonKey(name: "tags_name") String? tagsName,
    @JsonKey(name: "tags_icon") String? tagsIcon,
    @JsonKey(name: "tags_tipe") String? tagsTipe,
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
