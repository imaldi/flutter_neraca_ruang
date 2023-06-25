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
      contentId: json['contentId'] as int?,
      komentar: json['komentar'] as String?,
      memberId: json['memberId'] as int?,
      nikPublic: json['nikPublic'] as String?,
      username: json['username'] as String?,
      emailPublic: json['emailPublic'] as String?,
      tipeUser: json['tipeUser'] as String?,
      komentarAt: json['komentarAt'] == null
          ? null
          : DateTime.parse(json['komentarAt'] as String),
      isHide: json['isHide'] as int?,
      hideAt: json['hideAt'] == null
          ? null
          : DateTime.parse(json['hideAt'] as String),
      unhideAt: json['unhideAt'] == null
          ? null
          : DateTime.parse(json['unhideAt'] as String),
    );

Map<String, dynamic> _$$_CommentModelToJson(_$_CommentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contentId': instance.contentId,
      'komentar': instance.komentar,
      'memberId': instance.memberId,
      'nikPublic': instance.nikPublic,
      'username': instance.username,
      'emailPublic': instance.emailPublic,
      'tipeUser': instance.tipeUser,
      'komentarAt': instance.komentarAt?.toIso8601String(),
      'isHide': instance.isHide,
      'hideAt': instance.hideAt?.toIso8601String(),
      'unhideAt': instance.unhideAt?.toIso8601String(),
    };
