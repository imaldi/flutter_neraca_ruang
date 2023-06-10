// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_dashboard_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SimpleDashboardResponse _$$_SimpleDashboardResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SimpleDashboardResponse(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SimpleDashboardResponseToJson(
        _$_SimpleDashboardResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
