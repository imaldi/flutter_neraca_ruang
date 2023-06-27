// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kota_kabupaten_single_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KotaKabupatenSingleResponse _$$_KotaKabupatenSingleResponseFromJson(
        Map<String, dynamic> json) =>
    _$_KotaKabupatenSingleResponse(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : KotaKabupaten.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_KotaKabupatenSingleResponseToJson(
        _$_KotaKabupatenSingleResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
