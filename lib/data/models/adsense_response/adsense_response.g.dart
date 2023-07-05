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
          : Adsense.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AdsenseResponseToJson(_$_AdsenseResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$_Adsense _$$_AdsenseFromJson(Map<String, dynamic> json) => _$_Adsense(
      id: json['id'] as int?,
      tanggalStart: json['tanggal_start'] == null
          ? null
          : DateTime.parse(json['tanggal_start'] as String),
      tanggalEnd: json['tanggal_end'] == null
          ? null
          : DateTime.parse(json['tanggal_end'] as String),
      banner: json['banner'] as String?,
      kotaId: json['kota_id'] as String?,
      kotaName: json['kota_name'] as String?,
      propinsiId: json['propinsi_id'] as String?,
      propinsiName: json['propinsi_name'] as String?,
      deletedAt: json['deleted_at'] as String?,
      statusAds: json['status_ads'] as int?,
      deletedBy: json['deleted_by'] as String?,
    );

Map<String, dynamic> _$$_AdsenseToJson(_$_Adsense instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tanggal_start': instance.tanggalStart?.toIso8601String(),
      'tanggal_end': instance.tanggalEnd?.toIso8601String(),
      'banner': instance.banner,
      'kota_id': instance.kotaId,
      'kota_name': instance.kotaName,
      'propinsi_id': instance.propinsiId,
      'propinsi_name': instance.propinsiName,
      'deleted_at': instance.deletedAt,
      'status_ads': instance.statusAds,
      'deleted_by': instance.deletedBy,
    };
