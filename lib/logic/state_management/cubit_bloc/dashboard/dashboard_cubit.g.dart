// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DashboardState _$$_DashboardStateFromJson(Map<String, dynamic> json) =>
    _$_DashboardState(
      dashboardResponse: json['dashboard_response'] == null
          ? null
          : DashboardResponse.fromJson(
              json['dashboard_response'] as Map<String, dynamic>),
      listContentDashboard: (json['list_content_dashboard'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      listContentKabar: (json['list_content_kabar'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      listContentJurnal: (json['list_content_jurnal'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      listContentInfografis: (json['list_content_infografis'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      listContentVideo: (json['list_content_video'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      listContentFoto: (json['list_content_foto'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      listContentSearch: (json['list_content_search'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      listContentGreenPage: (json['list_content_green_page'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int?,
      page: json['page'] as int?,
      slug: json['slug'] as String?,
      tipe: json['tipe'] as String?,
      icon: json['icon'] as String?,
      is_loading: json['is_loading'] ?? false,
      is_green_mode: json['is_green_mode'] ?? false,
      kota_id: json['kota_id'] as int? ?? 0,
      kota_name: json['kota_name'] as String? ?? "",
      tags_id: json['tags_id'] as int? ?? 0,
      tags_name: json['tags_name'] as String? ?? "",
      selected_id: json['selected_id'] as int? ?? 0,
    );

Map<String, dynamic> _$$_DashboardStateToJson(_$_DashboardState instance) =>
    <String, dynamic>{
      'dashboard_response': instance.dashboardResponse,
      'list_content_dashboard': instance.listContentDashboard,
      'list_content_kabar': instance.listContentKabar,
      'list_content_jurnal': instance.listContentJurnal,
      'list_content_infografis': instance.listContentInfografis,
      'list_content_video': instance.listContentVideo,
      'list_content_foto': instance.listContentFoto,
      'list_content_search': instance.listContentSearch,
      'list_content_green_page': instance.listContentGreenPage,
      'limit': instance.limit,
      'page': instance.page,
      'slug': instance.slug,
      'tipe': instance.tipe,
      'icon': instance.icon,
      'is_loading': instance.is_loading,
      'is_green_mode': instance.is_green_mode,
      'kota_id': instance.kota_id,
      'kota_name': instance.kota_name,
      'tags_id': instance.tags_id,
      'tags_name': instance.tags_name,
      'selected_id': instance.selected_id,
    };
