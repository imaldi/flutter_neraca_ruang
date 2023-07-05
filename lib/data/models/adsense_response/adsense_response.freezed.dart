// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adsense_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdsenseResponse _$AdsenseResponseFromJson(Map<String, dynamic> json) {
  return _AdsenseResponse.fromJson(json);
}

/// @nodoc
mixin _$AdsenseResponse {
  String? get message => throw _privateConstructorUsedError;
  Adsense? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdsenseResponseCopyWith<AdsenseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdsenseResponseCopyWith<$Res> {
  factory $AdsenseResponseCopyWith(
          AdsenseResponse value, $Res Function(AdsenseResponse) then) =
      _$AdsenseResponseCopyWithImpl<$Res, AdsenseResponse>;
  @useResult
  $Res call({String? message, Adsense? data});

  $AdsenseCopyWith<$Res>? get data;
}

/// @nodoc
class _$AdsenseResponseCopyWithImpl<$Res, $Val extends AdsenseResponse>
    implements $AdsenseResponseCopyWith<$Res> {
  _$AdsenseResponseCopyWithImpl(this._value, this._then);

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
              as Adsense?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AdsenseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AdsenseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AdsenseResponseCopyWith<$Res>
    implements $AdsenseResponseCopyWith<$Res> {
  factory _$$_AdsenseResponseCopyWith(
          _$_AdsenseResponse value, $Res Function(_$_AdsenseResponse) then) =
      __$$_AdsenseResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, Adsense? data});

  @override
  $AdsenseCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_AdsenseResponseCopyWithImpl<$Res>
    extends _$AdsenseResponseCopyWithImpl<$Res, _$_AdsenseResponse>
    implements _$$_AdsenseResponseCopyWith<$Res> {
  __$$_AdsenseResponseCopyWithImpl(
      _$_AdsenseResponse _value, $Res Function(_$_AdsenseResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_AdsenseResponse(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Adsense?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdsenseResponse implements _AdsenseResponse {
  const _$_AdsenseResponse({this.message, this.data});

  factory _$_AdsenseResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AdsenseResponseFromJson(json);

  @override
  final String? message;
  @override
  final Adsense? data;

  @override
  String toString() {
    return 'AdsenseResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdsenseResponse &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdsenseResponseCopyWith<_$_AdsenseResponse> get copyWith =>
      __$$_AdsenseResponseCopyWithImpl<_$_AdsenseResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdsenseResponseToJson(
      this,
    );
  }
}

abstract class _AdsenseResponse implements AdsenseResponse {
  const factory _AdsenseResponse({final String? message, final Adsense? data}) =
      _$_AdsenseResponse;

  factory _AdsenseResponse.fromJson(Map<String, dynamic> json) =
      _$_AdsenseResponse.fromJson;

  @override
  String? get message;
  @override
  Adsense? get data;
  @override
  @JsonKey(ignore: true)
  _$$_AdsenseResponseCopyWith<_$_AdsenseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Adsense _$AdsenseFromJson(Map<String, dynamic> json) {
  return _Adsense.fromJson(json);
}

/// @nodoc
mixin _$Adsense {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "tanggal_start")
  DateTime? get tanggalStart => throw _privateConstructorUsedError;
  @JsonKey(name: "tanggal_end")
  DateTime? get tanggalEnd => throw _privateConstructorUsedError;
  String? get banner => throw _privateConstructorUsedError;
  @JsonKey(name: "kota_id")
  String? get kotaId => throw _privateConstructorUsedError;
  @JsonKey(name: "kota_name")
  String? get kotaName => throw _privateConstructorUsedError;
  @JsonKey(name: "propinsi_id")
  String? get propinsiId => throw _privateConstructorUsedError;
  @JsonKey(name: "propinsi_name")
  String? get propinsiName => throw _privateConstructorUsedError;
  @JsonKey(name: "deleted_at")
  String? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "status_ads")
  int? get statusAds => throw _privateConstructorUsedError;
  @JsonKey(name: "deleted_by")
  String? get deletedBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdsenseCopyWith<Adsense> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdsenseCopyWith<$Res> {
  factory $AdsenseCopyWith(Adsense value, $Res Function(Adsense) then) =
      _$AdsenseCopyWithImpl<$Res, Adsense>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "tanggal_start") DateTime? tanggalStart,
      @JsonKey(name: "tanggal_end") DateTime? tanggalEnd,
      String? banner,
      @JsonKey(name: "kota_id") String? kotaId,
      @JsonKey(name: "kota_name") String? kotaName,
      @JsonKey(name: "propinsi_id") String? propinsiId,
      @JsonKey(name: "propinsi_name") String? propinsiName,
      @JsonKey(name: "deleted_at") String? deletedAt,
      @JsonKey(name: "status_ads") int? statusAds,
      @JsonKey(name: "deleted_by") String? deletedBy});
}

/// @nodoc
class _$AdsenseCopyWithImpl<$Res, $Val extends Adsense>
    implements $AdsenseCopyWith<$Res> {
  _$AdsenseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tanggalStart = freezed,
    Object? tanggalEnd = freezed,
    Object? banner = freezed,
    Object? kotaId = freezed,
    Object? kotaName = freezed,
    Object? propinsiId = freezed,
    Object? propinsiName = freezed,
    Object? deletedAt = freezed,
    Object? statusAds = freezed,
    Object? deletedBy = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      tanggalStart: freezed == tanggalStart
          ? _value.tanggalStart
          : tanggalStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tanggalEnd: freezed == tanggalEnd
          ? _value.tanggalEnd
          : tanggalEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      kotaId: freezed == kotaId
          ? _value.kotaId
          : kotaId // ignore: cast_nullable_to_non_nullable
              as String?,
      kotaName: freezed == kotaName
          ? _value.kotaName
          : kotaName // ignore: cast_nullable_to_non_nullable
              as String?,
      propinsiId: freezed == propinsiId
          ? _value.propinsiId
          : propinsiId // ignore: cast_nullable_to_non_nullable
              as String?,
      propinsiName: freezed == propinsiName
          ? _value.propinsiName
          : propinsiName // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      statusAds: freezed == statusAds
          ? _value.statusAds
          : statusAds // ignore: cast_nullable_to_non_nullable
              as int?,
      deletedBy: freezed == deletedBy
          ? _value.deletedBy
          : deletedBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdsenseCopyWith<$Res> implements $AdsenseCopyWith<$Res> {
  factory _$$_AdsenseCopyWith(
          _$_Adsense value, $Res Function(_$_Adsense) then) =
      __$$_AdsenseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "tanggal_start") DateTime? tanggalStart,
      @JsonKey(name: "tanggal_end") DateTime? tanggalEnd,
      String? banner,
      @JsonKey(name: "kota_id") String? kotaId,
      @JsonKey(name: "kota_name") String? kotaName,
      @JsonKey(name: "propinsi_id") String? propinsiId,
      @JsonKey(name: "propinsi_name") String? propinsiName,
      @JsonKey(name: "deleted_at") String? deletedAt,
      @JsonKey(name: "status_ads") int? statusAds,
      @JsonKey(name: "deleted_by") String? deletedBy});
}

/// @nodoc
class __$$_AdsenseCopyWithImpl<$Res>
    extends _$AdsenseCopyWithImpl<$Res, _$_Adsense>
    implements _$$_AdsenseCopyWith<$Res> {
  __$$_AdsenseCopyWithImpl(_$_Adsense _value, $Res Function(_$_Adsense) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tanggalStart = freezed,
    Object? tanggalEnd = freezed,
    Object? banner = freezed,
    Object? kotaId = freezed,
    Object? kotaName = freezed,
    Object? propinsiId = freezed,
    Object? propinsiName = freezed,
    Object? deletedAt = freezed,
    Object? statusAds = freezed,
    Object? deletedBy = freezed,
  }) {
    return _then(_$_Adsense(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      tanggalStart: freezed == tanggalStart
          ? _value.tanggalStart
          : tanggalStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tanggalEnd: freezed == tanggalEnd
          ? _value.tanggalEnd
          : tanggalEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      kotaId: freezed == kotaId
          ? _value.kotaId
          : kotaId // ignore: cast_nullable_to_non_nullable
              as String?,
      kotaName: freezed == kotaName
          ? _value.kotaName
          : kotaName // ignore: cast_nullable_to_non_nullable
              as String?,
      propinsiId: freezed == propinsiId
          ? _value.propinsiId
          : propinsiId // ignore: cast_nullable_to_non_nullable
              as String?,
      propinsiName: freezed == propinsiName
          ? _value.propinsiName
          : propinsiName // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      statusAds: freezed == statusAds
          ? _value.statusAds
          : statusAds // ignore: cast_nullable_to_non_nullable
              as int?,
      deletedBy: freezed == deletedBy
          ? _value.deletedBy
          : deletedBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Adsense implements _Adsense {
  const _$_Adsense(
      {this.id,
      @JsonKey(name: "tanggal_start") this.tanggalStart,
      @JsonKey(name: "tanggal_end") this.tanggalEnd,
      this.banner,
      @JsonKey(name: "kota_id") this.kotaId,
      @JsonKey(name: "kota_name") this.kotaName,
      @JsonKey(name: "propinsi_id") this.propinsiId,
      @JsonKey(name: "propinsi_name") this.propinsiName,
      @JsonKey(name: "deleted_at") this.deletedAt,
      @JsonKey(name: "status_ads") this.statusAds,
      @JsonKey(name: "deleted_by") this.deletedBy});

  factory _$_Adsense.fromJson(Map<String, dynamic> json) =>
      _$$_AdsenseFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "tanggal_start")
  final DateTime? tanggalStart;
  @override
  @JsonKey(name: "tanggal_end")
  final DateTime? tanggalEnd;
  @override
  final String? banner;
  @override
  @JsonKey(name: "kota_id")
  final String? kotaId;
  @override
  @JsonKey(name: "kota_name")
  final String? kotaName;
  @override
  @JsonKey(name: "propinsi_id")
  final String? propinsiId;
  @override
  @JsonKey(name: "propinsi_name")
  final String? propinsiName;
  @override
  @JsonKey(name: "deleted_at")
  final String? deletedAt;
  @override
  @JsonKey(name: "status_ads")
  final int? statusAds;
  @override
  @JsonKey(name: "deleted_by")
  final String? deletedBy;

  @override
  String toString() {
    return 'Adsense(id: $id, tanggalStart: $tanggalStart, tanggalEnd: $tanggalEnd, banner: $banner, kotaId: $kotaId, kotaName: $kotaName, propinsiId: $propinsiId, propinsiName: $propinsiName, deletedAt: $deletedAt, statusAds: $statusAds, deletedBy: $deletedBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Adsense &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tanggalStart, tanggalStart) ||
                other.tanggalStart == tanggalStart) &&
            (identical(other.tanggalEnd, tanggalEnd) ||
                other.tanggalEnd == tanggalEnd) &&
            (identical(other.banner, banner) || other.banner == banner) &&
            (identical(other.kotaId, kotaId) || other.kotaId == kotaId) &&
            (identical(other.kotaName, kotaName) ||
                other.kotaName == kotaName) &&
            (identical(other.propinsiId, propinsiId) ||
                other.propinsiId == propinsiId) &&
            (identical(other.propinsiName, propinsiName) ||
                other.propinsiName == propinsiName) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.statusAds, statusAds) ||
                other.statusAds == statusAds) &&
            (identical(other.deletedBy, deletedBy) ||
                other.deletedBy == deletedBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      tanggalStart,
      tanggalEnd,
      banner,
      kotaId,
      kotaName,
      propinsiId,
      propinsiName,
      deletedAt,
      statusAds,
      deletedBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdsenseCopyWith<_$_Adsense> get copyWith =>
      __$$_AdsenseCopyWithImpl<_$_Adsense>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdsenseToJson(
      this,
    );
  }
}

abstract class _Adsense implements Adsense {
  const factory _Adsense(
      {final int? id,
      @JsonKey(name: "tanggal_start") final DateTime? tanggalStart,
      @JsonKey(name: "tanggal_end") final DateTime? tanggalEnd,
      final String? banner,
      @JsonKey(name: "kota_id") final String? kotaId,
      @JsonKey(name: "kota_name") final String? kotaName,
      @JsonKey(name: "propinsi_id") final String? propinsiId,
      @JsonKey(name: "propinsi_name") final String? propinsiName,
      @JsonKey(name: "deleted_at") final String? deletedAt,
      @JsonKey(name: "status_ads") final int? statusAds,
      @JsonKey(name: "deleted_by") final String? deletedBy}) = _$_Adsense;

  factory _Adsense.fromJson(Map<String, dynamic> json) = _$_Adsense.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "tanggal_start")
  DateTime? get tanggalStart;
  @override
  @JsonKey(name: "tanggal_end")
  DateTime? get tanggalEnd;
  @override
  String? get banner;
  @override
  @JsonKey(name: "kota_id")
  String? get kotaId;
  @override
  @JsonKey(name: "kota_name")
  String? get kotaName;
  @override
  @JsonKey(name: "propinsi_id")
  String? get propinsiId;
  @override
  @JsonKey(name: "propinsi_name")
  String? get propinsiName;
  @override
  @JsonKey(name: "deleted_at")
  String? get deletedAt;
  @override
  @JsonKey(name: "status_ads")
  int? get statusAds;
  @override
  @JsonKey(name: "deleted_by")
  String? get deletedBy;
  @override
  @JsonKey(ignore: true)
  _$$_AdsenseCopyWith<_$_Adsense> get copyWith =>
      throw _privateConstructorUsedError;
}
