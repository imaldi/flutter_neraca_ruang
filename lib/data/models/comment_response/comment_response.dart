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
    int? contentId,
    String? komentar,
    int? memberId,
    String? nikPublic,
    String? username,
    String? emailPublic,
    String? tipeUser,
    DateTime? komentarAt,
    int? isHide,
    DateTime? hideAt,
    DateTime? unhideAt,
  }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);
}
