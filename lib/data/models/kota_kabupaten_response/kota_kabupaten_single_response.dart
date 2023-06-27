// To parse this JSON data, do
//
//     final kotaKabupatenSingleResponse = kotaKabupatenSingleResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'kota_kabupaten_response.dart';

part 'kota_kabupaten_single_response.freezed.dart';
part 'kota_kabupaten_single_response.g.dart';

@freezed
class KotaKabupatenSingleResponse with _$KotaKabupatenSingleResponse {
  const factory KotaKabupatenSingleResponse({
    String? message,
    KotaKabupaten? data,
  }) = _KotaKabupatenSingleResponse;

  factory KotaKabupatenSingleResponse.fromJson(Map<String, dynamic> json) =>
      _$KotaKabupatenSingleResponseFromJson(json);
}
