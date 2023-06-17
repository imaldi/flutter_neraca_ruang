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
      limit: json['limit'] as int?,
      page: json['page'] as int?,
      slug: json['slug'] as String?,
      tipe: json['tipe'] as String?,
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
      'limit': instance.limit,
      'page': instance.page,
      'slug': instance.slug,
      'tipe': instance.tipe,
      'kota_id': instance.kota_id,
      'kota_name': instance.kota_name,
      'tags_id': instance.tags_id,
      'tags_name': instance.tags_name,
      'selected_id': instance.selected_id,
    };
