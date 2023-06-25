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
  @JsonKey(name: "current_page")
  int? get currentPage => throw _privateConstructorUsedError;
  List<Datum>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "first_page_url")
  String? get firstPageUrl => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page")
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page_url")
  String? get lastPageUrl => throw _privateConstructorUsedError;
  List<Link>? get links => throw _privateConstructorUsedError;
  @JsonKey(name: "next_page_url")
  String? get nextPageUrl => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "prev_page_url")
  String? get prevPageUrl => throw _privateConstructorUsedError;
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
      {@JsonKey(name: "current_page") int? currentPage,
      List<Datum>? data,
      @JsonKey(name: "first_page_url") String? firstPageUrl,
      int? from,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "last_page_url") String? lastPageUrl,
      List<Link>? links,
      @JsonKey(name: "next_page_url") String? nextPageUrl,
      String? path,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "prev_page_url") String? prevPageUrl,
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
              as String?,
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
              as String?,
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
      {@JsonKey(name: "current_page") int? currentPage,
      List<Datum>? data,
      @JsonKey(name: "first_page_url") String? firstPageUrl,
      int? from,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "last_page_url") String? lastPageUrl,
      List<Link>? links,
      @JsonKey(name: "next_page_url") String? nextPageUrl,
      String? path,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "prev_page_url") String? prevPageUrl,
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
              as String?,
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
              as String?,
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
      {@JsonKey(name: "current_page") this.currentPage,
      final List<Datum>? data,
      @JsonKey(name: "first_page_url") this.firstPageUrl,
      this.from,
      @JsonKey(name: "last_page") this.lastPage,
      @JsonKey(name: "last_page_url") this.lastPageUrl,
      final List<Link>? links,
      @JsonKey(name: "next_page_url") this.nextPageUrl,
      this.path,
      @JsonKey(name: "per_page") this.perPage,
      @JsonKey(name: "prev_page_url") this.prevPageUrl,
      this.to,
      this.total})
      : _data = data,
        _links = links;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  @JsonKey(name: "current_page")
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
  @JsonKey(name: "first_page_url")
  final String? firstPageUrl;
  @override
  final int? from;
  @override
  @JsonKey(name: "last_page")
  final int? lastPage;
  @override
  @JsonKey(name: "last_page_url")
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
  @JsonKey(name: "next_page_url")
  final String? nextPageUrl;
  @override
  final String? path;
  @override
  @JsonKey(name: "per_page")
  final int? perPage;
  @override
  @JsonKey(name: "prev_page_url")
  final String? prevPageUrl;
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
            (identical(other.nextPageUrl, nextPageUrl) ||
                other.nextPageUrl == nextPageUrl) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.prevPageUrl, prevPageUrl) ||
                other.prevPageUrl == prevPageUrl) &&
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
      nextPageUrl,
      path,
      perPage,
      prevPageUrl,
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
      {@JsonKey(name: "current_page") final int? currentPage,
      final List<Datum>? data,
      @JsonKey(name: "first_page_url") final String? firstPageUrl,
      final int? from,
      @JsonKey(name: "last_page") final int? lastPage,
      @JsonKey(name: "last_page_url") final String? lastPageUrl,
      final List<Link>? links,
      @JsonKey(name: "next_page_url") final String? nextPageUrl,
      final String? path,
      @JsonKey(name: "per_page") final int? perPage,
      @JsonKey(name: "prev_page_url") final String? prevPageUrl,
      final int? to,
      final int? total}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  @JsonKey(name: "current_page")
  int? get currentPage;
  @override
  List<Datum>? get data;
  @override
  @JsonKey(name: "first_page_url")
  String? get firstPageUrl;
  @override
  int? get from;
  @override
  @JsonKey(name: "last_page")
  int? get lastPage;
  @override
  @JsonKey(name: "last_page_url")
  String? get lastPageUrl;
  @override
  List<Link>? get links;
  @override
  @JsonKey(name: "next_page_url")
  String? get nextPageUrl;
  @override
  String? get path;
  @override
  @JsonKey(name: "per_page")
  int? get perPage;
  @override
  @JsonKey(name: "prev_page_url")
  String? get prevPageUrl;
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
  @JsonKey(name: "local_like")
  bool? get localLike => throw _privateConstructorUsedError;
  @JsonKey(name: "kategori_id")
  int? get kategoriId => throw _privateConstructorUsedError;
  @JsonKey(name: "kategori_name")
  String? get kategoriName => throw _privateConstructorUsedError;
  @JsonKey(name: "source_id")
  int? get sourceId => throw _privateConstructorUsedError;
  @JsonKey(name: "source_name")
  String? get sourceName => throw _privateConstructorUsedError;
  @JsonKey(name: "source_url")
  String? get sourceUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "source_date")
  dynamic get sourceDate => throw _privateConstructorUsedError;
  @JsonKey(name: "propinsi_id")
  int? get propinsiId => throw _privateConstructorUsedError;
  @JsonKey(name: "kota_id")
  int? get kotaId => throw _privateConstructorUsedError;
  @JsonKey(name: "propinsi_name")
  String? get propinsiName => throw _privateConstructorUsedError;
  @JsonKey(name: "kota_name")
  String? get kotaName => throw _privateConstructorUsedError;
  @JsonKey(name: "tags_pihak")
  Tags? get tagsPihak => throw _privateConstructorUsedError;
  @JsonKey(name: "tags_topik")
  Tags? get tagsTopik => throw _privateConstructorUsedError;
  @JsonKey(name: "tags_otonomi")
  Tags? get tagsOtonomi => throw _privateConstructorUsedError;
  @JsonKey(name: "total_read")
  int? get totalRead => throw _privateConstructorUsedError;
  @JsonKey(name: "total_like")
  int? get totalLike => throw _privateConstructorUsedError;
  @JsonKey(name: "total_comment")
  int? get totalComment => throw _privateConstructorUsedError;
  @JsonKey(name: "total_shared")
  int? get totalShared => throw _privateConstructorUsedError;
  String? get domain => throw _privateConstructorUsedError;
  @JsonKey(name: "full_path")
  String? get fullPath => throw _privateConstructorUsedError;
  @JsonKey(name: "file_upload")
  String? get fileUpload => throw _privateConstructorUsedError;
  @JsonKey(name: "thumb_path")
  String? get thumbPath => throw _privateConstructorUsedError;
  @JsonKey(name: "video_url")
  String? get videoUrl => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String? get images => throw _privateConstructorUsedError;
  @JsonKey(name: "list_media")
  List<ListMediaElement>? get listMedia => throw _privateConstructorUsedError;
  @JsonKey(name: "peta_kota")
  PetaKota? get petaKota => throw _privateConstructorUsedError;
  @JsonKey(name: "active_at")
  DateTime? get activeAt => throw _privateConstructorUsedError;
  @JsonKey(name: "active_by")
  String? get activeBy => throw _privateConstructorUsedError;
  @JsonKey(name: "publish_at")
  DateTime? get publishAt => throw _privateConstructorUsedError;
  @JsonKey(name: "publish_by")
  String? get publishBy => throw _privateConstructorUsedError;
  @JsonKey(name: "deleted_at")
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "deleted_by")
  String? get deletedBy => throw _privateConstructorUsedError;

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
      @JsonKey(name: "local_like") bool? localLike,
      @JsonKey(name: "kategori_id") int? kategoriId,
      @JsonKey(name: "kategori_name") String? kategoriName,
      @JsonKey(name: "source_id") int? sourceId,
      @JsonKey(name: "source_name") String? sourceName,
      @JsonKey(name: "source_url") String? sourceUrl,
      @JsonKey(name: "source_date") dynamic sourceDate,
      @JsonKey(name: "propinsi_id") int? propinsiId,
      @JsonKey(name: "kota_id") int? kotaId,
      @JsonKey(name: "propinsi_name") String? propinsiName,
      @JsonKey(name: "kota_name") String? kotaName,
      @JsonKey(name: "tags_pihak") Tags? tagsPihak,
      @JsonKey(name: "tags_topik") Tags? tagsTopik,
      @JsonKey(name: "tags_otonomi") Tags? tagsOtonomi,
      @JsonKey(name: "total_read") int? totalRead,
      @JsonKey(name: "total_like") int? totalLike,
      @JsonKey(name: "total_comment") int? totalComment,
      @JsonKey(name: "total_shared") int? totalShared,
      String? domain,
      @JsonKey(name: "full_path") String? fullPath,
      @JsonKey(name: "file_upload") String? fileUpload,
      @JsonKey(name: "thumb_path") String? thumbPath,
      @JsonKey(name: "video_url") String? videoUrl,
      String? thumbnail,
      String? images,
      @JsonKey(name: "list_media") List<ListMediaElement>? listMedia,
      @JsonKey(name: "peta_kota") PetaKota? petaKota,
      @JsonKey(name: "active_at") DateTime? activeAt,
      @JsonKey(name: "active_by") String? activeBy,
      @JsonKey(name: "publish_at") DateTime? publishAt,
      @JsonKey(name: "publish_by") String? publishBy,
      @JsonKey(name: "deleted_at") DateTime? deletedAt,
      @JsonKey(name: "deleted_by") String? deletedBy});

  $TagsCopyWith<$Res>? get tagsPihak;
  $TagsCopyWith<$Res>? get tagsTopik;
  $TagsCopyWith<$Res>? get tagsOtonomi;
  $PetaKotaCopyWith<$Res>? get petaKota;
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
    Object? localLike = freezed,
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
    Object? totalComment = freezed,
    Object? totalShared = freezed,
    Object? domain = freezed,
    Object? fullPath = freezed,
    Object? fileUpload = freezed,
    Object? thumbPath = freezed,
    Object? videoUrl = freezed,
    Object? thumbnail = freezed,
    Object? images = freezed,
    Object? listMedia = freezed,
    Object? petaKota = freezed,
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
      localLike: freezed == localLike
          ? _value.localLike
          : localLike // ignore: cast_nullable_to_non_nullable
              as bool?,
      kategoriId: freezed == kategoriId
          ? _value.kategoriId
          : kategoriId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      totalComment: freezed == totalComment
          ? _value.totalComment
          : totalComment // ignore: cast_nullable_to_non_nullable
              as int?,
      totalShared: freezed == totalShared
          ? _value.totalShared
          : totalShared // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String?,
      listMedia: freezed == listMedia
          ? _value.listMedia
          : listMedia // ignore: cast_nullable_to_non_nullable
              as List<ListMediaElement>?,
      petaKota: freezed == petaKota
          ? _value.petaKota
          : petaKota // ignore: cast_nullable_to_non_nullable
              as PetaKota?,
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
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedBy: freezed == deletedBy
          ? _value.deletedBy
          : deletedBy // ignore: cast_nullable_to_non_nullable
              as String?,
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

  @override
  @pragma('vm:prefer-inline')
  $PetaKotaCopyWith<$Res>? get petaKota {
    if (_value.petaKota == null) {
      return null;
    }

    return $PetaKotaCopyWith<$Res>(_value.petaKota!, (value) {
      return _then(_value.copyWith(petaKota: value) as $Val);
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
      @JsonKey(name: "local_like") bool? localLike,
      @JsonKey(name: "kategori_id") int? kategoriId,
      @JsonKey(name: "kategori_name") String? kategoriName,
      @JsonKey(name: "source_id") int? sourceId,
      @JsonKey(name: "source_name") String? sourceName,
      @JsonKey(name: "source_url") String? sourceUrl,
      @JsonKey(name: "source_date") dynamic sourceDate,
      @JsonKey(name: "propinsi_id") int? propinsiId,
      @JsonKey(name: "kota_id") int? kotaId,
      @JsonKey(name: "propinsi_name") String? propinsiName,
      @JsonKey(name: "kota_name") String? kotaName,
      @JsonKey(name: "tags_pihak") Tags? tagsPihak,
      @JsonKey(name: "tags_topik") Tags? tagsTopik,
      @JsonKey(name: "tags_otonomi") Tags? tagsOtonomi,
      @JsonKey(name: "total_read") int? totalRead,
      @JsonKey(name: "total_like") int? totalLike,
      @JsonKey(name: "total_comment") int? totalComment,
      @JsonKey(name: "total_shared") int? totalShared,
      String? domain,
      @JsonKey(name: "full_path") String? fullPath,
      @JsonKey(name: "file_upload") String? fileUpload,
      @JsonKey(name: "thumb_path") String? thumbPath,
      @JsonKey(name: "video_url") String? videoUrl,
      String? thumbnail,
      String? images,
      @JsonKey(name: "list_media") List<ListMediaElement>? listMedia,
      @JsonKey(name: "peta_kota") PetaKota? petaKota,
      @JsonKey(name: "active_at") DateTime? activeAt,
      @JsonKey(name: "active_by") String? activeBy,
      @JsonKey(name: "publish_at") DateTime? publishAt,
      @JsonKey(name: "publish_by") String? publishBy,
      @JsonKey(name: "deleted_at") DateTime? deletedAt,
      @JsonKey(name: "deleted_by") String? deletedBy});

  @override
  $TagsCopyWith<$Res>? get tagsPihak;
  @override
  $TagsCopyWith<$Res>? get tagsTopik;
  @override
  $TagsCopyWith<$Res>? get tagsOtonomi;
  @override
  $PetaKotaCopyWith<$Res>? get petaKota;
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
    Object? localLike = freezed,
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
    Object? totalComment = freezed,
    Object? totalShared = freezed,
    Object? domain = freezed,
    Object? fullPath = freezed,
    Object? fileUpload = freezed,
    Object? thumbPath = freezed,
    Object? videoUrl = freezed,
    Object? thumbnail = freezed,
    Object? images = freezed,
    Object? listMedia = freezed,
    Object? petaKota = freezed,
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
      localLike: freezed == localLike
          ? _value.localLike
          : localLike // ignore: cast_nullable_to_non_nullable
              as bool?,
      kategoriId: freezed == kategoriId
          ? _value.kategoriId
          : kategoriId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      totalComment: freezed == totalComment
          ? _value.totalComment
          : totalComment // ignore: cast_nullable_to_non_nullable
              as int?,
      totalShared: freezed == totalShared
          ? _value.totalShared
          : totalShared // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String?,
      listMedia: freezed == listMedia
          ? _value._listMedia
          : listMedia // ignore: cast_nullable_to_non_nullable
              as List<ListMediaElement>?,
      petaKota: freezed == petaKota
          ? _value.petaKota
          : petaKota // ignore: cast_nullable_to_non_nullable
              as PetaKota?,
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
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedBy: freezed == deletedBy
          ? _value.deletedBy
          : deletedBy // ignore: cast_nullable_to_non_nullable
              as String?,
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
      @JsonKey(name: "local_like") this.localLike,
      @JsonKey(name: "kategori_id") this.kategoriId,
      @JsonKey(name: "kategori_name") this.kategoriName,
      @JsonKey(name: "source_id") this.sourceId,
      @JsonKey(name: "source_name") this.sourceName,
      @JsonKey(name: "source_url") this.sourceUrl,
      @JsonKey(name: "source_date") this.sourceDate,
      @JsonKey(name: "propinsi_id") this.propinsiId,
      @JsonKey(name: "kota_id") this.kotaId,
      @JsonKey(name: "propinsi_name") this.propinsiName,
      @JsonKey(name: "kota_name") this.kotaName,
      @JsonKey(name: "tags_pihak") this.tagsPihak,
      @JsonKey(name: "tags_topik") this.tagsTopik,
      @JsonKey(name: "tags_otonomi") this.tagsOtonomi,
      @JsonKey(name: "total_read") this.totalRead,
      @JsonKey(name: "total_like") this.totalLike,
      @JsonKey(name: "total_comment") this.totalComment,
      @JsonKey(name: "total_shared") this.totalShared,
      this.domain,
      @JsonKey(name: "full_path") this.fullPath,
      @JsonKey(name: "file_upload") this.fileUpload,
      @JsonKey(name: "thumb_path") this.thumbPath,
      @JsonKey(name: "video_url") this.videoUrl,
      this.thumbnail,
      this.images,
      @JsonKey(name: "list_media") final List<ListMediaElement>? listMedia,
      @JsonKey(name: "peta_kota") this.petaKota,
      @JsonKey(name: "active_at") this.activeAt,
      @JsonKey(name: "active_by") this.activeBy,
      @JsonKey(name: "publish_at") this.publishAt,
      @JsonKey(name: "publish_by") this.publishBy,
      @JsonKey(name: "deleted_at") this.deletedAt,
      @JsonKey(name: "deleted_by") this.deletedBy})
      : _listMedia = listMedia;

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
  @JsonKey(name: "local_like")
  final bool? localLike;
  @override
  @JsonKey(name: "kategori_id")
  final int? kategoriId;
  @override
  @JsonKey(name: "kategori_name")
  final String? kategoriName;
  @override
  @JsonKey(name: "source_id")
  final int? sourceId;
  @override
  @JsonKey(name: "source_name")
  final String? sourceName;
  @override
  @JsonKey(name: "source_url")
  final String? sourceUrl;
  @override
  @JsonKey(name: "source_date")
  final dynamic sourceDate;
  @override
  @JsonKey(name: "propinsi_id")
  final int? propinsiId;
  @override
  @JsonKey(name: "kota_id")
  final int? kotaId;
  @override
  @JsonKey(name: "propinsi_name")
  final String? propinsiName;
  @override
  @JsonKey(name: "kota_name")
  final String? kotaName;
  @override
  @JsonKey(name: "tags_pihak")
  final Tags? tagsPihak;
  @override
  @JsonKey(name: "tags_topik")
  final Tags? tagsTopik;
  @override
  @JsonKey(name: "tags_otonomi")
  final Tags? tagsOtonomi;
  @override
  @JsonKey(name: "total_read")
  final int? totalRead;
  @override
  @JsonKey(name: "total_like")
  final int? totalLike;
  @override
  @JsonKey(name: "total_comment")
  final int? totalComment;
  @override
  @JsonKey(name: "total_shared")
  final int? totalShared;
  @override
  final String? domain;
  @override
  @JsonKey(name: "full_path")
  final String? fullPath;
  @override
  @JsonKey(name: "file_upload")
  final String? fileUpload;
  @override
  @JsonKey(name: "thumb_path")
  final String? thumbPath;
  @override
  @JsonKey(name: "video_url")
  final String? videoUrl;
  @override
  final String? thumbnail;
  @override
  final String? images;
  final List<ListMediaElement>? _listMedia;
  @override
  @JsonKey(name: "list_media")
  List<ListMediaElement>? get listMedia {
    final value = _listMedia;
    if (value == null) return null;
    if (_listMedia is EqualUnmodifiableListView) return _listMedia;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "peta_kota")
  final PetaKota? petaKota;
  @override
  @JsonKey(name: "active_at")
  final DateTime? activeAt;
  @override
  @JsonKey(name: "active_by")
  final String? activeBy;
  @override
  @JsonKey(name: "publish_at")
  final DateTime? publishAt;
  @override
  @JsonKey(name: "publish_by")
  final String? publishBy;
  @override
  @JsonKey(name: "deleted_at")
  final DateTime? deletedAt;
  @override
  @JsonKey(name: "deleted_by")
  final String? deletedBy;

  @override
  String toString() {
    return 'Datum(id: $id, judul: $judul, slug: $slug, keterangan: $keterangan, tipe: $tipe, localLike: $localLike, kategoriId: $kategoriId, kategoriName: $kategoriName, sourceId: $sourceId, sourceName: $sourceName, sourceUrl: $sourceUrl, sourceDate: $sourceDate, propinsiId: $propinsiId, kotaId: $kotaId, propinsiName: $propinsiName, kotaName: $kotaName, tagsPihak: $tagsPihak, tagsTopik: $tagsTopik, tagsOtonomi: $tagsOtonomi, totalRead: $totalRead, totalLike: $totalLike, totalComment: $totalComment, totalShared: $totalShared, domain: $domain, fullPath: $fullPath, fileUpload: $fileUpload, thumbPath: $thumbPath, videoUrl: $videoUrl, thumbnail: $thumbnail, images: $images, listMedia: $listMedia, petaKota: $petaKota, activeAt: $activeAt, activeBy: $activeBy, publishAt: $publishAt, publishBy: $publishBy, deletedAt: $deletedAt, deletedBy: $deletedBy)';
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
            (identical(other.localLike, localLike) ||
                other.localLike == localLike) &&
            (identical(other.kategoriId, kategoriId) ||
                other.kategoriId == kategoriId) &&
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
            (identical(other.totalComment, totalComment) ||
                other.totalComment == totalComment) &&
            (identical(other.totalShared, totalShared) ||
                other.totalShared == totalShared) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.fullPath, fullPath) ||
                other.fullPath == fullPath) &&
            (identical(other.fileUpload, fileUpload) ||
                other.fileUpload == fileUpload) &&
            (identical(other.thumbPath, thumbPath) ||
                other.thumbPath == thumbPath) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.images, images) || other.images == images) &&
            const DeepCollectionEquality()
                .equals(other._listMedia, _listMedia) &&
            (identical(other.petaKota, petaKota) ||
                other.petaKota == petaKota) &&
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
        localLike,
        kategoriId,
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
        totalComment,
        totalShared,
        domain,
        fullPath,
        fileUpload,
        thumbPath,
        videoUrl,
        thumbnail,
        images,
        const DeepCollectionEquality().hash(_listMedia),
        petaKota,
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
      @JsonKey(name: "local_like") final bool? localLike,
      @JsonKey(name: "kategori_id") final int? kategoriId,
      @JsonKey(name: "kategori_name") final String? kategoriName,
      @JsonKey(name: "source_id") final int? sourceId,
      @JsonKey(name: "source_name") final String? sourceName,
      @JsonKey(name: "source_url") final String? sourceUrl,
      @JsonKey(name: "source_date") final dynamic sourceDate,
      @JsonKey(name: "propinsi_id") final int? propinsiId,
      @JsonKey(name: "kota_id") final int? kotaId,
      @JsonKey(name: "propinsi_name") final String? propinsiName,
      @JsonKey(name: "kota_name") final String? kotaName,
      @JsonKey(name: "tags_pihak") final Tags? tagsPihak,
      @JsonKey(name: "tags_topik") final Tags? tagsTopik,
      @JsonKey(name: "tags_otonomi") final Tags? tagsOtonomi,
      @JsonKey(name: "total_read") final int? totalRead,
      @JsonKey(name: "total_like") final int? totalLike,
      @JsonKey(name: "total_comment") final int? totalComment,
      @JsonKey(name: "total_shared") final int? totalShared,
      final String? domain,
      @JsonKey(name: "full_path") final String? fullPath,
      @JsonKey(name: "file_upload") final String? fileUpload,
      @JsonKey(name: "thumb_path") final String? thumbPath,
      @JsonKey(name: "video_url") final String? videoUrl,
      final String? thumbnail,
      final String? images,
      @JsonKey(name: "list_media") final List<ListMediaElement>? listMedia,
      @JsonKey(name: "peta_kota") final PetaKota? petaKota,
      @JsonKey(name: "active_at") final DateTime? activeAt,
      @JsonKey(name: "active_by") final String? activeBy,
      @JsonKey(name: "publish_at") final DateTime? publishAt,
      @JsonKey(name: "publish_by") final String? publishBy,
      @JsonKey(name: "deleted_at") final DateTime? deletedAt,
      @JsonKey(name: "deleted_by") final String? deletedBy}) = _$_Datum;

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
  @JsonKey(name: "local_like")
  bool? get localLike;
  @override
  @JsonKey(name: "kategori_id")
  int? get kategoriId;
  @override
  @JsonKey(name: "kategori_name")
  String? get kategoriName;
  @override
  @JsonKey(name: "source_id")
  int? get sourceId;
  @override
  @JsonKey(name: "source_name")
  String? get sourceName;
  @override
  @JsonKey(name: "source_url")
  String? get sourceUrl;
  @override
  @JsonKey(name: "source_date")
  dynamic get sourceDate;
  @override
  @JsonKey(name: "propinsi_id")
  int? get propinsiId;
  @override
  @JsonKey(name: "kota_id")
  int? get kotaId;
  @override
  @JsonKey(name: "propinsi_name")
  String? get propinsiName;
  @override
  @JsonKey(name: "kota_name")
  String? get kotaName;
  @override
  @JsonKey(name: "tags_pihak")
  Tags? get tagsPihak;
  @override
  @JsonKey(name: "tags_topik")
  Tags? get tagsTopik;
  @override
  @JsonKey(name: "tags_otonomi")
  Tags? get tagsOtonomi;
  @override
  @JsonKey(name: "total_read")
  int? get totalRead;
  @override
  @JsonKey(name: "total_like")
  int? get totalLike;
  @override
  @JsonKey(name: "total_comment")
  int? get totalComment;
  @override
  @JsonKey(name: "total_shared")
  int? get totalShared;
  @override
  String? get domain;
  @override
  @JsonKey(name: "full_path")
  String? get fullPath;
  @override
  @JsonKey(name: "file_upload")
  String? get fileUpload;
  @override
  @JsonKey(name: "thumb_path")
  String? get thumbPath;
  @override
  @JsonKey(name: "video_url")
  String? get videoUrl;
  @override
  String? get thumbnail;
  @override
  String? get images;
  @override
  @JsonKey(name: "list_media")
  List<ListMediaElement>? get listMedia;
  @override
  @JsonKey(name: "peta_kota")
  PetaKota? get petaKota;
  @override
  @JsonKey(name: "active_at")
  DateTime? get activeAt;
  @override
  @JsonKey(name: "active_by")
  String? get activeBy;
  @override
  @JsonKey(name: "publish_at")
  DateTime? get publishAt;
  @override
  @JsonKey(name: "publish_by")
  String? get publishBy;
  @override
  @JsonKey(name: "deleted_at")
  DateTime? get deletedAt;
  @override
  @JsonKey(name: "deleted_by")
  String? get deletedBy;
  @override
  @JsonKey(ignore: true)
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      throw _privateConstructorUsedError;
}

PetaKota _$PetaKotaFromJson(Map<String, dynamic> json) {
  return _PetaKota.fromJson(json);
}

/// @nodoc
mixin _$PetaKota {
  @JsonKey(name: "kota_icon_1")
  String? get kotaIcon1 => throw _privateConstructorUsedError;
  @JsonKey(name: "kota_icon_2")
  String? get kotaIcon2 => throw _privateConstructorUsedError;
  @JsonKey(name: "kota_icon_3")
  String? get kotaIcon3 => throw _privateConstructorUsedError;
  @JsonKey(name: "kota_icon_4")
  String? get kotaIcon4 => throw _privateConstructorUsedError;
  @JsonKey(name: "kota_icon_5")
  String? get kotaIcon5 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetaKotaCopyWith<PetaKota> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetaKotaCopyWith<$Res> {
  factory $PetaKotaCopyWith(PetaKota value, $Res Function(PetaKota) then) =
      _$PetaKotaCopyWithImpl<$Res, PetaKota>;
  @useResult
  $Res call(
      {@JsonKey(name: "kota_icon_1") String? kotaIcon1,
      @JsonKey(name: "kota_icon_2") String? kotaIcon2,
      @JsonKey(name: "kota_icon_3") String? kotaIcon3,
      @JsonKey(name: "kota_icon_4") String? kotaIcon4,
      @JsonKey(name: "kota_icon_5") String? kotaIcon5});
}

/// @nodoc
class _$PetaKotaCopyWithImpl<$Res, $Val extends PetaKota>
    implements $PetaKotaCopyWith<$Res> {
  _$PetaKotaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kotaIcon1 = freezed,
    Object? kotaIcon2 = freezed,
    Object? kotaIcon3 = freezed,
    Object? kotaIcon4 = freezed,
    Object? kotaIcon5 = freezed,
  }) {
    return _then(_value.copyWith(
      kotaIcon1: freezed == kotaIcon1
          ? _value.kotaIcon1
          : kotaIcon1 // ignore: cast_nullable_to_non_nullable
              as String?,
      kotaIcon2: freezed == kotaIcon2
          ? _value.kotaIcon2
          : kotaIcon2 // ignore: cast_nullable_to_non_nullable
              as String?,
      kotaIcon3: freezed == kotaIcon3
          ? _value.kotaIcon3
          : kotaIcon3 // ignore: cast_nullable_to_non_nullable
              as String?,
      kotaIcon4: freezed == kotaIcon4
          ? _value.kotaIcon4
          : kotaIcon4 // ignore: cast_nullable_to_non_nullable
              as String?,
      kotaIcon5: freezed == kotaIcon5
          ? _value.kotaIcon5
          : kotaIcon5 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PetaKotaCopyWith<$Res> implements $PetaKotaCopyWith<$Res> {
  factory _$$_PetaKotaCopyWith(
          _$_PetaKota value, $Res Function(_$_PetaKota) then) =
      __$$_PetaKotaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "kota_icon_1") String? kotaIcon1,
      @JsonKey(name: "kota_icon_2") String? kotaIcon2,
      @JsonKey(name: "kota_icon_3") String? kotaIcon3,
      @JsonKey(name: "kota_icon_4") String? kotaIcon4,
      @JsonKey(name: "kota_icon_5") String? kotaIcon5});
}

/// @nodoc
class __$$_PetaKotaCopyWithImpl<$Res>
    extends _$PetaKotaCopyWithImpl<$Res, _$_PetaKota>
    implements _$$_PetaKotaCopyWith<$Res> {
  __$$_PetaKotaCopyWithImpl(
      _$_PetaKota _value, $Res Function(_$_PetaKota) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kotaIcon1 = freezed,
    Object? kotaIcon2 = freezed,
    Object? kotaIcon3 = freezed,
    Object? kotaIcon4 = freezed,
    Object? kotaIcon5 = freezed,
  }) {
    return _then(_$_PetaKota(
      kotaIcon1: freezed == kotaIcon1
          ? _value.kotaIcon1
          : kotaIcon1 // ignore: cast_nullable_to_non_nullable
              as String?,
      kotaIcon2: freezed == kotaIcon2
          ? _value.kotaIcon2
          : kotaIcon2 // ignore: cast_nullable_to_non_nullable
              as String?,
      kotaIcon3: freezed == kotaIcon3
          ? _value.kotaIcon3
          : kotaIcon3 // ignore: cast_nullable_to_non_nullable
              as String?,
      kotaIcon4: freezed == kotaIcon4
          ? _value.kotaIcon4
          : kotaIcon4 // ignore: cast_nullable_to_non_nullable
              as String?,
      kotaIcon5: freezed == kotaIcon5
          ? _value.kotaIcon5
          : kotaIcon5 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PetaKota implements _PetaKota {
  const _$_PetaKota(
      {@JsonKey(name: "kota_icon_1") this.kotaIcon1,
      @JsonKey(name: "kota_icon_2") this.kotaIcon2,
      @JsonKey(name: "kota_icon_3") this.kotaIcon3,
      @JsonKey(name: "kota_icon_4") this.kotaIcon4,
      @JsonKey(name: "kota_icon_5") this.kotaIcon5});

  factory _$_PetaKota.fromJson(Map<String, dynamic> json) =>
      _$$_PetaKotaFromJson(json);

  @override
  @JsonKey(name: "kota_icon_1")
  final String? kotaIcon1;
  @override
  @JsonKey(name: "kota_icon_2")
  final String? kotaIcon2;
  @override
  @JsonKey(name: "kota_icon_3")
  final String? kotaIcon3;
  @override
  @JsonKey(name: "kota_icon_4")
  final String? kotaIcon4;
  @override
  @JsonKey(name: "kota_icon_5")
  final String? kotaIcon5;

  @override
  String toString() {
    return 'PetaKota(kotaIcon1: $kotaIcon1, kotaIcon2: $kotaIcon2, kotaIcon3: $kotaIcon3, kotaIcon4: $kotaIcon4, kotaIcon5: $kotaIcon5)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PetaKota &&
            (identical(other.kotaIcon1, kotaIcon1) ||
                other.kotaIcon1 == kotaIcon1) &&
            (identical(other.kotaIcon2, kotaIcon2) ||
                other.kotaIcon2 == kotaIcon2) &&
            (identical(other.kotaIcon3, kotaIcon3) ||
                other.kotaIcon3 == kotaIcon3) &&
            (identical(other.kotaIcon4, kotaIcon4) ||
                other.kotaIcon4 == kotaIcon4) &&
            (identical(other.kotaIcon5, kotaIcon5) ||
                other.kotaIcon5 == kotaIcon5));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, kotaIcon1, kotaIcon2, kotaIcon3, kotaIcon4, kotaIcon5);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PetaKotaCopyWith<_$_PetaKota> get copyWith =>
      __$$_PetaKotaCopyWithImpl<_$_PetaKota>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PetaKotaToJson(
      this,
    );
  }
}

abstract class _PetaKota implements PetaKota {
  const factory _PetaKota(
      {@JsonKey(name: "kota_icon_1") final String? kotaIcon1,
      @JsonKey(name: "kota_icon_2") final String? kotaIcon2,
      @JsonKey(name: "kota_icon_3") final String? kotaIcon3,
      @JsonKey(name: "kota_icon_4") final String? kotaIcon4,
      @JsonKey(name: "kota_icon_5") final String? kotaIcon5}) = _$_PetaKota;

  factory _PetaKota.fromJson(Map<String, dynamic> json) = _$_PetaKota.fromJson;

  @override
  @JsonKey(name: "kota_icon_1")
  String? get kotaIcon1;
  @override
  @JsonKey(name: "kota_icon_2")
  String? get kotaIcon2;
  @override
  @JsonKey(name: "kota_icon_3")
  String? get kotaIcon3;
  @override
  @JsonKey(name: "kota_icon_4")
  String? get kotaIcon4;
  @override
  @JsonKey(name: "kota_icon_5")
  String? get kotaIcon5;
  @override
  @JsonKey(ignore: true)
  _$$_PetaKotaCopyWith<_$_PetaKota> get copyWith =>
      throw _privateConstructorUsedError;
}

ListMediaElement _$ListMediaElementFromJson(Map<String, dynamic> json) {
  return _ListMediaElement.fromJson(json);
}

/// @nodoc
mixin _$ListMediaElement {
  String? get images => throw _privateConstructorUsedError;
  String? get captions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListMediaElementCopyWith<ListMediaElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListMediaElementCopyWith<$Res> {
  factory $ListMediaElementCopyWith(
          ListMediaElement value, $Res Function(ListMediaElement) then) =
      _$ListMediaElementCopyWithImpl<$Res, ListMediaElement>;
  @useResult
  $Res call({String? images, String? captions});
}

/// @nodoc
class _$ListMediaElementCopyWithImpl<$Res, $Val extends ListMediaElement>
    implements $ListMediaElementCopyWith<$Res> {
  _$ListMediaElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = freezed,
    Object? captions = freezed,
  }) {
    return _then(_value.copyWith(
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String?,
      captions: freezed == captions
          ? _value.captions
          : captions // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListMediaElementCopyWith<$Res>
    implements $ListMediaElementCopyWith<$Res> {
  factory _$$_ListMediaElementCopyWith(
          _$_ListMediaElement value, $Res Function(_$_ListMediaElement) then) =
      __$$_ListMediaElementCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? images, String? captions});
}

/// @nodoc
class __$$_ListMediaElementCopyWithImpl<$Res>
    extends _$ListMediaElementCopyWithImpl<$Res, _$_ListMediaElement>
    implements _$$_ListMediaElementCopyWith<$Res> {
  __$$_ListMediaElementCopyWithImpl(
      _$_ListMediaElement _value, $Res Function(_$_ListMediaElement) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = freezed,
    Object? captions = freezed,
  }) {
    return _then(_$_ListMediaElement(
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String?,
      captions: freezed == captions
          ? _value.captions
          : captions // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListMediaElement implements _ListMediaElement {
  const _$_ListMediaElement({this.images, this.captions});

  factory _$_ListMediaElement.fromJson(Map<String, dynamic> json) =>
      _$$_ListMediaElementFromJson(json);

  @override
  final String? images;
  @override
  final String? captions;

  @override
  String toString() {
    return 'ListMediaElement(images: $images, captions: $captions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListMediaElement &&
            (identical(other.images, images) || other.images == images) &&
            (identical(other.captions, captions) ||
                other.captions == captions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, images, captions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListMediaElementCopyWith<_$_ListMediaElement> get copyWith =>
      __$$_ListMediaElementCopyWithImpl<_$_ListMediaElement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListMediaElementToJson(
      this,
    );
  }
}

abstract class _ListMediaElement implements ListMediaElement {
  const factory _ListMediaElement(
      {final String? images, final String? captions}) = _$_ListMediaElement;

  factory _ListMediaElement.fromJson(Map<String, dynamic> json) =
      _$_ListMediaElement.fromJson;

  @override
  String? get images;
  @override
  String? get captions;
  @override
  @JsonKey(ignore: true)
  _$$_ListMediaElementCopyWith<_$_ListMediaElement> get copyWith =>
      throw _privateConstructorUsedError;
}

Tags _$TagsFromJson(Map<String, dynamic> json) {
  return _Tags.fromJson(json);
}

/// @nodoc
mixin _$Tags {
  @JsonKey(name: "tags_id")
  int? get tagsId => throw _privateConstructorUsedError;
  @JsonKey(name: "tags_name")
  String? get tagsName => throw _privateConstructorUsedError;
  @JsonKey(name: "tags_icon_1")
  String? get tagsIcon1 => throw _privateConstructorUsedError;
  @JsonKey(name: "tags_icon_2")
  String? get tagsIcon2 => throw _privateConstructorUsedError;
  @JsonKey(name: "tags_icon_3")
  String? get tagsIcon3 => throw _privateConstructorUsedError;
  @JsonKey(name: "tags_icon_4")
  String? get tagsIcon4 => throw _privateConstructorUsedError;
  @JsonKey(name: "tags_icon_5")
  String? get tagsIcon5 => throw _privateConstructorUsedError;
  @JsonKey(name: "tags_tipe")
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
      {@JsonKey(name: "tags_id") int? tagsId,
      @JsonKey(name: "tags_name") String? tagsName,
      @JsonKey(name: "tags_icon_1") String? tagsIcon1,
      @JsonKey(name: "tags_icon_2") String? tagsIcon2,
      @JsonKey(name: "tags_icon_3") String? tagsIcon3,
      @JsonKey(name: "tags_icon_4") String? tagsIcon4,
      @JsonKey(name: "tags_icon_5") String? tagsIcon5,
      @JsonKey(name: "tags_tipe") String? tagsTipe});
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
    Object? tagsIcon1 = freezed,
    Object? tagsIcon2 = freezed,
    Object? tagsIcon3 = freezed,
    Object? tagsIcon4 = freezed,
    Object? tagsIcon5 = freezed,
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
      tagsIcon1: freezed == tagsIcon1
          ? _value.tagsIcon1
          : tagsIcon1 // ignore: cast_nullable_to_non_nullable
              as String?,
      tagsIcon2: freezed == tagsIcon2
          ? _value.tagsIcon2
          : tagsIcon2 // ignore: cast_nullable_to_non_nullable
              as String?,
      tagsIcon3: freezed == tagsIcon3
          ? _value.tagsIcon3
          : tagsIcon3 // ignore: cast_nullable_to_non_nullable
              as String?,
      tagsIcon4: freezed == tagsIcon4
          ? _value.tagsIcon4
          : tagsIcon4 // ignore: cast_nullable_to_non_nullable
              as String?,
      tagsIcon5: freezed == tagsIcon5
          ? _value.tagsIcon5
          : tagsIcon5 // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "tags_id") int? tagsId,
      @JsonKey(name: "tags_name") String? tagsName,
      @JsonKey(name: "tags_icon_1") String? tagsIcon1,
      @JsonKey(name: "tags_icon_2") String? tagsIcon2,
      @JsonKey(name: "tags_icon_3") String? tagsIcon3,
      @JsonKey(name: "tags_icon_4") String? tagsIcon4,
      @JsonKey(name: "tags_icon_5") String? tagsIcon5,
      @JsonKey(name: "tags_tipe") String? tagsTipe});
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
    Object? tagsIcon1 = freezed,
    Object? tagsIcon2 = freezed,
    Object? tagsIcon3 = freezed,
    Object? tagsIcon4 = freezed,
    Object? tagsIcon5 = freezed,
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
      tagsIcon1: freezed == tagsIcon1
          ? _value.tagsIcon1
          : tagsIcon1 // ignore: cast_nullable_to_non_nullable
              as String?,
      tagsIcon2: freezed == tagsIcon2
          ? _value.tagsIcon2
          : tagsIcon2 // ignore: cast_nullable_to_non_nullable
              as String?,
      tagsIcon3: freezed == tagsIcon3
          ? _value.tagsIcon3
          : tagsIcon3 // ignore: cast_nullable_to_non_nullable
              as String?,
      tagsIcon4: freezed == tagsIcon4
          ? _value.tagsIcon4
          : tagsIcon4 // ignore: cast_nullable_to_non_nullable
              as String?,
      tagsIcon5: freezed == tagsIcon5
          ? _value.tagsIcon5
          : tagsIcon5 // ignore: cast_nullable_to_non_nullable
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
  const _$_Tags(
      {@JsonKey(name: "tags_id") this.tagsId,
      @JsonKey(name: "tags_name") this.tagsName,
      @JsonKey(name: "tags_icon_1") this.tagsIcon1,
      @JsonKey(name: "tags_icon_2") this.tagsIcon2,
      @JsonKey(name: "tags_icon_3") this.tagsIcon3,
      @JsonKey(name: "tags_icon_4") this.tagsIcon4,
      @JsonKey(name: "tags_icon_5") this.tagsIcon5,
      @JsonKey(name: "tags_tipe") this.tagsTipe});

  factory _$_Tags.fromJson(Map<String, dynamic> json) => _$$_TagsFromJson(json);

  @override
  @JsonKey(name: "tags_id")
  final int? tagsId;
  @override
  @JsonKey(name: "tags_name")
  final String? tagsName;
  @override
  @JsonKey(name: "tags_icon_1")
  final String? tagsIcon1;
  @override
  @JsonKey(name: "tags_icon_2")
  final String? tagsIcon2;
  @override
  @JsonKey(name: "tags_icon_3")
  final String? tagsIcon3;
  @override
  @JsonKey(name: "tags_icon_4")
  final String? tagsIcon4;
  @override
  @JsonKey(name: "tags_icon_5")
  final String? tagsIcon5;
  @override
  @JsonKey(name: "tags_tipe")
  final String? tagsTipe;

  @override
  String toString() {
    return 'Tags(tagsId: $tagsId, tagsName: $tagsName, tagsIcon1: $tagsIcon1, tagsIcon2: $tagsIcon2, tagsIcon3: $tagsIcon3, tagsIcon4: $tagsIcon4, tagsIcon5: $tagsIcon5, tagsTipe: $tagsTipe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tags &&
            (identical(other.tagsId, tagsId) || other.tagsId == tagsId) &&
            (identical(other.tagsName, tagsName) ||
                other.tagsName == tagsName) &&
            (identical(other.tagsIcon1, tagsIcon1) ||
                other.tagsIcon1 == tagsIcon1) &&
            (identical(other.tagsIcon2, tagsIcon2) ||
                other.tagsIcon2 == tagsIcon2) &&
            (identical(other.tagsIcon3, tagsIcon3) ||
                other.tagsIcon3 == tagsIcon3) &&
            (identical(other.tagsIcon4, tagsIcon4) ||
                other.tagsIcon4 == tagsIcon4) &&
            (identical(other.tagsIcon5, tagsIcon5) ||
                other.tagsIcon5 == tagsIcon5) &&
            (identical(other.tagsTipe, tagsTipe) ||
                other.tagsTipe == tagsTipe));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tagsId, tagsName, tagsIcon1,
      tagsIcon2, tagsIcon3, tagsIcon4, tagsIcon5, tagsTipe);

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
      {@JsonKey(name: "tags_id") final int? tagsId,
      @JsonKey(name: "tags_name") final String? tagsName,
      @JsonKey(name: "tags_icon_1") final String? tagsIcon1,
      @JsonKey(name: "tags_icon_2") final String? tagsIcon2,
      @JsonKey(name: "tags_icon_3") final String? tagsIcon3,
      @JsonKey(name: "tags_icon_4") final String? tagsIcon4,
      @JsonKey(name: "tags_icon_5") final String? tagsIcon5,
      @JsonKey(name: "tags_tipe") final String? tagsTipe}) = _$_Tags;

  factory _Tags.fromJson(Map<String, dynamic> json) = _$_Tags.fromJson;

  @override
  @JsonKey(name: "tags_id")
  int? get tagsId;
  @override
  @JsonKey(name: "tags_name")
  String? get tagsName;
  @override
  @JsonKey(name: "tags_icon_1")
  String? get tagsIcon1;
  @override
  @JsonKey(name: "tags_icon_2")
  String? get tagsIcon2;
  @override
  @JsonKey(name: "tags_icon_3")
  String? get tagsIcon3;
  @override
  @JsonKey(name: "tags_icon_4")
  String? get tagsIcon4;
  @override
  @JsonKey(name: "tags_icon_5")
  String? get tagsIcon5;
  @override
  @JsonKey(name: "tags_tipe")
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
