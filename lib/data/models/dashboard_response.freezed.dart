// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DashboardResponse _$DashboardResponseFromJson(Map<String, dynamic> json) {
  return _DashboardResponse.fromJson(json);
}

/// @nodoc
mixin _$DashboardResponse {
  String? get message => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DashboardResponseCopyWith<DashboardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardResponseCopyWith<$Res> {
  factory $DashboardResponseCopyWith(
          DashboardResponse value, $Res Function(DashboardResponse) then) =
      _$DashboardResponseCopyWithImpl<$Res, DashboardResponse>;
  @useResult
  $Res call({String? message, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$DashboardResponseCopyWithImpl<$Res, $Val extends DashboardResponse>
    implements $DashboardResponseCopyWith<$Res> {
  _$DashboardResponseCopyWithImpl(this._value, this._then);

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
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DashboardResponseCopyWith<$Res>
    implements $DashboardResponseCopyWith<$Res> {
  factory _$$_DashboardResponseCopyWith(_$_DashboardResponse value,
          $Res Function(_$_DashboardResponse) then) =
      __$$_DashboardResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_DashboardResponseCopyWithImpl<$Res>
    extends _$DashboardResponseCopyWithImpl<$Res, _$_DashboardResponse>
    implements _$$_DashboardResponseCopyWith<$Res> {
  __$$_DashboardResponseCopyWithImpl(
      _$_DashboardResponse _value, $Res Function(_$_DashboardResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_DashboardResponse(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DashboardResponse implements _DashboardResponse {
  const _$_DashboardResponse({this.message, this.data});

  factory _$_DashboardResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DashboardResponseFromJson(json);

  @override
  final String? message;
  @override
  final Data? data;

  @override
  String toString() {
    return 'DashboardResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DashboardResponse &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DashboardResponseCopyWith<_$_DashboardResponse> get copyWith =>
      __$$_DashboardResponseCopyWithImpl<_$_DashboardResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DashboardResponseToJson(
      this,
    );
  }
}

abstract class _DashboardResponse implements DashboardResponse {
  const factory _DashboardResponse({final String? message, final Data? data}) =
      _$_DashboardResponse;

  factory _DashboardResponse.fromJson(Map<String, dynamic> json) =
      _$_DashboardResponse.fromJson;

  @override
  String? get message;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$_DashboardResponseCopyWith<_$_DashboardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  int? get currentPage => throw _privateConstructorUsedError;
  List<Datum>? get data => throw _privateConstructorUsedError;
  String? get firstPageUrl => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  int? get lastPage => throw _privateConstructorUsedError;
  String? get lastPageUrl => throw _privateConstructorUsedError;
  List<Link>? get links => throw _privateConstructorUsedError;
  dynamic get nextPageUrl => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  int? get perPage => throw _privateConstructorUsedError;
  dynamic get prevPageUrl => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {int? currentPage,
      List<Datum>? data,
      String? firstPageUrl,
      int? from,
      int? lastPage,
      String? lastPageUrl,
      List<Link>? links,
      dynamic nextPageUrl,
      String? path,
      int? perPage,
      dynamic prevPageUrl,
      int? to,
      int? total});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>?,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? currentPage,
      List<Datum>? data,
      String? firstPageUrl,
      int? from,
      int? lastPage,
      String? lastPageUrl,
      List<Link>? links,
      dynamic nextPageUrl,
      String? path,
      int? perPage,
      dynamic prevPageUrl,
      int? to,
      int? total});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_Data(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>?,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {this.currentPage,
      final List<Datum>? data,
      this.firstPageUrl,
      this.from,
      this.lastPage,
      this.lastPageUrl,
      final List<Link>? links,
      this.nextPageUrl,
      this.path,
      this.perPage,
      this.prevPageUrl,
      this.to,
      this.total})
      : _data = data,
        _links = links;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final int? currentPage;
  final List<Datum>? _data;
  @override
  List<Datum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? firstPageUrl;
  @override
  final int? from;
  @override
  final int? lastPage;
  @override
  final String? lastPageUrl;
  final List<Link>? _links;
  @override
  List<Link>? get links {
    final value = _links;
    if (value == null) return null;
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic nextPageUrl;
  @override
  final String? path;
  @override
  final int? perPage;
  @override
  final dynamic prevPageUrl;
  @override
  final int? to;
  @override
  final int? total;

  @override
  String toString() {
    return 'Data(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.firstPageUrl, firstPageUrl) ||
                other.firstPageUrl == firstPageUrl) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.lastPageUrl, lastPageUrl) ||
                other.lastPageUrl == lastPageUrl) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            const DeepCollectionEquality()
                .equals(other.nextPageUrl, nextPageUrl) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            const DeepCollectionEquality()
                .equals(other.prevPageUrl, prevPageUrl) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      const DeepCollectionEquality().hash(_data),
      firstPageUrl,
      from,
      lastPage,
      lastPageUrl,
      const DeepCollectionEquality().hash(_links),
      const DeepCollectionEquality().hash(nextPageUrl),
      path,
      perPage,
      const DeepCollectionEquality().hash(prevPageUrl),
      to,
      total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {final int? currentPage,
      final List<Datum>? data,
      final String? firstPageUrl,
      final int? from,
      final int? lastPage,
      final String? lastPageUrl,
      final List<Link>? links,
      final dynamic nextPageUrl,
      final String? path,
      final int? perPage,
      final dynamic prevPageUrl,
      final int? to,
      final int? total}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  int? get currentPage;
  @override
  List<Datum>? get data;
  @override
  String? get firstPageUrl;
  @override
  int? get from;
  @override
  int? get lastPage;
  @override
  String? get lastPageUrl;
  @override
  List<Link>? get links;
  @override
  dynamic get nextPageUrl;
  @override
  String? get path;
  @override
  int? get perPage;
  @override
  dynamic get prevPageUrl;
  @override
  int? get to;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  int? get id => throw _privateConstructorUsedError;
  String? get judul => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get keterangan => throw _privateConstructorUsedError;
  String? get tipe => throw _privateConstructorUsedError;
  dynamic get kategoriId => throw _privateConstructorUsedError;
  String? get kategoriName => throw _privateConstructorUsedError;
  int? get sourceId => throw _privateConstructorUsedError;
  String? get sourceName => throw _privateConstructorUsedError;
  String? get sourceUrl => throw _privateConstructorUsedError;
  dynamic get sourceDate => throw _privateConstructorUsedError;
  int? get propinsiId => throw _privateConstructorUsedError;
  int? get kotaId => throw _privateConstructorUsedError;
  String? get propinsiName => throw _privateConstructorUsedError;
  String? get kotaName => throw _privateConstructorUsedError;
  Tags? get tagsPihak => throw _privateConstructorUsedError;
  Tags? get tagsTopik => throw _privateConstructorUsedError;
  Tags? get tagsOtonomi => throw _privateConstructorUsedError;
  int? get totalRead => throw _privateConstructorUsedError;
  int? get totalLike => throw _privateConstructorUsedError;
  dynamic get totalShared => throw _privateConstructorUsedError;
  String? get domain => throw _privateConstructorUsedError;
  String? get fullPath => throw _privateConstructorUsedError;
  String? get fileUpload => throw _privateConstructorUsedError;
  String? get thumbPath => throw _privateConstructorUsedError;
  dynamic get videoUrl => throw _privateConstructorUsedError;
  dynamic get thumbnail => throw _privateConstructorUsedError;
  String? get images => throw _privateConstructorUsedError;
  DateTime? get activeAt => throw _privateConstructorUsedError;
  String? get activeBy => throw _privateConstructorUsedError;
  DateTime? get publishAt => throw _privateConstructorUsedError;
  DateTime? get publishBy => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  DateTime? get deletedBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {int? id,
      String? judul,
      String? slug,
      String? keterangan,
      String? tipe,
      dynamic kategoriId,
      String? kategoriName,
      int? sourceId,
      String? sourceName,
      String? sourceUrl,
      dynamic sourceDate,
      int? propinsiId,
      int? kotaId,
      String? propinsiName,
      String? kotaName,
      Tags? tagsPihak,
      Tags? tagsTopik,
      Tags? tagsOtonomi,
      int? totalRead,
      int? totalLike,
      dynamic totalShared,
      String? domain,
      String? fullPath,
      String? fileUpload,
      String? thumbPath,
      dynamic videoUrl,
      dynamic thumbnail,
      String? images,
      DateTime? activeAt,
      String? activeBy,
      DateTime? publishAt,
      DateTime? publishBy,
      DateTime? deletedAt,
      DateTime? deletedBy});

  $TagsCopyWith<$Res>? get tagsPihak;
  $TagsCopyWith<$Res>? get tagsTopik;
  $TagsCopyWith<$Res>? get tagsOtonomi;
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? judul = freezed,
    Object? slug = freezed,
    Object? keterangan = freezed,
    Object? tipe = freezed,
    Object? kategoriId = freezed,
    Object? kategoriName = freezed,
    Object? sourceId = freezed,
    Object? sourceName = freezed,
    Object? sourceUrl = freezed,
    Object? sourceDate = freezed,
    Object? propinsiId = freezed,
    Object? kotaId = freezed,
    Object? propinsiName = freezed,
    Object? kotaName = freezed,
    Object? tagsPihak = freezed,
    Object? tagsTopik = freezed,
    Object? tagsOtonomi = freezed,
    Object? totalRead = freezed,
    Object? totalLike = freezed,
    Object? totalShared = freezed,
    Object? domain = freezed,
    Object? fullPath = freezed,
    Object? fileUpload = freezed,
    Object? thumbPath = freezed,
    Object? videoUrl = freezed,
    Object? thumbnail = freezed,
    Object? images = freezed,
    Object? activeAt = freezed,
    Object? activeBy = freezed,
    Object? publishAt = freezed,
    Object? publishBy = freezed,
    Object? deletedAt = freezed,
    Object? deletedBy = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      judul: freezed == judul
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      keterangan: freezed == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String?,
      tipe: freezed == tipe
          ? _value.tipe
          : tipe // ignore: cast_nullable_to_non_nullable
              as String?,
      kategoriId: freezed == kategoriId
          ? _value.kategoriId
          : kategoriId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kategoriName: freezed == kategoriName
          ? _value.kategoriName
          : kategoriName // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as int?,
      sourceName: freezed == sourceName
          ? _value.sourceName
          : sourceName // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceUrl: freezed == sourceUrl
          ? _value.sourceUrl
          : sourceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceDate: freezed == sourceDate
          ? _value.sourceDate
          : sourceDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      propinsiId: freezed == propinsiId
          ? _value.propinsiId
          : propinsiId // ignore: cast_nullable_to_non_nullable
              as int?,
      kotaId: freezed == kotaId
          ? _value.kotaId
          : kotaId // ignore: cast_nullable_to_non_nullable
              as int?,
      propinsiName: freezed == propinsiName
          ? _value.propinsiName
          : propinsiName // ignore: cast_nullable_to_non_nullable
              as String?,
      kotaName: freezed == kotaName
          ? _value.kotaName
          : kotaName // ignore: cast_nullable_to_non_nullable
              as String?,
      tagsPihak: freezed == tagsPihak
          ? _value.tagsPihak
          : tagsPihak // ignore: cast_nullable_to_non_nullable
              as Tags?,
      tagsTopik: freezed == tagsTopik
          ? _value.tagsTopik
          : tagsTopik // ignore: cast_nullable_to_non_nullable
              as Tags?,
      tagsOtonomi: freezed == tagsOtonomi
          ? _value.tagsOtonomi
          : tagsOtonomi // ignore: cast_nullable_to_non_nullable
              as Tags?,
      totalRead: freezed == totalRead
          ? _value.totalRead
          : totalRead // ignore: cast_nullable_to_non_nullable
              as int?,
      totalLike: freezed == totalLike
          ? _value.totalLike
          : totalLike // ignore: cast_nullable_to_non_nullable
              as int?,
      totalShared: freezed == totalShared
          ? _value.totalShared
          : totalShared // ignore: cast_nullable_to_non_nullable
              as dynamic,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      fullPath: freezed == fullPath
          ? _value.fullPath
          : fullPath // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUpload: freezed == fileUpload
          ? _value.fileUpload
          : fileUpload // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbPath: freezed == thumbPath
          ? _value.thumbPath
          : thumbPath // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as dynamic,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String?,
      activeAt: freezed == activeAt
          ? _value.activeAt
          : activeAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      activeBy: freezed == activeBy
          ? _value.activeBy
          : activeBy // ignore: cast_nullable_to_non_nullable
              as String?,
      publishAt: freezed == publishAt
          ? _value.publishAt
          : publishAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publishBy: freezed == publishBy
          ? _value.publishBy
          : publishBy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedBy: freezed == deletedBy
          ? _value.deletedBy
          : deletedBy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TagsCopyWith<$Res>? get tagsPihak {
    if (_value.tagsPihak == null) {
      return null;
    }

    return $TagsCopyWith<$Res>(_value.tagsPihak!, (value) {
      return _then(_value.copyWith(tagsPihak: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TagsCopyWith<$Res>? get tagsTopik {
    if (_value.tagsTopik == null) {
      return null;
    }

    return $TagsCopyWith<$Res>(_value.tagsTopik!, (value) {
      return _then(_value.copyWith(tagsTopik: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TagsCopyWith<$Res>? get tagsOtonomi {
    if (_value.tagsOtonomi == null) {
      return null;
    }

    return $TagsCopyWith<$Res>(_value.tagsOtonomi!, (value) {
      return _then(_value.copyWith(tagsOtonomi: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DatumCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$_DatumCopyWith(_$_Datum value, $Res Function(_$_Datum) then) =
      __$$_DatumCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? judul,
      String? slug,
      String? keterangan,
      String? tipe,
      dynamic kategoriId,
      String? kategoriName,
      int? sourceId,
      String? sourceName,
      String? sourceUrl,
      dynamic sourceDate,
      int? propinsiId,
      int? kotaId,
      String? propinsiName,
      String? kotaName,
      Tags? tagsPihak,
      Tags? tagsTopik,
      Tags? tagsOtonomi,
      int? totalRead,
      int? totalLike,
      dynamic totalShared,
      String? domain,
      String? fullPath,
      String? fileUpload,
      String? thumbPath,
      dynamic videoUrl,
      dynamic thumbnail,
      String? images,
      DateTime? activeAt,
      String? activeBy,
      DateTime? publishAt,
      DateTime? publishBy,
      DateTime? deletedAt,
      DateTime? deletedBy});

  @override
  $TagsCopyWith<$Res>? get tagsPihak;
  @override
  $TagsCopyWith<$Res>? get tagsTopik;
  @override
  $TagsCopyWith<$Res>? get tagsOtonomi;
}

/// @nodoc
class __$$_DatumCopyWithImpl<$Res> extends _$DatumCopyWithImpl<$Res, _$_Datum>
    implements _$$_DatumCopyWith<$Res> {
  __$$_DatumCopyWithImpl(_$_Datum _value, $Res Function(_$_Datum) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? judul = freezed,
    Object? slug = freezed,
    Object? keterangan = freezed,
    Object? tipe = freezed,
    Object? kategoriId = freezed,
    Object? kategoriName = freezed,
    Object? sourceId = freezed,
    Object? sourceName = freezed,
    Object? sourceUrl = freezed,
    Object? sourceDate = freezed,
    Object? propinsiId = freezed,
    Object? kotaId = freezed,
    Object? propinsiName = freezed,
    Object? kotaName = freezed,
    Object? tagsPihak = freezed,
    Object? tagsTopik = freezed,
    Object? tagsOtonomi = freezed,
    Object? totalRead = freezed,
    Object? totalLike = freezed,
    Object? totalShared = freezed,
    Object? domain = freezed,
    Object? fullPath = freezed,
    Object? fileUpload = freezed,
    Object? thumbPath = freezed,
    Object? videoUrl = freezed,
    Object? thumbnail = freezed,
    Object? images = freezed,
    Object? activeAt = freezed,
    Object? activeBy = freezed,
    Object? publishAt = freezed,
    Object? publishBy = freezed,
    Object? deletedAt = freezed,
    Object? deletedBy = freezed,
  }) {
    return _then(_$_Datum(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      judul: freezed == judul
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      keterangan: freezed == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String?,
      tipe: freezed == tipe
          ? _value.tipe
          : tipe // ignore: cast_nullable_to_non_nullable
              as String?,
      kategoriId: freezed == kategoriId
          ? _value.kategoriId
          : kategoriId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kategoriName: freezed == kategoriName
          ? _value.kategoriName
          : kategoriName // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as int?,
      sourceName: freezed == sourceName
          ? _value.sourceName
          : sourceName // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceUrl: freezed == sourceUrl
          ? _value.sourceUrl
          : sourceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceDate: freezed == sourceDate
          ? _value.sourceDate
          : sourceDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      propinsiId: freezed == propinsiId
          ? _value.propinsiId
          : propinsiId // ignore: cast_nullable_to_non_nullable
              as int?,
      kotaId: freezed == kotaId
          ? _value.kotaId
          : kotaId // ignore: cast_nullable_to_non_nullable
              as int?,
      propinsiName: freezed == propinsiName
          ? _value.propinsiName
          : propinsiName // ignore: cast_nullable_to_non_nullable
              as String?,
      kotaName: freezed == kotaName
          ? _value.kotaName
          : kotaName // ignore: cast_nullable_to_non_nullable
              as String?,
      tagsPihak: freezed == tagsPihak
          ? _value.tagsPihak
          : tagsPihak // ignore: cast_nullable_to_non_nullable
              as Tags?,
      tagsTopik: freezed == tagsTopik
          ? _value.tagsTopik
          : tagsTopik // ignore: cast_nullable_to_non_nullable
              as Tags?,
      tagsOtonomi: freezed == tagsOtonomi
          ? _value.tagsOtonomi
          : tagsOtonomi // ignore: cast_nullable_to_non_nullable
              as Tags?,
      totalRead: freezed == totalRead
          ? _value.totalRead
          : totalRead // ignore: cast_nullable_to_non_nullable
              as int?,
      totalLike: freezed == totalLike
          ? _value.totalLike
          : totalLike // ignore: cast_nullable_to_non_nullable
              as int?,
      totalShared: freezed == totalShared
          ? _value.totalShared
          : totalShared // ignore: cast_nullable_to_non_nullable
              as dynamic,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      fullPath: freezed == fullPath
          ? _value.fullPath
          : fullPath // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUpload: freezed == fileUpload
          ? _value.fileUpload
          : fileUpload // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbPath: freezed == thumbPath
          ? _value.thumbPath
          : thumbPath // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as dynamic,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String?,
      activeAt: freezed == activeAt
          ? _value.activeAt
          : activeAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      activeBy: freezed == activeBy
          ? _value.activeBy
          : activeBy // ignore: cast_nullable_to_non_nullable
              as String?,
      publishAt: freezed == publishAt
          ? _value.publishAt
          : publishAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publishBy: freezed == publishBy
          ? _value.publishBy
          : publishBy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedBy: freezed == deletedBy
          ? _value.deletedBy
          : deletedBy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Datum implements _Datum {
  const _$_Datum(
      {this.id,
      this.judul,
      this.slug,
      this.keterangan,
      this.tipe,
      this.kategoriId,
      this.kategoriName,
      this.sourceId,
      this.sourceName,
      this.sourceUrl,
      this.sourceDate,
      this.propinsiId,
      this.kotaId,
      this.propinsiName,
      this.kotaName,
      this.tagsPihak,
      this.tagsTopik,
      this.tagsOtonomi,
      this.totalRead,
      this.totalLike,
      this.totalShared,
      this.domain,
      this.fullPath,
      this.fileUpload,
      this.thumbPath,
      this.videoUrl,
      this.thumbnail,
      this.images,
      this.activeAt,
      this.activeBy,
      this.publishAt,
      this.publishBy,
      this.deletedAt,
      this.deletedBy});

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$$_DatumFromJson(json);

  @override
  final int? id;
  @override
  final String? judul;
  @override
  final String? slug;
  @override
  final String? keterangan;
  @override
  final String? tipe;
  @override
  final dynamic kategoriId;
  @override
  final String? kategoriName;
  @override
  final int? sourceId;
  @override
  final String? sourceName;
  @override
  final String? sourceUrl;
  @override
  final dynamic sourceDate;
  @override
  final int? propinsiId;
  @override
  final int? kotaId;
  @override
  final String? propinsiName;
  @override
  final String? kotaName;
  @override
  final Tags? tagsPihak;
  @override
  final Tags? tagsTopik;
  @override
  final Tags? tagsOtonomi;
  @override
  final int? totalRead;
  @override
  final int? totalLike;
  @override
  final dynamic totalShared;
  @override
  final String? domain;
  @override
  final String? fullPath;
  @override
  final String? fileUpload;
  @override
  final String? thumbPath;
  @override
  final dynamic videoUrl;
  @override
  final dynamic thumbnail;
  @override
  final String? images;
  @override
  final DateTime? activeAt;
  @override
  final String? activeBy;
  @override
  final DateTime? publishAt;
  @override
  final DateTime? publishBy;
  @override
  final DateTime? deletedAt;
  @override
  final DateTime? deletedBy;

  @override
  String toString() {
    return 'Datum(id: $id, judul: $judul, slug: $slug, keterangan: $keterangan, tipe: $tipe, kategoriId: $kategoriId, kategoriName: $kategoriName, sourceId: $sourceId, sourceName: $sourceName, sourceUrl: $sourceUrl, sourceDate: $sourceDate, propinsiId: $propinsiId, kotaId: $kotaId, propinsiName: $propinsiName, kotaName: $kotaName, tagsPihak: $tagsPihak, tagsTopik: $tagsTopik, tagsOtonomi: $tagsOtonomi, totalRead: $totalRead, totalLike: $totalLike, totalShared: $totalShared, domain: $domain, fullPath: $fullPath, fileUpload: $fileUpload, thumbPath: $thumbPath, videoUrl: $videoUrl, thumbnail: $thumbnail, images: $images, activeAt: $activeAt, activeBy: $activeBy, publishAt: $publishAt, publishBy: $publishBy, deletedAt: $deletedAt, deletedBy: $deletedBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Datum &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.judul, judul) || other.judul == judul) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.keterangan, keterangan) ||
                other.keterangan == keterangan) &&
            (identical(other.tipe, tipe) || other.tipe == tipe) &&
            const DeepCollectionEquality()
                .equals(other.kategoriId, kategoriId) &&
            (identical(other.kategoriName, kategoriName) ||
                other.kategoriName == kategoriName) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.sourceName, sourceName) ||
                other.sourceName == sourceName) &&
            (identical(other.sourceUrl, sourceUrl) ||
                other.sourceUrl == sourceUrl) &&
            const DeepCollectionEquality()
                .equals(other.sourceDate, sourceDate) &&
            (identical(other.propinsiId, propinsiId) ||
                other.propinsiId == propinsiId) &&
            (identical(other.kotaId, kotaId) || other.kotaId == kotaId) &&
            (identical(other.propinsiName, propinsiName) ||
                other.propinsiName == propinsiName) &&
            (identical(other.kotaName, kotaName) ||
                other.kotaName == kotaName) &&
            (identical(other.tagsPihak, tagsPihak) ||
                other.tagsPihak == tagsPihak) &&
            (identical(other.tagsTopik, tagsTopik) ||
                other.tagsTopik == tagsTopik) &&
            (identical(other.tagsOtonomi, tagsOtonomi) ||
                other.tagsOtonomi == tagsOtonomi) &&
            (identical(other.totalRead, totalRead) ||
                other.totalRead == totalRead) &&
            (identical(other.totalLike, totalLike) ||
                other.totalLike == totalLike) &&
            const DeepCollectionEquality()
                .equals(other.totalShared, totalShared) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.fullPath, fullPath) ||
                other.fullPath == fullPath) &&
            (identical(other.fileUpload, fileUpload) ||
                other.fileUpload == fileUpload) &&
            (identical(other.thumbPath, thumbPath) ||
                other.thumbPath == thumbPath) &&
            const DeepCollectionEquality().equals(other.videoUrl, videoUrl) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
            (identical(other.images, images) || other.images == images) &&
            (identical(other.activeAt, activeAt) ||
                other.activeAt == activeAt) &&
            (identical(other.activeBy, activeBy) ||
                other.activeBy == activeBy) &&
            (identical(other.publishAt, publishAt) ||
                other.publishAt == publishAt) &&
            (identical(other.publishBy, publishBy) ||
                other.publishBy == publishBy) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.deletedBy, deletedBy) ||
                other.deletedBy == deletedBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        judul,
        slug,
        keterangan,
        tipe,
        const DeepCollectionEquality().hash(kategoriId),
        kategoriName,
        sourceId,
        sourceName,
        sourceUrl,
        const DeepCollectionEquality().hash(sourceDate),
        propinsiId,
        kotaId,
        propinsiName,
        kotaName,
        tagsPihak,
        tagsTopik,
        tagsOtonomi,
        totalRead,
        totalLike,
        const DeepCollectionEquality().hash(totalShared),
        domain,
        fullPath,
        fileUpload,
        thumbPath,
        const DeepCollectionEquality().hash(videoUrl),
        const DeepCollectionEquality().hash(thumbnail),
        images,
        activeAt,
        activeBy,
        publishAt,
        publishBy,
        deletedAt,
        deletedBy
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      __$$_DatumCopyWithImpl<_$_Datum>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DatumToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
      {final int? id,
      final String? judul,
      final String? slug,
      final String? keterangan,
      final String? tipe,
      final dynamic kategoriId,
      final String? kategoriName,
      final int? sourceId,
      final String? sourceName,
      final String? sourceUrl,
      final dynamic sourceDate,
      final int? propinsiId,
      final int? kotaId,
      final String? propinsiName,
      final String? kotaName,
      final Tags? tagsPihak,
      final Tags? tagsTopik,
      final Tags? tagsOtonomi,
      final int? totalRead,
      final int? totalLike,
      final dynamic totalShared,
      final String? domain,
      final String? fullPath,
      final String? fileUpload,
      final String? thumbPath,
      final dynamic videoUrl,
      final dynamic thumbnail,
      final String? images,
      final DateTime? activeAt,
      final String? activeBy,
      final DateTime? publishAt,
      final DateTime? publishBy,
      final DateTime? deletedAt,
      final DateTime? deletedBy}) = _$_Datum;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

  @override
  int? get id;
  @override
  String? get judul;
  @override
  String? get slug;
  @override
  String? get keterangan;
  @override
  String? get tipe;
  @override
  dynamic get kategoriId;
  @override
  String? get kategoriName;
  @override
  int? get sourceId;
  @override
  String? get sourceName;
  @override
  String? get sourceUrl;
  @override
  dynamic get sourceDate;
  @override
  int? get propinsiId;
  @override
  int? get kotaId;
  @override
  String? get propinsiName;
  @override
  String? get kotaName;
  @override
  Tags? get tagsPihak;
  @override
  Tags? get tagsTopik;
  @override
  Tags? get tagsOtonomi;
  @override
  int? get totalRead;
  @override
  int? get totalLike;
  @override
  dynamic get totalShared;
  @override
  String? get domain;
  @override
  String? get fullPath;
  @override
  String? get fileUpload;
  @override
  String? get thumbPath;
  @override
  dynamic get videoUrl;
  @override
  dynamic get thumbnail;
  @override
  String? get images;
  @override
  DateTime? get activeAt;
  @override
  String? get activeBy;
  @override
  DateTime? get publishAt;
  @override
  DateTime? get publishBy;
  @override
  DateTime? get deletedAt;
  @override
  DateTime? get deletedBy;
  @override
  @JsonKey(ignore: true)
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      throw _privateConstructorUsedError;
}

Tags _$TagsFromJson(Map<String, dynamic> json) {
  return _Tags.fromJson(json);
}

/// @nodoc
mixin _$Tags {
  int? get tagsId => throw _privateConstructorUsedError;
  String? get tagsName => throw _privateConstructorUsedError;
  String? get tagsIcon => throw _privateConstructorUsedError;
  String? get tagsTipe => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagsCopyWith<Tags> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagsCopyWith<$Res> {
  factory $TagsCopyWith(Tags value, $Res Function(Tags) then) =
      _$TagsCopyWithImpl<$Res, Tags>;
  @useResult
  $Res call(
      {int? tagsId, String? tagsName, String? tagsIcon, String? tagsTipe});
}

/// @nodoc
class _$TagsCopyWithImpl<$Res, $Val extends Tags>
    implements $TagsCopyWith<$Res> {
  _$TagsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagsId = freezed,
    Object? tagsName = freezed,
    Object? tagsIcon = freezed,
    Object? tagsTipe = freezed,
  }) {
    return _then(_value.copyWith(
      tagsId: freezed == tagsId
          ? _value.tagsId
          : tagsId // ignore: cast_nullable_to_non_nullable
              as int?,
      tagsName: freezed == tagsName
          ? _value.tagsName
          : tagsName // ignore: cast_nullable_to_non_nullable
              as String?,
      tagsIcon: freezed == tagsIcon
          ? _value.tagsIcon
          : tagsIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      tagsTipe: freezed == tagsTipe
          ? _value.tagsTipe
          : tagsTipe // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TagsCopyWith<$Res> implements $TagsCopyWith<$Res> {
  factory _$$_TagsCopyWith(_$_Tags value, $Res Function(_$_Tags) then) =
      __$$_TagsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? tagsId, String? tagsName, String? tagsIcon, String? tagsTipe});
}

/// @nodoc
class __$$_TagsCopyWithImpl<$Res> extends _$TagsCopyWithImpl<$Res, _$_Tags>
    implements _$$_TagsCopyWith<$Res> {
  __$$_TagsCopyWithImpl(_$_Tags _value, $Res Function(_$_Tags) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagsId = freezed,
    Object? tagsName = freezed,
    Object? tagsIcon = freezed,
    Object? tagsTipe = freezed,
  }) {
    return _then(_$_Tags(
      tagsId: freezed == tagsId
          ? _value.tagsId
          : tagsId // ignore: cast_nullable_to_non_nullable
              as int?,
      tagsName: freezed == tagsName
          ? _value.tagsName
          : tagsName // ignore: cast_nullable_to_non_nullable
              as String?,
      tagsIcon: freezed == tagsIcon
          ? _value.tagsIcon
          : tagsIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      tagsTipe: freezed == tagsTipe
          ? _value.tagsTipe
          : tagsTipe // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tags implements _Tags {
  const _$_Tags({this.tagsId, this.tagsName, this.tagsIcon, this.tagsTipe});

  factory _$_Tags.fromJson(Map<String, dynamic> json) => _$$_TagsFromJson(json);

  @override
  final int? tagsId;
  @override
  final String? tagsName;
  @override
  final String? tagsIcon;
  @override
  final String? tagsTipe;

  @override
  String toString() {
    return 'Tags(tagsId: $tagsId, tagsName: $tagsName, tagsIcon: $tagsIcon, tagsTipe: $tagsTipe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tags &&
            (identical(other.tagsId, tagsId) || other.tagsId == tagsId) &&
            (identical(other.tagsName, tagsName) ||
                other.tagsName == tagsName) &&
            (identical(other.tagsIcon, tagsIcon) ||
                other.tagsIcon == tagsIcon) &&
            (identical(other.tagsTipe, tagsTipe) ||
                other.tagsTipe == tagsTipe));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, tagsId, tagsName, tagsIcon, tagsTipe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TagsCopyWith<_$_Tags> get copyWith =>
      __$$_TagsCopyWithImpl<_$_Tags>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TagsToJson(
      this,
    );
  }
}

abstract class _Tags implements Tags {
  const factory _Tags(
      {final int? tagsId,
      final String? tagsName,
      final String? tagsIcon,
      final String? tagsTipe}) = _$_Tags;

  factory _Tags.fromJson(Map<String, dynamic> json) = _$_Tags.fromJson;

  @override
  int? get tagsId;
  @override
  String? get tagsName;
  @override
  String? get tagsIcon;
  @override
  String? get tagsTipe;
  @override
  @JsonKey(ignore: true)
  _$$_TagsCopyWith<_$_Tags> get copyWith => throw _privateConstructorUsedError;
}

Link _$LinkFromJson(Map<String, dynamic> json) {
  return _Link.fromJson(json);
}

/// @nodoc
mixin _$Link {
  String? get url => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkCopyWith<Link> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkCopyWith<$Res> {
  factory $LinkCopyWith(Link value, $Res Function(Link) then) =
      _$LinkCopyWithImpl<$Res, Link>;
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class _$LinkCopyWithImpl<$Res, $Val extends Link>
    implements $LinkCopyWith<$Res> {
  _$LinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LinkCopyWith<$Res> implements $LinkCopyWith<$Res> {
  factory _$$_LinkCopyWith(_$_Link value, $Res Function(_$_Link) then) =
      __$$_LinkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class __$$_LinkCopyWithImpl<$Res> extends _$LinkCopyWithImpl<$Res, _$_Link>
    implements _$$_LinkCopyWith<$Res> {
  __$$_LinkCopyWithImpl(_$_Link _value, $Res Function(_$_Link) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_$_Link(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Link implements _Link {
  const _$_Link({this.url, this.label, this.active});

  factory _$_Link.fromJson(Map<String, dynamic> json) => _$$_LinkFromJson(json);

  @override
  final String? url;
  @override
  final String? label;
  @override
  final bool? active;

  @override
  String toString() {
    return 'Link(url: $url, label: $label, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Link &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, label, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LinkCopyWith<_$_Link> get copyWith =>
      __$$_LinkCopyWithImpl<_$_Link>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinkToJson(
      this,
    );
  }
}

abstract class _Link implements Link {
  const factory _Link(
      {final String? url, final String? label, final bool? active}) = _$_Link;

  factory _Link.fromJson(Map<String, dynamic> json) = _$_Link.fromJson;

  @override
  String? get url;
  @override
  String? get label;
  @override
  bool? get active;
  @override
  @JsonKey(ignore: true)
  _$$_LinkCopyWith<_$_Link> get copyWith => throw _privateConstructorUsedError;
}
