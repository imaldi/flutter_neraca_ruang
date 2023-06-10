// To parse this JSON data, do
//
//     final simpleDashboardResponse = simpleDashboardResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import '../dashboard_response/dashboard_response.dart';

part 'simple_dashboard_response.freezed.dart';
part 'simple_dashboard_response.g.dart';

@freezed
class SimpleDashboardResponse with _$SimpleDashboardResponse {
  const factory SimpleDashboardResponse({
    String? message,
    List<Datum>? data,
  }) = _SimpleDashboardResponse;

  factory SimpleDashboardResponse.fromJson(Map<String, dynamic> json) =>
      _$SimpleDashboardResponseFromJson(json);
}
