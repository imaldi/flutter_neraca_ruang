// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'province_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProvinceResponse _$$_ProvinceResponseFromJson(Map<String, dynamic> json) =>
    _$_ProvinceResponse(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ProvinceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProvinceResponseToJson(_$_ProvinceResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$_ProvinceModel _$$_ProvinceModelFromJson(Map<String, dynamic> json) =>
    _$_ProvinceModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      ibukota: json['ibukota'] as int?,
    );

Map<String, dynamic> _$$_ProvinceModelToJson(_$_ProvinceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'ibukota': instance.ibukota,
    };
