import 'package:flutter_neraca_ruang/data/models/dashboard_response/dashboard_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tags_response.freezed.dart';
part 'tags_response.g.dart';

@freezed
class TagsResponse with _$TagsResponse {
  const factory TagsResponse({
    String? message,
    List<Tags>? data,
  }) = _TagsResponse;

  factory TagsResponse.fromJson(Map<String, dynamic> json) =>
      _$TagsResponseFromJson(json);
}
