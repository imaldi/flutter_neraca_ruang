// To parse this JSON data, do
//
//     final forumCommentResponse = forumCommentResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import '../diskusi_response/diskusi_response.dart';

part 'forum_comment_response.freezed.dart';
part 'forum_comment_response.g.dart';

@freezed
class ForumCommentResponse with _$ForumCommentResponse {
  const factory ForumCommentResponse({
    String? message,
    ForumCommentData? data,
  }) = _ForumCommentResponse;

  factory ForumCommentResponse.fromJson(Map<String, dynamic> json) =>
      _$ForumCommentResponseFromJson(json);
}

@freezed
class ForumCommentData with _$ForumCommentData {
  const factory ForumCommentData({
    @JsonKey(name: "current_page") int? currentPage,
    List<ForumCommentModel>? data,
    @JsonKey(name: "first_page_url") String? firstPageUrl,
    int? from,
    @JsonKey(name: "last_page") int? lastPage,
    @JsonKey(name: "last_page_url") String? lastPageUrl,
    List<Link>? links,
    @JsonKey(name: "next_page_url") String? nextPageUrl,
    String? path,
    @JsonKey(name: "per_page") String? perPage,
    @JsonKey(name: "prev_page_url") String? prevPageUrl,
    int? to,
    int? total,
  }) = _ForumCommentData;

  factory ForumCommentData.fromJson(Map<String, dynamic> json) =>
      _$ForumCommentDataFromJson(json);
}

@freezed
class ForumCommentModel with _$ForumCommentModel {
  const factory ForumCommentModel({
    @JsonKey(name: "reply_id") int? replyId,
    @JsonKey(name: "reply_content") String? replyContent,
    @JsonKey(name: "thread_id") int? threadId,
    @JsonKey(name: "reply_at") DateTime? replyAt,
    @JsonKey(name: "reply_by") String? replyBy,
    @JsonKey(name: "member_id") int? memberId,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "created_by") String? createdBy,
    @JsonKey(name: "udpated_at") DateTime? updatedAt,
    @JsonKey(name: "updated_by") String? updatedBy,
    @JsonKey(name: "banned_at") DateTime? bannedAt,
    @JsonKey(name: "banned_by") String? bannedBy,
    @JsonKey(name: "unbanned_at") DateTime? unbannedAt,
    @JsonKey(name: "unbanned_by") String? unbannedBy,
    @JsonKey(name: "is_banned") bool? isBanned,
  }) = _ForumCommentModel;

  factory ForumCommentModel.fromJson(Map<String, dynamic> json) =>
      _$ForumCommentModelFromJson(json);
}
