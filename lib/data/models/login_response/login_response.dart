// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../../../core/consts/hive_type_id.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  @HiveType(typeId: loginResponseTypeId, adapterName: 'LoginResponseAdapter')
  @JsonSerializable(explicitToJson: true)
  const factory LoginResponse({
    String? message,
    UserData? data,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@freezed
class UserData with _$UserData {
  @HiveType(typeId: userDataTypeId, adapterName: 'UserDataAdapter')
  @JsonSerializable(explicitToJson: true)
  const factory UserData({
    User? user,
    String? token,
    @JsonKey(name: 'login_date') DateTime? loginDate,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

@freezed
class User with _$User {
  @HiveType(typeId: userTypeId, adapterName: 'UserAdapter')
  @JsonSerializable(explicitToJson: true)
  const factory User({
    int? id,
    String? username,
    String? fullname,
    String? email,
    @JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
