// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diskusi_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiskusiResponse _$DiskusiResponseFromJson(Map<String, dynamic> json) {
  return _DiskusiResponse.fromJson(json);
}

/// @nodoc
mixin _$DiskusiResponse {
  String? get message => throw _privateConstructorUsedError;
  DiskusiData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiskusiResponseCopyWith<DiskusiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiskusiResponseCopyWith<$Res> {
  factory $DiskusiResponseCopyWith(
          DiskusiResponse value, $Res Function(DiskusiResponse) then) =
      _$DiskusiResponseCopyWithImpl<$Res, DiskusiResponse>;
  @useResult
  $Res call({String? message, DiskusiData? data});

  $DiskusiDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$DiskusiResponseCopyWithImpl<$Res, $Val extends DiskusiResponse>
    implements $DiskusiResponseCopyWith<$Res> {
  _$DiskusiResponseCopyWithImpl(this._value, this._then);

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
              as DiskusiData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DiskusiDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DiskusiDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DiskusiResponseCopyWith<$Res>
    implements $DiskusiResponseCopyWith<$Res> {
  factory _$$_DiskusiResponseCopyWith(
          _$_DiskusiResponse value, $Res Function(_$_DiskusiResponse) then) =
      __$$_DiskusiResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, DiskusiData? data});

  @override
  $DiskusiDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_DiskusiResponseCopyWithImpl<$Res>
    extends _$DiskusiResponseCopyWithImpl<$Res, _$_DiskusiResponse>
    implements _$$_DiskusiResponseCopyWith<$Res> {
  __$$_DiskusiResponseCopyWithImpl(
      _$_DiskusiResponse _value, $Res Function(_$_DiskusiResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_DiskusiResponse(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DiskusiData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiskusiResponse implements _DiskusiResponse {
  const _$_DiskusiResponse({this.message, this.data});

  factory _$_DiskusiResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DiskusiResponseFromJson(json);

  @override
  final String? message;
  @override
  final DiskusiData? data;

  @override
  String toString() {
    return 'DiskusiResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiskusiResponse &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiskusiResponseCopyWith<_$_DiskusiResponse> get copyWith =>
      __$$_DiskusiResponseCopyWithImpl<_$_DiskusiResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiskusiResponseToJson(
      this,
    );
  }
}

abstract class _DiskusiResponse implements DiskusiResponse {
  const factory _DiskusiResponse(
      {final String? message, final DiskusiData? data}) = _$_DiskusiResponse;

  factory _DiskusiResponse.fromJson(Map<String, dynamic> json) =
      _$_DiskusiResponse.fromJson;

  @override
  String? get message;
  @override
  DiskusiData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_DiskusiResponseCopyWith<_$_DiskusiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DiskusiData _$DiskusiDataFromJson(Map<String, dynamic> json) {
  return _DiskusiData.fromJson(json);
}

/// @nodoc
mixin _$DiskusiData {
  @JsonKey(name: "current_page")
  int? get currentPage => throw _privateConstructorUsedError;
  List<DiskusiModel>? get data => throw _privateConstructorUsedError;
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
  $DiskusiDataCopyWith<DiskusiData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiskusiDataCopyWith<$Res> {
  factory $DiskusiDataCopyWith(
          DiskusiData value, $Res Function(DiskusiData) then) =
      _$DiskusiDataCopyWithImpl<$Res, DiskusiData>;
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      List<DiskusiModel>? data,
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
class _$DiskusiDataCopyWithImpl<$Res, $Val extends DiskusiData>
    implements $DiskusiDataCopyWith<$Res> {
  _$DiskusiDataCopyWithImpl(this._value, this._then);

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
              as List<DiskusiModel>?,
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
abstract class _$$_DiskusiDataCopyWith<$Res>
    implements $DiskusiDataCopyWith<$Res> {
  factory _$$_DiskusiDataCopyWith(
          _$_DiskusiData value, $Res Function(_$_DiskusiData) then) =
      __$$_DiskusiDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      List<DiskusiModel>? data,
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
class __$$_DiskusiDataCopyWithImpl<$Res>
    extends _$DiskusiDataCopyWithImpl<$Res, _$_DiskusiData>
    implements _$$_DiskusiDataCopyWith<$Res> {
  __$$_DiskusiDataCopyWithImpl(
      _$_DiskusiData _value, $Res Function(_$_DiskusiData) _then)
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
    return _then(_$_DiskusiData(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DiskusiModel>?,
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
class _$_DiskusiData implements _DiskusiData {
  const _$_DiskusiData(
      {@JsonKey(name: "current_page") this.currentPage,
      final List<DiskusiModel>? data,
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

  factory _$_DiskusiData.fromJson(Map<String, dynamic> json) =>
      _$$_DiskusiDataFromJson(json);

  @override
  @JsonKey(name: "current_page")
  final int? currentPage;
  final List<DiskusiModel>? _data;
  @override
  List<DiskusiModel>? get data {
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
    return 'DiskusiData(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiskusiData &&
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
  _$$_DiskusiDataCopyWith<_$_DiskusiData> get copyWith =>
      __$$_DiskusiDataCopyWithImpl<_$_DiskusiData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiskusiDataToJson(
      this,
    );
  }
}

abstract class _DiskusiData implements DiskusiData {
  const factory _DiskusiData(
      {@JsonKey(name: "current_page") final int? currentPage,
      final List<DiskusiModel>? data,
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
      final int? total}) = _$_DiskusiData;

  factory _DiskusiData.fromJson(Map<String, dynamic> json) =
      _$_DiskusiData.fromJson;

  @override
  @JsonKey(name: "current_page")
  int? get currentPage;
  @override
  List<DiskusiModel>? get data;
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
  _$$_DiskusiDataCopyWith<_$_DiskusiData> get copyWith =>
      throw _privateConstructorUsedError;
}

DiskusiModel _$DiskusiModelFromJson(Map<String, dynamic> json) {
  return _DiskusiModel.fromJson(json);
}

/// @nodoc
mixin _$DiskusiModel {
  @JsonKey(name: "thread_id")
  int? get threadId => throw _privateConstructorUsedError;
  @JsonKey(name: "thread_subject")
  String? get threadSubject => throw _privateConstructorUsedError;
  @JsonKey(name: "thread_slug")
  String? get threadSlug => throw _privateConstructorUsedError;
  @JsonKey(name: "thread_description")
  String? get threadDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "thread_date")
  DateTime? get threadDate => throw _privateConstructorUsedError;
  @JsonKey(name: "thread_thumbnail")
  String? get threadThumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: "thread_start")
  DateTime? get threadStart => throw _privateConstructorUsedError;
  @JsonKey(name: "thread_end")
  DateTime? get threadEnd => throw _privateConstructorUsedError;
  @JsonKey(name: "moderator_id")
  int? get moderatorId => throw _privateConstructorUsedError;
  @JsonKey(name: "moderator_name")
  String? get moderatorName => throw _privateConstructorUsedError;
  @JsonKey(name: "co_moderator")
  int? get coModerator => throw _privateConstructorUsedError;
  @JsonKey(name: "co_moderator_name")
  String? get coModeratorName => throw _privateConstructorUsedError;
  @JsonKey(name: "total_read")
  int? get totalRead => throw _privateConstructorUsedError;
  @JsonKey(name: "total_like")
  int? get totalLike => throw _privateConstructorUsedError;
  @JsonKey(name: "total_komentar")
  int? get totalKomentar => throw _privateConstructorUsedError;
  @JsonKey(name: "local_like")
  bool? get localLike => throw _privateConstructorUsedError;
  @JsonKey(name: "active_at")
  DateTime? get activeAt => throw _privateConstructorUsedError;
  @JsonKey(name: "active_by")
  String? get activeBy => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  String? get createdBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiskusiModelCopyWith<DiskusiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiskusiModelCopyWith<$Res> {
  factory $DiskusiModelCopyWith(
          DiskusiModel value, $Res Function(DiskusiModel) then) =
      _$DiskusiModelCopyWithImpl<$Res, DiskusiModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "thread_id") int? threadId,
      @JsonKey(name: "thread_subject") String? threadSubject,
      @JsonKey(name: "thread_slug") String? threadSlug,
      @JsonKey(name: "thread_description") String? threadDescription,
      @JsonKey(name: "thread_date") DateTime? threadDate,
      @JsonKey(name: "thread_thumbnail") String? threadThumbnail,
      @JsonKey(name: "thread_start") DateTime? threadStart,
      @JsonKey(name: "thread_end") DateTime? threadEnd,
      @JsonKey(name: "moderator_id") int? moderatorId,
      @JsonKey(name: "moderator_name") String? moderatorName,
      @JsonKey(name: "co_moderator") int? coModerator,
      @JsonKey(name: "co_moderator_name") String? coModeratorName,
      @JsonKey(name: "total_read") int? totalRead,
      @JsonKey(name: "total_like") int? totalLike,
      @JsonKey(name: "total_komentar") int? totalKomentar,
      @JsonKey(name: "local_like") bool? localLike,
      @JsonKey(name: "active_at") DateTime? activeAt,
      @JsonKey(name: "active_by") String? activeBy,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "created_by") String? createdBy});
}

/// @nodoc
class _$DiskusiModelCopyWithImpl<$Res, $Val extends DiskusiModel>
    implements $DiskusiModelCopyWith<$Res> {
  _$DiskusiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? threadId = freezed,
    Object? threadSubject = freezed,
    Object? threadSlug = freezed,
    Object? threadDescription = freezed,
    Object? threadDate = freezed,
    Object? threadThumbnail = freezed,
    Object? threadStart = freezed,
    Object? threadEnd = freezed,
    Object? moderatorId = freezed,
    Object? moderatorName = freezed,
    Object? coModerator = freezed,
    Object? coModeratorName = freezed,
    Object? totalRead = freezed,
    Object? totalLike = freezed,
    Object? totalKomentar = freezed,
    Object? localLike = freezed,
    Object? activeAt = freezed,
    Object? activeBy = freezed,
    Object? createdAt = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_value.copyWith(
      threadId: freezed == threadId
          ? _value.threadId
          : threadId // ignore: cast_nullable_to_non_nullable
              as int?,
      threadSubject: freezed == threadSubject
          ? _value.threadSubject
          : threadSubject // ignore: cast_nullable_to_non_nullable
              as String?,
      threadSlug: freezed == threadSlug
          ? _value.threadSlug
          : threadSlug // ignore: cast_nullable_to_non_nullable
              as String?,
      threadDescription: freezed == threadDescription
          ? _value.threadDescription
          : threadDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      threadDate: freezed == threadDate
          ? _value.threadDate
          : threadDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      threadThumbnail: freezed == threadThumbnail
          ? _value.threadThumbnail
          : threadThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      threadStart: freezed == threadStart
          ? _value.threadStart
          : threadStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      threadEnd: freezed == threadEnd
          ? _value.threadEnd
          : threadEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      moderatorId: freezed == moderatorId
          ? _value.moderatorId
          : moderatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      moderatorName: freezed == moderatorName
          ? _value.moderatorName
          : moderatorName // ignore: cast_nullable_to_non_nullable
              as String?,
      coModerator: freezed == coModerator
          ? _value.coModerator
          : coModerator // ignore: cast_nullable_to_non_nullable
              as int?,
      coModeratorName: freezed == coModeratorName
          ? _value.coModeratorName
          : coModeratorName // ignore: cast_nullable_to_non_nullable
              as String?,
      totalRead: freezed == totalRead
          ? _value.totalRead
          : totalRead // ignore: cast_nullable_to_non_nullable
              as int?,
      totalLike: freezed == totalLike
          ? _value.totalLike
          : totalLike // ignore: cast_nullable_to_non_nullable
              as int?,
      totalKomentar: freezed == totalKomentar
          ? _value.totalKomentar
          : totalKomentar // ignore: cast_nullable_to_non_nullable
              as int?,
      localLike: freezed == localLike
          ? _value.localLike
          : localLike // ignore: cast_nullable_to_non_nullable
              as bool?,
      activeAt: freezed == activeAt
          ? _value.activeAt
          : activeAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      activeBy: freezed == activeBy
          ? _value.activeBy
          : activeBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DiskusiModelCopyWith<$Res>
    implements $DiskusiModelCopyWith<$Res> {
  factory _$$_DiskusiModelCopyWith(
          _$_DiskusiModel value, $Res Function(_$_DiskusiModel) then) =
      __$$_DiskusiModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "thread_id") int? threadId,
      @JsonKey(name: "thread_subject") String? threadSubject,
      @JsonKey(name: "thread_slug") String? threadSlug,
      @JsonKey(name: "thread_description") String? threadDescription,
      @JsonKey(name: "thread_date") DateTime? threadDate,
      @JsonKey(name: "thread_thumbnail") String? threadThumbnail,
      @JsonKey(name: "thread_start") DateTime? threadStart,
      @JsonKey(name: "thread_end") DateTime? threadEnd,
      @JsonKey(name: "moderator_id") int? moderatorId,
      @JsonKey(name: "moderator_name") String? moderatorName,
      @JsonKey(name: "co_moderator") int? coModerator,
      @JsonKey(name: "co_moderator_name") String? coModeratorName,
      @JsonKey(name: "total_read") int? totalRead,
      @JsonKey(name: "total_like") int? totalLike,
      @JsonKey(name: "total_komentar") int? totalKomentar,
      @JsonKey(name: "local_like") bool? localLike,
      @JsonKey(name: "active_at") DateTime? activeAt,
      @JsonKey(name: "active_by") String? activeBy,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "created_by") String? createdBy});
}

/// @nodoc
class __$$_DiskusiModelCopyWithImpl<$Res>
    extends _$DiskusiModelCopyWithImpl<$Res, _$_DiskusiModel>
    implements _$$_DiskusiModelCopyWith<$Res> {
  __$$_DiskusiModelCopyWithImpl(
      _$_DiskusiModel _value, $Res Function(_$_DiskusiModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? threadId = freezed,
    Object? threadSubject = freezed,
    Object? threadSlug = freezed,
    Object? threadDescription = freezed,
    Object? threadDate = freezed,
    Object? threadThumbnail = freezed,
    Object? threadStart = freezed,
    Object? threadEnd = freezed,
    Object? moderatorId = freezed,
    Object? moderatorName = freezed,
    Object? coModerator = freezed,
    Object? coModeratorName = freezed,
    Object? totalRead = freezed,
    Object? totalLike = freezed,
    Object? totalKomentar = freezed,
    Object? localLike = freezed,
    Object? activeAt = freezed,
    Object? activeBy = freezed,
    Object? createdAt = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_$_DiskusiModel(
      threadId: freezed == threadId
          ? _value.threadId
          : threadId // ignore: cast_nullable_to_non_nullable
              as int?,
      threadSubject: freezed == threadSubject
          ? _value.threadSubject
          : threadSubject // ignore: cast_nullable_to_non_nullable
              as String?,
      threadSlug: freezed == threadSlug
          ? _value.threadSlug
          : threadSlug // ignore: cast_nullable_to_non_nullable
              as String?,
      threadDescription: freezed == threadDescription
          ? _value.threadDescription
          : threadDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      threadDate: freezed == threadDate
          ? _value.threadDate
          : threadDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      threadThumbnail: freezed == threadThumbnail
          ? _value.threadThumbnail
          : threadThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      threadStart: freezed == threadStart
          ? _value.threadStart
          : threadStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      threadEnd: freezed == threadEnd
          ? _value.threadEnd
          : threadEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      moderatorId: freezed == moderatorId
          ? _value.moderatorId
          : moderatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      moderatorName: freezed == moderatorName
          ? _value.moderatorName
          : moderatorName // ignore: cast_nullable_to_non_nullable
              as String?,
      coModerator: freezed == coModerator
          ? _value.coModerator
          : coModerator // ignore: cast_nullable_to_non_nullable
              as int?,
      coModeratorName: freezed == coModeratorName
          ? _value.coModeratorName
          : coModeratorName // ignore: cast_nullable_to_non_nullable
              as String?,
      totalRead: freezed == totalRead
          ? _value.totalRead
          : totalRead // ignore: cast_nullable_to_non_nullable
              as int?,
      totalLike: freezed == totalLike
          ? _value.totalLike
          : totalLike // ignore: cast_nullable_to_non_nullable
              as int?,
      totalKomentar: freezed == totalKomentar
          ? _value.totalKomentar
          : totalKomentar // ignore: cast_nullable_to_non_nullable
              as int?,
      localLike: freezed == localLike
          ? _value.localLike
          : localLike // ignore: cast_nullable_to_non_nullable
              as bool?,
      activeAt: freezed == activeAt
          ? _value.activeAt
          : activeAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      activeBy: freezed == activeBy
          ? _value.activeBy
          : activeBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiskusiModel implements _DiskusiModel {
  const _$_DiskusiModel(
      {@JsonKey(name: "thread_id") this.threadId,
      @JsonKey(name: "thread_subject") this.threadSubject,
      @JsonKey(name: "thread_slug") this.threadSlug,
      @JsonKey(name: "thread_description") this.threadDescription,
      @JsonKey(name: "thread_date") this.threadDate,
      @JsonKey(name: "thread_thumbnail") this.threadThumbnail,
      @JsonKey(name: "thread_start") this.threadStart,
      @JsonKey(name: "thread_end") this.threadEnd,
      @JsonKey(name: "moderator_id") this.moderatorId,
      @JsonKey(name: "moderator_name") this.moderatorName,
      @JsonKey(name: "co_moderator") this.coModerator,
      @JsonKey(name: "co_moderator_name") this.coModeratorName,
      @JsonKey(name: "total_read") this.totalRead,
      @JsonKey(name: "total_like") this.totalLike,
      @JsonKey(name: "total_komentar") this.totalKomentar,
      @JsonKey(name: "local_like") this.localLike,
      @JsonKey(name: "active_at") this.activeAt,
      @JsonKey(name: "active_by") this.activeBy,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "created_by") this.createdBy});

  factory _$_DiskusiModel.fromJson(Map<String, dynamic> json) =>
      _$$_DiskusiModelFromJson(json);

  @override
  @JsonKey(name: "thread_id")
  final int? threadId;
  @override
  @JsonKey(name: "thread_subject")
  final String? threadSubject;
  @override
  @JsonKey(name: "thread_slug")
  final String? threadSlug;
  @override
  @JsonKey(name: "thread_description")
  final String? threadDescription;
  @override
  @JsonKey(name: "thread_date")
  final DateTime? threadDate;
  @override
  @JsonKey(name: "thread_thumbnail")
  final String? threadThumbnail;
  @override
  @JsonKey(name: "thread_start")
  final DateTime? threadStart;
  @override
  @JsonKey(name: "thread_end")
  final DateTime? threadEnd;
  @override
  @JsonKey(name: "moderator_id")
  final int? moderatorId;
  @override
  @JsonKey(name: "moderator_name")
  final String? moderatorName;
  @override
  @JsonKey(name: "co_moderator")
  final int? coModerator;
  @override
  @JsonKey(name: "co_moderator_name")
  final String? coModeratorName;
  @override
  @JsonKey(name: "total_read")
  final int? totalRead;
  @override
  @JsonKey(name: "total_like")
  final int? totalLike;
  @override
  @JsonKey(name: "total_komentar")
  final int? totalKomentar;
  @override
  @JsonKey(name: "local_like")
  final bool? localLike;
  @override
  @JsonKey(name: "active_at")
  final DateTime? activeAt;
  @override
  @JsonKey(name: "active_by")
  final String? activeBy;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "created_by")
  final String? createdBy;

  @override
  String toString() {
    return 'DiskusiModel(threadId: $threadId, threadSubject: $threadSubject, threadSlug: $threadSlug, threadDescription: $threadDescription, threadDate: $threadDate, threadThumbnail: $threadThumbnail, threadStart: $threadStart, threadEnd: $threadEnd, moderatorId: $moderatorId, moderatorName: $moderatorName, coModerator: $coModerator, coModeratorName: $coModeratorName, totalRead: $totalRead, totalLike: $totalLike, totalKomentar: $totalKomentar, localLike: $localLike, activeAt: $activeAt, activeBy: $activeBy, createdAt: $createdAt, createdBy: $createdBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiskusiModel &&
            (identical(other.threadId, threadId) ||
                other.threadId == threadId) &&
            (identical(other.threadSubject, threadSubject) ||
                other.threadSubject == threadSubject) &&
            (identical(other.threadSlug, threadSlug) ||
                other.threadSlug == threadSlug) &&
            (identical(other.threadDescription, threadDescription) ||
                other.threadDescription == threadDescription) &&
            (identical(other.threadDate, threadDate) ||
                other.threadDate == threadDate) &&
            (identical(other.threadThumbnail, threadThumbnail) ||
                other.threadThumbnail == threadThumbnail) &&
            (identical(other.threadStart, threadStart) ||
                other.threadStart == threadStart) &&
            (identical(other.threadEnd, threadEnd) ||
                other.threadEnd == threadEnd) &&
            (identical(other.moderatorId, moderatorId) ||
                other.moderatorId == moderatorId) &&
            (identical(other.moderatorName, moderatorName) ||
                other.moderatorName == moderatorName) &&
            (identical(other.coModerator, coModerator) ||
                other.coModerator == coModerator) &&
            (identical(other.coModeratorName, coModeratorName) ||
                other.coModeratorName == coModeratorName) &&
            (identical(other.totalRead, totalRead) ||
                other.totalRead == totalRead) &&
            (identical(other.totalLike, totalLike) ||
                other.totalLike == totalLike) &&
            (identical(other.totalKomentar, totalKomentar) ||
                other.totalKomentar == totalKomentar) &&
            (identical(other.localLike, localLike) ||
                other.localLike == localLike) &&
            (identical(other.activeAt, activeAt) ||
                other.activeAt == activeAt) &&
            (identical(other.activeBy, activeBy) ||
                other.activeBy == activeBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        threadId,
        threadSubject,
        threadSlug,
        threadDescription,
        threadDate,
        threadThumbnail,
        threadStart,
        threadEnd,
        moderatorId,
        moderatorName,
        coModerator,
        coModeratorName,
        totalRead,
        totalLike,
        totalKomentar,
        localLike,
        activeAt,
        activeBy,
        createdAt,
        createdBy
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiskusiModelCopyWith<_$_DiskusiModel> get copyWith =>
      __$$_DiskusiModelCopyWithImpl<_$_DiskusiModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiskusiModelToJson(
      this,
    );
  }
}

abstract class _DiskusiModel implements DiskusiModel {
  const factory _DiskusiModel(
      {@JsonKey(name: "thread_id") final int? threadId,
      @JsonKey(name: "thread_subject") final String? threadSubject,
      @JsonKey(name: "thread_slug") final String? threadSlug,
      @JsonKey(name: "thread_description") final String? threadDescription,
      @JsonKey(name: "thread_date") final DateTime? threadDate,
      @JsonKey(name: "thread_thumbnail") final String? threadThumbnail,
      @JsonKey(name: "thread_start") final DateTime? threadStart,
      @JsonKey(name: "thread_end") final DateTime? threadEnd,
      @JsonKey(name: "moderator_id") final int? moderatorId,
      @JsonKey(name: "moderator_name") final String? moderatorName,
      @JsonKey(name: "co_moderator") final int? coModerator,
      @JsonKey(name: "co_moderator_name") final String? coModeratorName,
      @JsonKey(name: "total_read") final int? totalRead,
      @JsonKey(name: "total_like") final int? totalLike,
      @JsonKey(name: "total_komentar") final int? totalKomentar,
      @JsonKey(name: "local_like") final bool? localLike,
      @JsonKey(name: "active_at") final DateTime? activeAt,
      @JsonKey(name: "active_by") final String? activeBy,
      @JsonKey(name: "created_at") final DateTime? createdAt,
      @JsonKey(name: "created_by") final String? createdBy}) = _$_DiskusiModel;

  factory _DiskusiModel.fromJson(Map<String, dynamic> json) =
      _$_DiskusiModel.fromJson;

  @override
  @JsonKey(name: "thread_id")
  int? get threadId;
  @override
  @JsonKey(name: "thread_subject")
  String? get threadSubject;
  @override
  @JsonKey(name: "thread_slug")
  String? get threadSlug;
  @override
  @JsonKey(name: "thread_description")
  String? get threadDescription;
  @override
  @JsonKey(name: "thread_date")
  DateTime? get threadDate;
  @override
  @JsonKey(name: "thread_thumbnail")
  String? get threadThumbnail;
  @override
  @JsonKey(name: "thread_start")
  DateTime? get threadStart;
  @override
  @JsonKey(name: "thread_end")
  DateTime? get threadEnd;
  @override
  @JsonKey(name: "moderator_id")
  int? get moderatorId;
  @override
  @JsonKey(name: "moderator_name")
  String? get moderatorName;
  @override
  @JsonKey(name: "co_moderator")
  int? get coModerator;
  @override
  @JsonKey(name: "co_moderator_name")
  String? get coModeratorName;
  @override
  @JsonKey(name: "total_read")
  int? get totalRead;
  @override
  @JsonKey(name: "total_like")
  int? get totalLike;
  @override
  @JsonKey(name: "total_komentar")
  int? get totalKomentar;
  @override
  @JsonKey(name: "local_like")
  bool? get localLike;
  @override
  @JsonKey(name: "active_at")
  DateTime? get activeAt;
  @override
  @JsonKey(name: "active_by")
  String? get activeBy;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "created_by")
  String? get createdBy;
  @override
  @JsonKey(ignore: true)
  _$$_DiskusiModelCopyWith<_$_DiskusiModel> get copyWith =>
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
