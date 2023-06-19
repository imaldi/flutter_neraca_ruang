// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) {
  return _AuthResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthResponse {
  String? get message => throw _privateConstructorUsedError;
  MemberData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthResponseCopyWith<AuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponseCopyWith<$Res> {
  factory $AuthResponseCopyWith(
          AuthResponse value, $Res Function(AuthResponse) then) =
      _$AuthResponseCopyWithImpl<$Res, AuthResponse>;
  @useResult
  $Res call({String? message, MemberData? data});

  $MemberDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AuthResponseCopyWithImpl<$Res, $Val extends AuthResponse>
    implements $AuthResponseCopyWith<$Res> {
  _$AuthResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MemberData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MemberDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $MemberDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthResponseCopyWith<$Res>
    implements $AuthResponseCopyWith<$Res> {
  factory _$$_AuthResponseCopyWith(
          _$_AuthResponse value, $Res Function(_$_AuthResponse) then) =
      __$$_AuthResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, MemberData? data});

  @override
  $MemberDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_AuthResponseCopyWithImpl<$Res>
    extends _$AuthResponseCopyWithImpl<$Res, _$_AuthResponse>
    implements _$$_AuthResponseCopyWith<$Res> {
  __$$_AuthResponseCopyWithImpl(
      _$_AuthResponse _value, $Res Function(_$_AuthResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_AuthResponse(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MemberData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthResponse implements _AuthResponse {
  const _$_AuthResponse({this.message, this.data});

  factory _$_AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AuthResponseFromJson(json);

  @override
  final String? message;
  @override
  final MemberData? data;

  @override
  String toString() {
    return 'AuthResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthResponse &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthResponseCopyWith<_$_AuthResponse> get copyWith =>
      __$$_AuthResponseCopyWithImpl<_$_AuthResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthResponseToJson(
      this,
    );
  }
}

abstract class _AuthResponse implements AuthResponse {
  const factory _AuthResponse({final String? message, final MemberData? data}) =
      _$_AuthResponse;

  factory _AuthResponse.fromJson(Map<String, dynamic> json) =
      _$_AuthResponse.fromJson;

  @override
  String? get message;
  @override
  MemberData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_AuthResponseCopyWith<_$_AuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

MemberData _$MemberDataFromJson(Map<String, dynamic> json) {
  return _MemberData.fromJson(json);
}

/// @nodoc
mixin _$MemberData {
  Members? get members => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  DateTime? get loginDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberDataCopyWith<MemberData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberDataCopyWith<$Res> {
  factory $MemberDataCopyWith(
          MemberData value, $Res Function(MemberData) then) =
      _$MemberDataCopyWithImpl<$Res, MemberData>;
  @useResult
  $Res call({Members? members, String? token, DateTime? loginDate});

  $MembersCopyWith<$Res>? get members;
}

/// @nodoc
class _$MemberDataCopyWithImpl<$Res, $Val extends MemberData>
    implements $MemberDataCopyWith<$Res> {
  _$MemberDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? members = freezed,
    Object? token = freezed,
    Object? loginDate = freezed,
  }) {
    return _then(_value.copyWith(
      members: freezed == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as Members?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      loginDate: freezed == loginDate
          ? _value.loginDate
          : loginDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MembersCopyWith<$Res>? get members {
    if (_value.members == null) {
      return null;
    }

    return $MembersCopyWith<$Res>(_value.members!, (value) {
      return _then(_value.copyWith(members: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MemberDataCopyWith<$Res>
    implements $MemberDataCopyWith<$Res> {
  factory _$$_MemberDataCopyWith(
          _$_MemberData value, $Res Function(_$_MemberData) then) =
      __$$_MemberDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Members? members, String? token, DateTime? loginDate});

  @override
  $MembersCopyWith<$Res>? get members;
}

/// @nodoc
class __$$_MemberDataCopyWithImpl<$Res>
    extends _$MemberDataCopyWithImpl<$Res, _$_MemberData>
    implements _$$_MemberDataCopyWith<$Res> {
  __$$_MemberDataCopyWithImpl(
      _$_MemberData _value, $Res Function(_$_MemberData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? members = freezed,
    Object? token = freezed,
    Object? loginDate = freezed,
  }) {
    return _then(_$_MemberData(
      members: freezed == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as Members?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      loginDate: freezed == loginDate
          ? _value.loginDate
          : loginDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemberData implements _MemberData {
  const _$_MemberData({this.members, this.token, this.loginDate});

  factory _$_MemberData.fromJson(Map<String, dynamic> json) =>
      _$$_MemberDataFromJson(json);

  @override
  final Members? members;
  @override
  final String? token;
  @override
  final DateTime? loginDate;

  @override
  String toString() {
    return 'MemberData(members: $members, token: $token, loginDate: $loginDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemberData &&
            (identical(other.members, members) || other.members == members) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.loginDate, loginDate) ||
                other.loginDate == loginDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, members, token, loginDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemberDataCopyWith<_$_MemberData> get copyWith =>
      __$$_MemberDataCopyWithImpl<_$_MemberData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemberDataToJson(
      this,
    );
  }
}

abstract class _MemberData implements MemberData {
  const factory _MemberData(
      {final Members? members,
      final String? token,
      final DateTime? loginDate}) = _$_MemberData;

  factory _MemberData.fromJson(Map<String, dynamic> json) =
      _$_MemberData.fromJson;

  @override
  Members? get members;
  @override
  String? get token;
  @override
  DateTime? get loginDate;
  @override
  @JsonKey(ignore: true)
  _$$_MemberDataCopyWith<_$_MemberData> get copyWith =>
      throw _privateConstructorUsedError;
}

Members _$MembersFromJson(Map<String, dynamic> json) {
  return _Members.fromJson(json);
}

/// @nodoc
mixin _$Members {
  int? get memberId => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get fullname => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get noHp => throw _privateConstructorUsedError;
  String? get tanggalLahir => throw _privateConstructorUsedError;
  String? get propinsiId => throw _privateConstructorUsedError;
  String? get kotaId => throw _privateConstructorUsedError;
  String? get isAktivasi => throw _privateConstructorUsedError;
  String? get isBlocked => throw _privateConstructorUsedError;
  String? get aktivasiAt => throw _privateConstructorUsedError;
  String? get blockedAt => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get lastloginAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MembersCopyWith<Members> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembersCopyWith<$Res> {
  factory $MembersCopyWith(Members value, $Res Function(Members) then) =
      _$MembersCopyWithImpl<$Res, Members>;
  @useResult
  $Res call(
      {int? memberId,
      String? username,
      String? fullname,
      String? email,
      String? noHp,
      String? tanggalLahir,
      String? propinsiId,
      String? kotaId,
      String? isAktivasi,
      String? isBlocked,
      String? aktivasiAt,
      String? blockedAt,
      String? createdAt,
      DateTime? updatedAt,
      DateTime? lastloginAt});
}

/// @nodoc
class _$MembersCopyWithImpl<$Res, $Val extends Members>
    implements $MembersCopyWith<$Res> {
  _$MembersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = freezed,
    Object? username = freezed,
    Object? fullname = freezed,
    Object? email = freezed,
    Object? noHp = freezed,
    Object? tanggalLahir = freezed,
    Object? propinsiId = freezed,
    Object? kotaId = freezed,
    Object? isAktivasi = freezed,
    Object? isBlocked = freezed,
    Object? aktivasiAt = freezed,
    Object? blockedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? lastloginAt = freezed,
  }) {
    return _then(_value.copyWith(
      memberId: freezed == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      noHp: freezed == noHp
          ? _value.noHp
          : noHp // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggalLahir: freezed == tanggalLahir
          ? _value.tanggalLahir
          : tanggalLahir // ignore: cast_nullable_to_non_nullable
              as String?,
      propinsiId: freezed == propinsiId
          ? _value.propinsiId
          : propinsiId // ignore: cast_nullable_to_non_nullable
              as String?,
      kotaId: freezed == kotaId
          ? _value.kotaId
          : kotaId // ignore: cast_nullable_to_non_nullable
              as String?,
      isAktivasi: freezed == isAktivasi
          ? _value.isAktivasi
          : isAktivasi // ignore: cast_nullable_to_non_nullable
              as String?,
      isBlocked: freezed == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as String?,
      aktivasiAt: freezed == aktivasiAt
          ? _value.aktivasiAt
          : aktivasiAt // ignore: cast_nullable_to_non_nullable
              as String?,
      blockedAt: freezed == blockedAt
          ? _value.blockedAt
          : blockedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastloginAt: freezed == lastloginAt
          ? _value.lastloginAt
          : lastloginAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MembersCopyWith<$Res> implements $MembersCopyWith<$Res> {
  factory _$$_MembersCopyWith(
          _$_Members value, $Res Function(_$_Members) then) =
      __$$_MembersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? memberId,
      String? username,
      String? fullname,
      String? email,
      String? noHp,
      String? tanggalLahir,
      String? propinsiId,
      String? kotaId,
      String? isAktivasi,
      String? isBlocked,
      String? aktivasiAt,
      String? blockedAt,
      String? createdAt,
      DateTime? updatedAt,
      DateTime? lastloginAt});
}

/// @nodoc
class __$$_MembersCopyWithImpl<$Res>
    extends _$MembersCopyWithImpl<$Res, _$_Members>
    implements _$$_MembersCopyWith<$Res> {
  __$$_MembersCopyWithImpl(_$_Members _value, $Res Function(_$_Members) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = freezed,
    Object? username = freezed,
    Object? fullname = freezed,
    Object? email = freezed,
    Object? noHp = freezed,
    Object? tanggalLahir = freezed,
    Object? propinsiId = freezed,
    Object? kotaId = freezed,
    Object? isAktivasi = freezed,
    Object? isBlocked = freezed,
    Object? aktivasiAt = freezed,
    Object? blockedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? lastloginAt = freezed,
  }) {
    return _then(_$_Members(
      memberId: freezed == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      noHp: freezed == noHp
          ? _value.noHp
          : noHp // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggalLahir: freezed == tanggalLahir
          ? _value.tanggalLahir
          : tanggalLahir // ignore: cast_nullable_to_non_nullable
              as String?,
      propinsiId: freezed == propinsiId
          ? _value.propinsiId
          : propinsiId // ignore: cast_nullable_to_non_nullable
              as String?,
      kotaId: freezed == kotaId
          ? _value.kotaId
          : kotaId // ignore: cast_nullable_to_non_nullable
              as String?,
      isAktivasi: freezed == isAktivasi
          ? _value.isAktivasi
          : isAktivasi // ignore: cast_nullable_to_non_nullable
              as String?,
      isBlocked: freezed == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as String?,
      aktivasiAt: freezed == aktivasiAt
          ? _value.aktivasiAt
          : aktivasiAt // ignore: cast_nullable_to_non_nullable
              as String?,
      blockedAt: freezed == blockedAt
          ? _value.blockedAt
          : blockedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastloginAt: freezed == lastloginAt
          ? _value.lastloginAt
          : lastloginAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Members implements _Members {
  const _$_Members(
      {this.memberId,
      this.username,
      this.fullname,
      this.email,
      this.noHp,
      this.tanggalLahir,
      this.propinsiId,
      this.kotaId,
      this.isAktivasi,
      this.isBlocked,
      this.aktivasiAt,
      this.blockedAt,
      this.createdAt,
      this.updatedAt,
      this.lastloginAt});

  factory _$_Members.fromJson(Map<String, dynamic> json) =>
      _$$_MembersFromJson(json);

  @override
  final int? memberId;
  @override
  final String? username;
  @override
  final String? fullname;
  @override
  final String? email;
  @override
  final String? noHp;
  @override
  final String? tanggalLahir;
  @override
  final String? propinsiId;
  @override
  final String? kotaId;
  @override
  final String? isAktivasi;
  @override
  final String? isBlocked;
  @override
  final String? aktivasiAt;
  @override
  final String? blockedAt;
  @override
  final String? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? lastloginAt;

  @override
  String toString() {
    return 'Members(memberId: $memberId, username: $username, fullname: $fullname, email: $email, noHp: $noHp, tanggalLahir: $tanggalLahir, propinsiId: $propinsiId, kotaId: $kotaId, isAktivasi: $isAktivasi, isBlocked: $isBlocked, aktivasiAt: $aktivasiAt, blockedAt: $blockedAt, createdAt: $createdAt, updatedAt: $updatedAt, lastloginAt: $lastloginAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Members &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.noHp, noHp) || other.noHp == noHp) &&
            (identical(other.tanggalLahir, tanggalLahir) ||
                other.tanggalLahir == tanggalLahir) &&
            (identical(other.propinsiId, propinsiId) ||
                other.propinsiId == propinsiId) &&
            (identical(other.kotaId, kotaId) || other.kotaId == kotaId) &&
            (identical(other.isAktivasi, isAktivasi) ||
                other.isAktivasi == isAktivasi) &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked) &&
            (identical(other.aktivasiAt, aktivasiAt) ||
                other.aktivasiAt == aktivasiAt) &&
            (identical(other.blockedAt, blockedAt) ||
                other.blockedAt == blockedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.lastloginAt, lastloginAt) ||
                other.lastloginAt == lastloginAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      memberId,
      username,
      fullname,
      email,
      noHp,
      tanggalLahir,
      propinsiId,
      kotaId,
      isAktivasi,
      isBlocked,
      aktivasiAt,
      blockedAt,
      createdAt,
      updatedAt,
      lastloginAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MembersCopyWith<_$_Members> get copyWith =>
      __$$_MembersCopyWithImpl<_$_Members>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MembersToJson(
      this,
    );
  }
}

abstract class _Members implements Members {
  const factory _Members(
      {final int? memberId,
      final String? username,
      final String? fullname,
      final String? email,
      final String? noHp,
      final String? tanggalLahir,
      final String? propinsiId,
      final String? kotaId,
      final String? isAktivasi,
      final String? isBlocked,
      final String? aktivasiAt,
      final String? blockedAt,
      final String? createdAt,
      final DateTime? updatedAt,
      final DateTime? lastloginAt}) = _$_Members;

  factory _Members.fromJson(Map<String, dynamic> json) = _$_Members.fromJson;

  @override
  int? get memberId;
  @override
  String? get username;
  @override
  String? get fullname;
  @override
  String? get email;
  @override
  String? get noHp;
  @override
  String? get tanggalLahir;
  @override
  String? get propinsiId;
  @override
  String? get kotaId;
  @override
  String? get isAktivasi;
  @override
  String? get isBlocked;
  @override
  String? get aktivasiAt;
  @override
  String? get blockedAt;
  @override
  String? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get lastloginAt;
  @override
  @JsonKey(ignore: true)
  _$$_MembersCopyWith<_$_Members> get copyWith =>
      throw _privateConstructorUsedError;
}
