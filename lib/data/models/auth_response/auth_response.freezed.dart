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
  @HiveField(0)
  String? get message => throw _privateConstructorUsedError;
  @HiveField(1)
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
  $Res call({@HiveField(0) String? message, @HiveField(1) MemberData? data});

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
  $Res call({@HiveField(0) String? message, @HiveField(1) MemberData? data});

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

@HiveType(typeId: authResponseTypeId, adapterName: 'AuthResponseAdapter')
@JsonSerializable(explicitToJson: true)
class _$_AuthResponse implements _AuthResponse {
  const _$_AuthResponse({@HiveField(0) this.message, @HiveField(1) this.data});

  factory _$_AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AuthResponseFromJson(json);

  @override
  @HiveField(0)
  final String? message;
  @override
  @HiveField(1)
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
  const factory _AuthResponse(
      {@HiveField(0) final String? message,
      @HiveField(1) final MemberData? data}) = _$_AuthResponse;

  factory _AuthResponse.fromJson(Map<String, dynamic> json) =
      _$_AuthResponse.fromJson;

  @override
  @HiveField(0)
  String? get message;
  @override
  @HiveField(1)
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
  @HiveField(0)
  Members? get members => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get token => throw _privateConstructorUsedError;
  @HiveField(2)
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
  $Res call(
      {@HiveField(0) Members? members,
      @HiveField(1) String? token,
      @HiveField(2) DateTime? loginDate});

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
  $Res call(
      {@HiveField(0) Members? members,
      @HiveField(1) String? token,
      @HiveField(2) DateTime? loginDate});

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

@HiveType(typeId: memberDataTypeId, adapterName: 'MemberDataAdapter')
@JsonSerializable(explicitToJson: true)
class _$_MemberData implements _MemberData {
  const _$_MemberData(
      {@HiveField(0) this.members,
      @HiveField(1) this.token,
      @HiveField(2) this.loginDate});

  factory _$_MemberData.fromJson(Map<String, dynamic> json) =>
      _$$_MemberDataFromJson(json);

  @override
  @HiveField(0)
  final Members? members;
  @override
  @HiveField(1)
  final String? token;
  @override
  @HiveField(2)
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
      {@HiveField(0) final Members? members,
      @HiveField(1) final String? token,
      @HiveField(2) final DateTime? loginDate}) = _$_MemberData;

  factory _MemberData.fromJson(Map<String, dynamic> json) =
      _$_MemberData.fromJson;

  @override
  @HiveField(0)
  Members? get members;
  @override
  @HiveField(1)
  String? get token;
  @override
  @HiveField(2)
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
  @HiveField(0)
  int? get memberId => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get username => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get fullname => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get email => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get noHp => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get tanggalLahir => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get propinsiId => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get kotaId => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get isAktivasi => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get isBlocked => throw _privateConstructorUsedError;
  @HiveField(10)
  String? get aktivasiAt => throw _privateConstructorUsedError;
  @HiveField(11)
  String? get blockedAt => throw _privateConstructorUsedError;
  @HiveField(12)
  String? get createdAt => throw _privateConstructorUsedError;
  @HiveField(13)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @HiveField(14)
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
      {@HiveField(0) int? memberId,
      @HiveField(1) String? username,
      @HiveField(2) String? fullname,
      @HiveField(3) String? email,
      @HiveField(4) String? noHp,
      @HiveField(5) String? tanggalLahir,
      @HiveField(6) String? propinsiId,
      @HiveField(7) String? kotaId,
      @HiveField(8) String? isAktivasi,
      @HiveField(9) String? isBlocked,
      @HiveField(10) String? aktivasiAt,
      @HiveField(11) String? blockedAt,
      @HiveField(12) String? createdAt,
      @HiveField(13) DateTime? updatedAt,
      @HiveField(14) DateTime? lastloginAt});
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
      {@HiveField(0) int? memberId,
      @HiveField(1) String? username,
      @HiveField(2) String? fullname,
      @HiveField(3) String? email,
      @HiveField(4) String? noHp,
      @HiveField(5) String? tanggalLahir,
      @HiveField(6) String? propinsiId,
      @HiveField(7) String? kotaId,
      @HiveField(8) String? isAktivasi,
      @HiveField(9) String? isBlocked,
      @HiveField(10) String? aktivasiAt,
      @HiveField(11) String? blockedAt,
      @HiveField(12) String? createdAt,
      @HiveField(13) DateTime? updatedAt,
      @HiveField(14) DateTime? lastloginAt});
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

@HiveType(typeId: memberTypeId, adapterName: 'MemberAdapter')
@JsonSerializable(explicitToJson: true)
class _$_Members implements _Members {
  const _$_Members(
      {@HiveField(0) this.memberId,
      @HiveField(1) this.username,
      @HiveField(2) this.fullname,
      @HiveField(3) this.email,
      @HiveField(4) this.noHp,
      @HiveField(5) this.tanggalLahir,
      @HiveField(6) this.propinsiId,
      @HiveField(7) this.kotaId,
      @HiveField(8) this.isAktivasi,
      @HiveField(9) this.isBlocked,
      @HiveField(10) this.aktivasiAt,
      @HiveField(11) this.blockedAt,
      @HiveField(12) this.createdAt,
      @HiveField(13) this.updatedAt,
      @HiveField(14) this.lastloginAt});

  factory _$_Members.fromJson(Map<String, dynamic> json) =>
      _$$_MembersFromJson(json);

  @override
  @HiveField(0)
  final int? memberId;
  @override
  @HiveField(1)
  final String? username;
  @override
  @HiveField(2)
  final String? fullname;
  @override
  @HiveField(3)
  final String? email;
  @override
  @HiveField(4)
  final String? noHp;
  @override
  @HiveField(5)
  final String? tanggalLahir;
  @override
  @HiveField(6)
  final String? propinsiId;
  @override
  @HiveField(7)
  final String? kotaId;
  @override
  @HiveField(8)
  final String? isAktivasi;
  @override
  @HiveField(9)
  final String? isBlocked;
  @override
  @HiveField(10)
  final String? aktivasiAt;
  @override
  @HiveField(11)
  final String? blockedAt;
  @override
  @HiveField(12)
  final String? createdAt;
  @override
  @HiveField(13)
  final DateTime? updatedAt;
  @override
  @HiveField(14)
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
      {@HiveField(0) final int? memberId,
      @HiveField(1) final String? username,
      @HiveField(2) final String? fullname,
      @HiveField(3) final String? email,
      @HiveField(4) final String? noHp,
      @HiveField(5) final String? tanggalLahir,
      @HiveField(6) final String? propinsiId,
      @HiveField(7) final String? kotaId,
      @HiveField(8) final String? isAktivasi,
      @HiveField(9) final String? isBlocked,
      @HiveField(10) final String? aktivasiAt,
      @HiveField(11) final String? blockedAt,
      @HiveField(12) final String? createdAt,
      @HiveField(13) final DateTime? updatedAt,
      @HiveField(14) final DateTime? lastloginAt}) = _$_Members;

  factory _Members.fromJson(Map<String, dynamic> json) = _$_Members.fromJson;

  @override
  @HiveField(0)
  int? get memberId;
  @override
  @HiveField(1)
  String? get username;
  @override
  @HiveField(2)
  String? get fullname;
  @override
  @HiveField(3)
  String? get email;
  @override
  @HiveField(4)
  String? get noHp;
  @override
  @HiveField(5)
  String? get tanggalLahir;
  @override
  @HiveField(6)
  String? get propinsiId;
  @override
  @HiveField(7)
  String? get kotaId;
  @override
  @HiveField(8)
  String? get isAktivasi;
  @override
  @HiveField(9)
  String? get isBlocked;
  @override
  @HiveField(10)
  String? get aktivasiAt;
  @override
  @HiveField(11)
  String? get blockedAt;
  @override
  @HiveField(12)
  String? get createdAt;
  @override
  @HiveField(13)
  DateTime? get updatedAt;
  @override
  @HiveField(14)
  DateTime? get lastloginAt;
  @override
  @JsonKey(ignore: true)
  _$$_MembersCopyWith<_$_Members> get copyWith =>
      throw _privateConstructorUsedError;
}