// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tags_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TagsResponse _$$_TagsResponseFromJson(Map<String, dynamic> json) =>
    _$_TagsResponse(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Tags.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TagsResponseToJson(_$_TagsResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
