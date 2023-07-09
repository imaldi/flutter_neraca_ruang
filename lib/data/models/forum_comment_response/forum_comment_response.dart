// To parse this JSON data, do
//
//     final forumCommentResponse = forumCommentResponseFromJson(jsonString);

import 'package:flutter_neraca_ruang/core/consts/hive_type_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'dart:convert';

import '../dashboard_response/dashboard_response.dart';

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
    @JsonKey(name: "per_page") int? perPage,
    @JsonKey(name: "prev_page_url") String? prevPageUrl,
    int? to,
    int? total,
  }) = _ForumCommentData;

  factory ForumCommentData.fromJson(Map<String, dynamic> json) =>
      _$ForumCommentDataFromJson(json);
}

@freezed
class ForumCommentModel with _$ForumCommentModel {
  @HiveType(typeId: forumCommentTypeId, adapterName: 'ForumCommentModelAdapter')
  @JsonSerializable(explicitToJson: true)
  const factory ForumCommentModel({
    @HiveField(0) @JsonKey(name: "reply_id") int? replyId,
    @HiveField(1) @JsonKey(name: "reply_content") String? replyContent,
    @HiveField(2) @JsonKey(name: "thread_id") int? threadId,
    @HiveField(3) @JsonKey(name: "reply_at") DateTime? replyAt,
    @HiveField(4) @JsonKey(name: "reply_by") String? replyBy,
    @HiveField(5) @JsonKey(name: "member_id") int? memberId,
    @HiveField(6) @JsonKey(name: "created_at") DateTime? createdAt,
    @HiveField(7) @JsonKey(name: "created_by") String? createdBy,
    @HiveField(8) @JsonKey(name: "total_read") int? totalRead,
    @HiveField(9) @JsonKey(name: "total_like") int? totalLike,
    @HiveField(10)
    @JsonKey(name: "child_reply")
    List<ForumCommentModel>? childReply,
    @HiveField(11) @JsonKey(name: "local_like") @Default(false) bool localLike,
  }) = _ForumCommentModel;

  factory ForumCommentModel.fromJson(Map<String, dynamic> json) =>
      _$ForumCommentModelFromJson(json);
}
