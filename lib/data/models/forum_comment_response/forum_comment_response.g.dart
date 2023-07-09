// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forum_comment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ForumCommentResponse _$$_ForumCommentResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ForumCommentResponse(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ForumCommentData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ForumCommentResponseToJson(
        _$_ForumCommentResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$_ForumCommentData _$$_ForumCommentDataFromJson(Map<String, dynamic> json) =>
    _$_ForumCommentData(
      currentPage: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ForumCommentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: json['from'] as int?,
      lastPage: json['last_page'] as int?,
      lastPageUrl: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String?,
      perPage: json['per_page'] as String?,
      prevPageUrl: json['prev_page_url'] as String?,
      to: json['to'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_ForumCommentDataToJson(_$_ForumCommentData instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'first_page_url': instance.firstPageUrl,
      'from': instance.from,
      'last_page': instance.lastPage,
      'last_page_url': instance.lastPageUrl,
      'links': instance.links,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'per_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

_$_ForumCommentModel _$$_ForumCommentModelFromJson(Map<String, dynamic> json) =>
    _$_ForumCommentModel(
      replyId: json['reply_id'] as int?,
      replyContent: json['reply_content'] as String?,
      threadId: json['thread_id'] as int?,
      replyAt: json['reply_at'] == null
          ? null
          : DateTime.parse(json['reply_at'] as String),
      replyBy: json['reply_by'] as String?,
      memberId: json['member_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdBy: json['created_by'] as String?,
      totalRead: json['total_read'] as int?,
      totalLike: json['total_like'] as int?,
      childReply: (json['child_reply'] as List<dynamic>?)
          ?.map((e) => ForumCommentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ForumCommentModelToJson(
        _$_ForumCommentModel instance) =>
    <String, dynamic>{
      'reply_id': instance.replyId,
      'reply_content': instance.replyContent,
      'thread_id': instance.threadId,
      'reply_at': instance.replyAt?.toIso8601String(),
      'reply_by': instance.replyBy,
      'member_id': instance.memberId,
      'created_at': instance.createdAt?.toIso8601String(),
      'created_by': instance.createdBy,
      'total_read': instance.totalRead,
      'total_like': instance.totalLike,
      'child_reply': instance.childReply,
    };
