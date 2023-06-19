// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../../../core/consts/hive_type_id.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@Deprecated("Sekarang pakai AuthResponse")
@freezed
class LoginResponse with _$LoginResponse {
  @HiveType(typeId: loginResponseTypeId, adapterName: 'LoginResponseAdapter')
  @JsonSerializable(explicitToJson: true)
  const factory LoginResponse({
    @HiveField(0) String? message,
    @HiveField(1) UserData? data,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, Object?> json) =>
      _$LoginResponseFromJson(json);
}

@freezed
class UserData with _$UserData {
  @HiveType(typeId: userDataTypeId, adapterName: 'UserDataAdapter')
  @JsonSerializable(explicitToJson: true)
  const factory UserData({
    @HiveField(0) User? user,
    @HiveField(1) String? token,
    @HiveField(2) @JsonKey(name: 'login_date') DateTime? loginDate,
  }) = _UserData;

  factory UserData.fromJson(Map<String, Object?> json) =>
      _$UserDataFromJson(json);
}

@freezed
class User with _$User {
  @HiveType(typeId: userTypeId, adapterName: 'UserAdapter')
  @JsonSerializable(explicitToJson: true)
  const factory User({
    @HiveField(0) int? id,
    @HiveField(1) String? username,
    @HiveField(2) String? fullname,
    @HiveField(3) String? email,
    @HiveField(4) @JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt,
    @HiveField(5) @JsonKey(name: 'created_at') DateTime? createdAt,
    @HiveField(6) @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
