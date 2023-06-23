// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kota_kabupaten_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KotaKabupatenResponse _$$_KotaKabupatenResponseFromJson(
        Map<String, dynamic> json) =>
    _$_KotaKabupatenResponse(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => KotaKabupaten.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_KotaKabupatenResponseToJson(
        _$_KotaKabupatenResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$_KotaKabupaten _$$_KotaKabupatenFromJson(Map<String, dynamic> json) =>
    _$_KotaKabupaten(
      id: json['id'] as int?,
      propinsiId: json['propinsiId'] as int?,
      kotaId: json['kotaId'] as int?,
      name: json['name'] as String?,
      kotaIcon1: json['kotaIcon1'] as String?,
      kotaIcon2: json['kotaIcon2'] as String?,
      kotaIcon3: json['kotaIcon3'] as String?,
      kotaIcon4: json['kotaIcon4'] as String?,
      kotaIcon5: json['kotaIcon5'] as String?,
    );

Map<String, dynamic> _$$_KotaKabupatenToJson(_$_KotaKabupaten instance) =>
    <String, dynamic>{
      'id': instance.id,
      'propinsiId': instance.propinsiId,
      'kotaId': instance.kotaId,
      'name': instance.name,
      'kotaIcon1': instance.kotaIcon1,
      'kotaIcon2': instance.kotaIcon2,
      'kotaIcon3': instance.kotaIcon3,
      'kotaIcon4': instance.kotaIcon4,
      'kotaIcon5': instance.kotaIcon5,
    };
