// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentResponse _$$_CommentResponseFromJson(Map<String, dynamic> json) =>
    _$_CommentResponse(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CommentResponseToJson(_$_CommentResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$_CommentModel _$$_CommentModelFromJson(Map<String, dynamic> json) =>
    _$_CommentModel(
      id: json['id'] as int?,
      contentId: json['content_id'] as int?,
      komentar: json['komentar'] as String?,
      memberId: json['member_id'] as int?,
      nikPublic: json['nik_public'] as String?,
      username: json['username'] as String?,
      emailPublic: json['email_public'] as String?,
      tipeUser: json['tipe_user'] as String?,
      komentarAt: json['komentar_at'] == null
          ? null
          : DateTime.parse(json['komentar_at'] as String),
      isHide: json['is_hide'] as int?,
      hideAt: json['hide_at'] == null
          ? null
          : DateTime.parse(json['hide_at'] as String),
      unhideAt: json['unhide_at'] == null
          ? null
          : DateTime.parse(json['unhide_at'] as String),
    );

Map<String, dynamic> _$$_CommentModelToJson(_$_CommentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content_id': instance.contentId,
      'komentar': instance.komentar,
      'member_id': instance.memberId,
      'nik_public': instance.nikPublic,
      'username': instance.username,
      'email_public': instance.emailPublic,
      'tipe_user': instance.tipeUser,
      'komentar_at': instance.komentarAt?.toIso8601String(),
      'is_hide': instance.isHide,
      'hide_at': instance.hideAt?.toIso8601String(),
      'unhide_at': instance.unhideAt?.toIso8601String(),
    };
