// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forum_comment_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ForumCommentModelAdapter extends TypeAdapter<_$_ForumCommentModel> {
  @override
  final int typeId = 7;

  @override
  _$_ForumCommentModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_ForumCommentModel(
      replyId: fields[0] as int?,
      replyContent: fields[1] as String?,
      threadId: fields[2] as int?,
      replyAt: fields[3] as DateTime?,
      replyBy: fields[4] as String?,
      memberId: fields[5] as int?,
      createdAt: fields[6] as DateTime?,
      createdBy: fields[7] as String?,
      totalRead: fields[8] as int?,
      totalLike: fields[9] as int?,
      childReply: (fields[10] as List?)?.cast<ForumCommentModel>(),
      localLike: fields[11] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, _$_ForumCommentModel obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.replyId)
      ..writeByte(1)
      ..write(obj.replyContent)
      ..writeByte(2)
      ..write(obj.threadId)
      ..writeByte(3)
      ..write(obj.replyAt)
      ..writeByte(4)
      ..write(obj.replyBy)
      ..writeByte(5)
      ..write(obj.memberId)
      ..writeByte(6)
      ..write(obj.createdAt)
      ..writeByte(7)
      ..write(obj.createdBy)
      ..writeByte(8)
      ..write(obj.totalRead)
      ..writeByte(9)
      ..write(obj.totalLike)
      ..writeByte(11)
      ..write(obj.localLike)
      ..writeByte(10)
      ..write(obj.childReply);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ForumCommentModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
      perPage: json['per_page'] as int?,
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
      localLike: json['local_like'] as bool? ?? false,
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
      'child_reply': instance.childReply?.map((e) => e.toJson()).toList(),
      'local_like': instance.localLike,
    };
