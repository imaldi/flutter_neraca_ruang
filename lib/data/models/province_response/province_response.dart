// To parse this JSON data, do
//
//     final provinceResponse = provinceResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'province_response.freezed.dart';
part 'province_response.g.dart';

@freezed
class ProvinceResponse with _$ProvinceResponse {
  const factory ProvinceResponse({
    String? message,
    List<ProvinceModel>? data,
  }) = _ProvinceResponse;

  factory ProvinceResponse.fromJson(Map<String, dynamic> json) =>
      _$ProvinceResponseFromJson(json);
}

@freezed
class ProvinceModel with _$ProvinceModel {
  const factory ProvinceModel({
    int? id,
    String? name,
    int? ibukota,
  }) = _ProvinceModel;

  factory ProvinceModel.fromJson(Map<String, dynamic> json) =>
      _$ProvinceModelFromJson(json);
}
