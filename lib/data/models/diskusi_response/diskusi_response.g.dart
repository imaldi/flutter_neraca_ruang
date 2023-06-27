// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diskusi_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiskusiResponse _$$_DiskusiResponseFromJson(Map<String, dynamic> json) =>
    _$_DiskusiResponse(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DiskusiData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DiskusiResponseToJson(_$_DiskusiResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$_DiskusiData _$$_DiskusiDataFromJson(Map<String, dynamic> json) =>
    _$_DiskusiData(
      currentPage: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DiskusiModel.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$$_DiskusiDataToJson(_$_DiskusiData instance) =>
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

_$_DiskusiModel _$$_DiskusiModelFromJson(Map<String, dynamic> json) =>
    _$_DiskusiModel(
      threadId: json['thread_id'] as int?,
      threadSubject: json['thread_subject'] as String?,
      threadSlug: json['thread_slug'] as String?,
      threadDescription: json['thread_description'] as String?,
      threadDate: json['thread_date'] == null
          ? null
          : DateTime.parse(json['thread_date'] as String),
      threadThumbnail: json['thread_thumbnail'] as String?,
      threadStart: json['thread_start'] == null
          ? null
          : DateTime.parse(json['thread_start'] as String),
      threadEnd: json['thread_end'] == null
          ? null
          : DateTime.parse(json['thread_end'] as String),
      moderatorId: json['moderator_id'] as int?,
      moderatorName: json['moderator_name'] as String?,
      coModerator: json['co_moderator'] as int?,
      coModeratorName: json['co_moderator_name'] as String?,
      totalRead: json['total_read'] as int?,
      totalLike: json['total_like'] as int?,
      totalKomentar: json['total_komentar'] as int?,
      activeAt: json['active_at'] == null
          ? null
          : DateTime.parse(json['active_at'] as String),
      activeBy: json['active_by'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdBy: json['created_by'] as String?,
    );

Map<String, dynamic> _$$_DiskusiModelToJson(_$_DiskusiModel instance) =>
    <String, dynamic>{
      'thread_id': instance.threadId,
      'thread_subject': instance.threadSubject,
      'thread_slug': instance.threadSlug,
      'thread_description': instance.threadDescription,
      'thread_date': instance.threadDate?.toIso8601String(),
      'thread_thumbnail': instance.threadThumbnail,
      'thread_start': instance.threadStart?.toIso8601String(),
      'thread_end': instance.threadEnd?.toIso8601String(),
      'moderator_id': instance.moderatorId,
      'moderator_name': instance.moderatorName,
      'co_moderator': instance.coModerator,
      'co_moderator_name': instance.coModeratorName,
      'total_read': instance.totalRead,
      'total_like': instance.totalLike,
      'total_komentar': instance.totalKomentar,
      'active_at': instance.activeAt?.toIso8601String(),
      'active_by': instance.activeBy,
      'created_at': instance.createdAt?.toIso8601String(),
      'created_by': instance.createdBy,
    };

_$_Link _$$_LinkFromJson(Map<String, dynamic> json) => _$_Link(
      url: json['url'] as String?,
      label: json['label'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$_LinkToJson(_$_Link instance) => <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
