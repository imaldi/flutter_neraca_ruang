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
      kota_id: json['kota_id'] as int?,
      tags_id: json['tags_id'] as int?,
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
      'tags_id': instance.tags_id,
    };
