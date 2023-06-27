// To parse this JSON data, do
//
//     final diskusiResponse = diskusiResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'diskusi_response.freezed.dart';
part 'diskusi_response.g.dart';

@freezed
class DiskusiResponse with _$DiskusiResponse {
  const factory DiskusiResponse({
    String? message,
    DiskusiData? data,
  }) = _DiskusiResponse;

  factory DiskusiResponse.fromJson(Map<String, dynamic> json) =>
      _$DiskusiResponseFromJson(json);
}

@freezed
class DiskusiData with _$DiskusiData {
  const factory DiskusiData({
    @JsonKey(name: "current_page") int? currentPage,
    List<DiskusiModel>? data,
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
  }) = _DiskusiData;

  factory DiskusiData.fromJson(Map<String, dynamic> json) =>
      _$DiskusiDataFromJson(json);
}

@freezed
class DiskusiModel with _$DiskusiModel {
  const factory DiskusiModel({
    @JsonKey(name: "thread_id") int? threadId,
    @JsonKey(name: "thread_subject") String? threadSubject,
    @JsonKey(name: "thread_slug") String? threadSlug,
    @JsonKey(name: "thread_description") String? threadDescription,
    @JsonKey(name: "thread_date") DateTime? threadDate,
    @JsonKey(name: "thread_thumbnail") String? threadThumbnail,
    @JsonKey(name: "thread_start") DateTime? threadStart,
    @JsonKey(name: "thread_end") DateTime? threadEnd,
    @JsonKey(name: "moderator_id") int? moderatorId,
    @JsonKey(name: "moderator_name") String? moderatorName,
    @JsonKey(name: "co_moderator") int? coModerator,
    @JsonKey(name: "co_moderator_name") String? coModeratorName,
    @JsonKey(name: "total_read") int? totalRead,
    @JsonKey(name: "total_like") int? totalLike,
    @JsonKey(name: "total_komentar") int? totalKomentar,
    @JsonKey(name: "active_at") DateTime? activeAt,
    @JsonKey(name: "active_by") String? activeBy,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "created_by") String? createdBy,
  }) = _DiskusiModel;

  factory DiskusiModel.fromJson(Map<String, dynamic> json) =>
      _$DiskusiModelFromJson(json);
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
