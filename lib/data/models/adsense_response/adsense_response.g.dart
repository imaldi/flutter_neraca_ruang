// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adsense_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdsenseResponse _$$_AdsenseResponseFromJson(Map<String, dynamic> json) =>
    _$_AdsenseResponse(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AdsenseResponseToJson(_$_AdsenseResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      currentPage: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Adsense.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
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

_$_Adsense _$$_AdsenseFromJson(Map<String, dynamic> json) => _$_Adsense(
      id: json['id'] as int?,
      tanggalStart: json['tanggal_start'] == null
          ? null
          : DateTime.parse(json['tanggal_start'] as String),
      tanggalEnd: json['tanggal_end'] == null
          ? null
          : DateTime.parse(json['tanggal_end'] as String),
      domain: json['domain'] as String?,
      fullPath: json['full_path'] as String?,
      fileAds: json['file_ads'] as String?,
      statusAds: json['status_ads'] as int?,
      deletedAt: json['delete_at'] == null
          ? null
          : DateTime.parse(json['delete_at'] as String),
      deletedBy: json['deleted_by'] as String?,
    );

Map<String, dynamic> _$$_AdsenseToJson(_$_Adsense instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tanggal_start': instance.tanggalStart?.toIso8601String(),
      'tanggal_end': instance.tanggalEnd?.toIso8601String(),
      'domain': instance.domain,
      'full_path': instance.fullPath,
      'file_ads': instance.fileAds,
      'status_ads': instance.statusAds,
      'delete_at': instance.deletedAt?.toIso8601String(),
      'deleted_by': instance.deletedBy,
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
