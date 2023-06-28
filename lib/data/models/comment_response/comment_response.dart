// To parse this JSON data, do
//
//     final commentResponse = commentResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'comment_response.freezed.dart';
part 'comment_response.g.dart';

@freezed
class CommentResponse with _$CommentResponse {
  const factory CommentResponse({
    String? message,
    List<CommentModel>? data,
  }) = _CommentResponse;

  factory CommentResponse.fromJson(Map<String, dynamic> json) =>
      _$CommentResponseFromJson(json);
}

@freezed
class CommentModel with _$CommentModel {
  const factory CommentModel({
    int? id,
    @JsonKey(name: "content_id") int? contentId,
    String? komentar,
    @JsonKey(name: "member_id") int? memberId,
    @JsonKey(name: "nik_public") String? nikPublic,
    String? username,
    @JsonKey(name: "email_public") String? emailPublic,
    @JsonKey(name: "tipe_user") String? tipeUser,
    @JsonKey(name: "komentar_at") DateTime? komentarAt,
    @JsonKey(name: "is_hide") int? isHide,
    @JsonKey(name: "hide_at") DateTime? hideAt,
    @JsonKey(name: "unhide_at") DateTime? unhideAt,
  }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);
}
