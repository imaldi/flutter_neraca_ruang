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
  AdsenseData? get data => throw _privateConstructorUsedError;

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
  $Res call({String? message, AdsenseData? data});

  $AdsenseDataCopyWith<$Res>? get data;
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
              as AdsenseData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AdsenseDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AdsenseDataCopyWith<$Res>(_value.data!, (value) {
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
  $Res call({String? message, AdsenseData? data});

  @override
  $AdsenseDataCopyWith<$Res>? get data;
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
              as AdsenseData?,
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
  final AdsenseData? data;

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
  const factory _AdsenseResponse(
      {final String? message, final AdsenseData? data}) = _$_AdsenseResponse;

  factory _AdsenseResponse.fromJson(Map<String, dynamic> json) =
      _$_AdsenseResponse.fromJson;

  @override
  String? get message;
  @override
  AdsenseData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_AdsenseResponseCopyWith<_$_AdsenseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

AdsenseData _$AdsenseDataFromJson(Map<String, dynamic> json) {
  return _AdsenseData.fromJson(json);
}

/// @nodoc
mixin _$AdsenseData {
  @JsonKey(name: "current_page")
  int? get currentPage => throw _privateConstructorUsedError;
  List<Adsense>? get data => throw _privateConstructorUsedError;
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
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "prev_page_url")
  String? get prevPageUrl => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdsenseDataCopyWith<AdsenseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdsenseDataCopyWith<$Res> {
  factory $AdsenseDataCopyWith(
          AdsenseData value, $Res Function(AdsenseData) then) =
      _$AdsenseDataCopyWithImpl<$Res, AdsenseData>;
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      List<Adsense>? data,
      @JsonKey(name: "first_page_url") String? firstPageUrl,
      int? from,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "last_page_url") String? lastPageUrl,
      List<Link>? links,
      @JsonKey(name: "next_page_url") String? nextPageUrl,
      String? path,
      int? perPage,
      @JsonKey(name: "prev_page_url") String? prevPageUrl,
      int? to,
      int? total});
}

/// @nodoc
class _$AdsenseDataCopyWithImpl<$Res, $Val extends AdsenseData>
    implements $AdsenseDataCopyWith<$Res> {
  _$AdsenseDataCopyWithImpl(this._value, this._then);

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
              as List<Adsense>?,
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
abstract class _$$_AdsenseDataCopyWith<$Res>
    implements $AdsenseDataCopyWith<$Res> {
  factory _$$_AdsenseDataCopyWith(
          _$_AdsenseData value, $Res Function(_$_AdsenseData) then) =
      __$$_AdsenseDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      List<Adsense>? data,
      @JsonKey(name: "first_page_url") String? firstPageUrl,
      int? from,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "last_page_url") String? lastPageUrl,
      List<Link>? links,
      @JsonKey(name: "next_page_url") String? nextPageUrl,
      String? path,
      int? perPage,
      @JsonKey(name: "prev_page_url") String? prevPageUrl,
      int? to,
      int? total});
}

/// @nodoc
class __$$_AdsenseDataCopyWithImpl<$Res>
    extends _$AdsenseDataCopyWithImpl<$Res, _$_AdsenseData>
    implements _$$_AdsenseDataCopyWith<$Res> {
  __$$_AdsenseDataCopyWithImpl(
      _$_AdsenseData _value, $Res Function(_$_AdsenseData) _then)
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
    return _then(_$_AdsenseData(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Adsense>?,
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
class _$_AdsenseData implements _AdsenseData {
  const _$_AdsenseData(
      {@JsonKey(name: "current_page") this.currentPage,
      final List<Adsense>? data,
      @JsonKey(name: "first_page_url") this.firstPageUrl,
      this.from,
      @JsonKey(name: "last_page") this.lastPage,
      @JsonKey(name: "last_page_url") this.lastPageUrl,
      final List<Link>? links,
      @JsonKey(name: "next_page_url") this.nextPageUrl,
      this.path,
      this.perPage,
      @JsonKey(name: "prev_page_url") this.prevPageUrl,
      this.to,
      this.total})
      : _data = data,
        _links = links;

  factory _$_AdsenseData.fromJson(Map<String, dynamic> json) =>
      _$$_AdsenseDataFromJson(json);

  @override
  @JsonKey(name: "current_page")
  final int? currentPage;
  final List<Adsense>? _data;
  @override
  List<Adsense>? get data {
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
    return 'AdsenseData(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdsenseData &&
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
  _$$_AdsenseDataCopyWith<_$_AdsenseData> get copyWith =>
      __$$_AdsenseDataCopyWithImpl<_$_AdsenseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdsenseDataToJson(
      this,
    );
  }
}

abstract class _AdsenseData implements AdsenseData {
  const factory _AdsenseData(
      {@JsonKey(name: "current_page") final int? currentPage,
      final List<Adsense>? data,
      @JsonKey(name: "first_page_url") final String? firstPageUrl,
      final int? from,
      @JsonKey(name: "last_page") final int? lastPage,
      @JsonKey(name: "last_page_url") final String? lastPageUrl,
      final List<Link>? links,
      @JsonKey(name: "next_page_url") final String? nextPageUrl,
      final String? path,
      final int? perPage,
      @JsonKey(name: "prev_page_url") final String? prevPageUrl,
      final int? to,
      final int? total}) = _$_AdsenseData;

  factory _AdsenseData.fromJson(Map<String, dynamic> json) =
      _$_AdsenseData.fromJson;

  @override
  @JsonKey(name: "current_page")
  int? get currentPage;
  @override
  List<Adsense>? get data;
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
  _$$_AdsenseDataCopyWith<_$_AdsenseData> get copyWith =>
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
  @JsonKey(name: "deleted_at")
  int? get statusAds => throw _privateConstructorUsedError;
  String? get deletedAt => throw _privateConstructorUsedError;
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
      @JsonKey(name: "deleted_at") int? statusAds,
      String? deletedAt,
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
    Object? statusAds = freezed,
    Object? deletedAt = freezed,
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
      statusAds: freezed == statusAds
          ? _value.statusAds
          : statusAds // ignore: cast_nullable_to_non_nullable
              as int?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
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
      @JsonKey(name: "deleted_at") int? statusAds,
      String? deletedAt,
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
    Object? statusAds = freezed,
    Object? deletedAt = freezed,
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
      statusAds: freezed == statusAds
          ? _value.statusAds
          : statusAds // ignore: cast_nullable_to_non_nullable
              as int?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
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
      @JsonKey(name: "deleted_at") this.statusAds,
      this.deletedAt,
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
  @JsonKey(name: "deleted_at")
  final int? statusAds;
  @override
  final String? deletedAt;
  @override
  @JsonKey(name: "deleted_by")
  final String? deletedBy;

  @override
  String toString() {
    return 'Adsense(id: $id, tanggalStart: $tanggalStart, tanggalEnd: $tanggalEnd, banner: $banner, statusAds: $statusAds, deletedAt: $deletedAt, deletedBy: $deletedBy)';
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
            (identical(other.statusAds, statusAds) ||
                other.statusAds == statusAds) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.deletedBy, deletedBy) ||
                other.deletedBy == deletedBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, tanggalStart, tanggalEnd,
      banner, statusAds, deletedAt, deletedBy);

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
      @JsonKey(name: "deleted_at") final int? statusAds,
      final String? deletedAt,
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
  @JsonKey(name: "deleted_at")
  int? get statusAds;
  @override
  String? get deletedAt;
  @override
  @JsonKey(name: "deleted_by")
  String? get deletedBy;
  @override
  @JsonKey(ignore: true)
  _$$_AdsenseCopyWith<_$_Adsense> get copyWith =>
      throw _privateConstructorUsedError;
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
