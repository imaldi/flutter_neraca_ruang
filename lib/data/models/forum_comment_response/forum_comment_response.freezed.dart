// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forum_comment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForumCommentResponse _$ForumCommentResponseFromJson(Map<String, dynamic> json) {
  return _ForumCommentResponse.fromJson(json);
}

/// @nodoc
mixin _$ForumCommentResponse {
  String? get message => throw _privateConstructorUsedError;
  ForumCommentData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForumCommentResponseCopyWith<ForumCommentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForumCommentResponseCopyWith<$Res> {
  factory $ForumCommentResponseCopyWith(ForumCommentResponse value,
          $Res Function(ForumCommentResponse) then) =
      _$ForumCommentResponseCopyWithImpl<$Res, ForumCommentResponse>;
  @useResult
  $Res call({String? message, ForumCommentData? data});

  $ForumCommentDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ForumCommentResponseCopyWithImpl<$Res,
        $Val extends ForumCommentResponse>
    implements $ForumCommentResponseCopyWith<$Res> {
  _$ForumCommentResponseCopyWithImpl(this._value, this._then);

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
              as ForumCommentData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ForumCommentDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ForumCommentDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ForumCommentResponseCopyWith<$Res>
    implements $ForumCommentResponseCopyWith<$Res> {
  factory _$$_ForumCommentResponseCopyWith(_$_ForumCommentResponse value,
          $Res Function(_$_ForumCommentResponse) then) =
      __$$_ForumCommentResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, ForumCommentData? data});

  @override
  $ForumCommentDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_ForumCommentResponseCopyWithImpl<$Res>
    extends _$ForumCommentResponseCopyWithImpl<$Res, _$_ForumCommentResponse>
    implements _$$_ForumCommentResponseCopyWith<$Res> {
  __$$_ForumCommentResponseCopyWithImpl(_$_ForumCommentResponse _value,
      $Res Function(_$_ForumCommentResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ForumCommentResponse(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ForumCommentData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForumCommentResponse implements _ForumCommentResponse {
  const _$_ForumCommentResponse({this.message, this.data});

  factory _$_ForumCommentResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ForumCommentResponseFromJson(json);

  @override
  final String? message;
  @override
  final ForumCommentData? data;

  @override
  String toString() {
    return 'ForumCommentResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForumCommentResponse &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForumCommentResponseCopyWith<_$_ForumCommentResponse> get copyWith =>
      __$$_ForumCommentResponseCopyWithImpl<_$_ForumCommentResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForumCommentResponseToJson(
      this,
    );
  }
}

abstract class _ForumCommentResponse implements ForumCommentResponse {
  const factory _ForumCommentResponse(
      {final String? message,
      final ForumCommentData? data}) = _$_ForumCommentResponse;

  factory _ForumCommentResponse.fromJson(Map<String, dynamic> json) =
      _$_ForumCommentResponse.fromJson;

  @override
  String? get message;
  @override
  ForumCommentData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ForumCommentResponseCopyWith<_$_ForumCommentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ForumCommentData _$ForumCommentDataFromJson(Map<String, dynamic> json) {
  return _ForumCommentData.fromJson(json);
}

/// @nodoc
mixin _$ForumCommentData {
  @JsonKey(name: "current_page")
  int? get currentPage => throw _privateConstructorUsedError;
  List<ForumCommentModel>? get data => throw _privateConstructorUsedError;
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
  String? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "prev_page_url")
  String? get prevPageUrl => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForumCommentDataCopyWith<ForumCommentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForumCommentDataCopyWith<$Res> {
  factory $ForumCommentDataCopyWith(
          ForumCommentData value, $Res Function(ForumCommentData) then) =
      _$ForumCommentDataCopyWithImpl<$Res, ForumCommentData>;
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      List<ForumCommentModel>? data,
      @JsonKey(name: "first_page_url") String? firstPageUrl,
      int? from,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "last_page_url") String? lastPageUrl,
      List<Link>? links,
      @JsonKey(name: "next_page_url") String? nextPageUrl,
      String? path,
      @JsonKey(name: "per_page") String? perPage,
      @JsonKey(name: "prev_page_url") String? prevPageUrl,
      int? to,
      int? total});
}

/// @nodoc
class _$ForumCommentDataCopyWithImpl<$Res, $Val extends ForumCommentData>
    implements $ForumCommentDataCopyWith<$Res> {
  _$ForumCommentDataCopyWithImpl(this._value, this._then);

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
              as List<ForumCommentModel>?,
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
              as String?,
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
abstract class _$$_ForumCommentDataCopyWith<$Res>
    implements $ForumCommentDataCopyWith<$Res> {
  factory _$$_ForumCommentDataCopyWith(
          _$_ForumCommentData value, $Res Function(_$_ForumCommentData) then) =
      __$$_ForumCommentDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      List<ForumCommentModel>? data,
      @JsonKey(name: "first_page_url") String? firstPageUrl,
      int? from,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "last_page_url") String? lastPageUrl,
      List<Link>? links,
      @JsonKey(name: "next_page_url") String? nextPageUrl,
      String? path,
      @JsonKey(name: "per_page") String? perPage,
      @JsonKey(name: "prev_page_url") String? prevPageUrl,
      int? to,
      int? total});
}

/// @nodoc
class __$$_ForumCommentDataCopyWithImpl<$Res>
    extends _$ForumCommentDataCopyWithImpl<$Res, _$_ForumCommentData>
    implements _$$_ForumCommentDataCopyWith<$Res> {
  __$$_ForumCommentDataCopyWithImpl(
      _$_ForumCommentData _value, $Res Function(_$_ForumCommentData) _then)
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
    return _then(_$_ForumCommentData(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ForumCommentModel>?,
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
              as String?,
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
class _$_ForumCommentData implements _ForumCommentData {
  const _$_ForumCommentData(
      {@JsonKey(name: "current_page") this.currentPage,
      final List<ForumCommentModel>? data,
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

  factory _$_ForumCommentData.fromJson(Map<String, dynamic> json) =>
      _$$_ForumCommentDataFromJson(json);

  @override
  @JsonKey(name: "current_page")
  final int? currentPage;
  final List<ForumCommentModel>? _data;
  @override
  List<ForumCommentModel>? get data {
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
  final String? perPage;
  @override
  @JsonKey(name: "prev_page_url")
  final String? prevPageUrl;
  @override
  final int? to;
  @override
  final int? total;

  @override
  String toString() {
    return 'ForumCommentData(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForumCommentData &&
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
  _$$_ForumCommentDataCopyWith<_$_ForumCommentData> get copyWith =>
      __$$_ForumCommentDataCopyWithImpl<_$_ForumCommentData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForumCommentDataToJson(
      this,
    );
  }
}

abstract class _ForumCommentData implements ForumCommentData {
  const factory _ForumCommentData(
      {@JsonKey(name: "current_page") final int? currentPage,
      final List<ForumCommentModel>? data,
      @JsonKey(name: "first_page_url") final String? firstPageUrl,
      final int? from,
      @JsonKey(name: "last_page") final int? lastPage,
      @JsonKey(name: "last_page_url") final String? lastPageUrl,
      final List<Link>? links,
      @JsonKey(name: "next_page_url") final String? nextPageUrl,
      final String? path,
      @JsonKey(name: "per_page") final String? perPage,
      @JsonKey(name: "prev_page_url") final String? prevPageUrl,
      final int? to,
      final int? total}) = _$_ForumCommentData;

  factory _ForumCommentData.fromJson(Map<String, dynamic> json) =
      _$_ForumCommentData.fromJson;

  @override
  @JsonKey(name: "current_page")
  int? get currentPage;
  @override
  List<ForumCommentModel>? get data;
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
  String? get perPage;
  @override
  @JsonKey(name: "prev_page_url")
  String? get prevPageUrl;
  @override
  int? get to;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$_ForumCommentDataCopyWith<_$_ForumCommentData> get copyWith =>
      throw _privateConstructorUsedError;
}

ForumCommentModel _$ForumCommentModelFromJson(Map<String, dynamic> json) {
  return _ForumCommentModel.fromJson(json);
}

/// @nodoc
mixin _$ForumCommentModel {
  @JsonKey(name: "reply_id")
  int? get replyId => throw _privateConstructorUsedError;
  @JsonKey(name: "reply_content")
  String? get replyContent => throw _privateConstructorUsedError;
  @JsonKey(name: "thread_id")
  int? get threadId => throw _privateConstructorUsedError;
  @JsonKey(name: "reply_at")
  DateTime? get replyAt => throw _privateConstructorUsedError;
  @JsonKey(name: "reply_by")
  String? get replyBy => throw _privateConstructorUsedError;
  @JsonKey(name: "member_id")
  int? get memberId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  String? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "udpated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_by")
  String? get updatedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "banned_at")
  DateTime? get bannedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "banned_by")
  String? get bannedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "unbanned_at")
  DateTime? get unbannedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "unbanned_by")
  String? get unbannedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "is_banned")
  bool? get isBanned => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForumCommentModelCopyWith<ForumCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForumCommentModelCopyWith<$Res> {
  factory $ForumCommentModelCopyWith(
          ForumCommentModel value, $Res Function(ForumCommentModel) then) =
      _$ForumCommentModelCopyWithImpl<$Res, ForumCommentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "reply_id") int? replyId,
      @JsonKey(name: "reply_content") String? replyContent,
      @JsonKey(name: "thread_id") int? threadId,
      @JsonKey(name: "reply_at") DateTime? replyAt,
      @JsonKey(name: "reply_by") String? replyBy,
      @JsonKey(name: "member_id") int? memberId,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "udpated_at") DateTime? updatedAt,
      @JsonKey(name: "updated_by") String? updatedBy,
      @JsonKey(name: "banned_at") DateTime? bannedAt,
      @JsonKey(name: "banned_by") String? bannedBy,
      @JsonKey(name: "unbanned_at") DateTime? unbannedAt,
      @JsonKey(name: "unbanned_by") String? unbannedBy,
      @JsonKey(name: "is_banned") bool? isBanned});
}

/// @nodoc
class _$ForumCommentModelCopyWithImpl<$Res, $Val extends ForumCommentModel>
    implements $ForumCommentModelCopyWith<$Res> {
  _$ForumCommentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replyId = freezed,
    Object? replyContent = freezed,
    Object? threadId = freezed,
    Object? replyAt = freezed,
    Object? replyBy = freezed,
    Object? memberId = freezed,
    Object? createdAt = freezed,
    Object? createdBy = freezed,
    Object? updatedAt = freezed,
    Object? updatedBy = freezed,
    Object? bannedAt = freezed,
    Object? bannedBy = freezed,
    Object? unbannedAt = freezed,
    Object? unbannedBy = freezed,
    Object? isBanned = freezed,
  }) {
    return _then(_value.copyWith(
      replyId: freezed == replyId
          ? _value.replyId
          : replyId // ignore: cast_nullable_to_non_nullable
              as int?,
      replyContent: freezed == replyContent
          ? _value.replyContent
          : replyContent // ignore: cast_nullable_to_non_nullable
              as String?,
      threadId: freezed == threadId
          ? _value.threadId
          : threadId // ignore: cast_nullable_to_non_nullable
              as int?,
      replyAt: freezed == replyAt
          ? _value.replyAt
          : replyAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      replyBy: freezed == replyBy
          ? _value.replyBy
          : replyBy // ignore: cast_nullable_to_non_nullable
              as String?,
      memberId: freezed == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      bannedAt: freezed == bannedAt
          ? _value.bannedAt
          : bannedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bannedBy: freezed == bannedBy
          ? _value.bannedBy
          : bannedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      unbannedAt: freezed == unbannedAt
          ? _value.unbannedAt
          : unbannedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      unbannedBy: freezed == unbannedBy
          ? _value.unbannedBy
          : unbannedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      isBanned: freezed == isBanned
          ? _value.isBanned
          : isBanned // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ForumCommentModelCopyWith<$Res>
    implements $ForumCommentModelCopyWith<$Res> {
  factory _$$_ForumCommentModelCopyWith(_$_ForumCommentModel value,
          $Res Function(_$_ForumCommentModel) then) =
      __$$_ForumCommentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "reply_id") int? replyId,
      @JsonKey(name: "reply_content") String? replyContent,
      @JsonKey(name: "thread_id") int? threadId,
      @JsonKey(name: "reply_at") DateTime? replyAt,
      @JsonKey(name: "reply_by") String? replyBy,
      @JsonKey(name: "member_id") int? memberId,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "udpated_at") DateTime? updatedAt,
      @JsonKey(name: "updated_by") String? updatedBy,
      @JsonKey(name: "banned_at") DateTime? bannedAt,
      @JsonKey(name: "banned_by") String? bannedBy,
      @JsonKey(name: "unbanned_at") DateTime? unbannedAt,
      @JsonKey(name: "unbanned_by") String? unbannedBy,
      @JsonKey(name: "is_banned") bool? isBanned});
}

/// @nodoc
class __$$_ForumCommentModelCopyWithImpl<$Res>
    extends _$ForumCommentModelCopyWithImpl<$Res, _$_ForumCommentModel>
    implements _$$_ForumCommentModelCopyWith<$Res> {
  __$$_ForumCommentModelCopyWithImpl(
      _$_ForumCommentModel _value, $Res Function(_$_ForumCommentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replyId = freezed,
    Object? replyContent = freezed,
    Object? threadId = freezed,
    Object? replyAt = freezed,
    Object? replyBy = freezed,
    Object? memberId = freezed,
    Object? createdAt = freezed,
    Object? createdBy = freezed,
    Object? updatedAt = freezed,
    Object? updatedBy = freezed,
    Object? bannedAt = freezed,
    Object? bannedBy = freezed,
    Object? unbannedAt = freezed,
    Object? unbannedBy = freezed,
    Object? isBanned = freezed,
  }) {
    return _then(_$_ForumCommentModel(
      replyId: freezed == replyId
          ? _value.replyId
          : replyId // ignore: cast_nullable_to_non_nullable
              as int?,
      replyContent: freezed == replyContent
          ? _value.replyContent
          : replyContent // ignore: cast_nullable_to_non_nullable
              as String?,
      threadId: freezed == threadId
          ? _value.threadId
          : threadId // ignore: cast_nullable_to_non_nullable
              as int?,
      replyAt: freezed == replyAt
          ? _value.replyAt
          : replyAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      replyBy: freezed == replyBy
          ? _value.replyBy
          : replyBy // ignore: cast_nullable_to_non_nullable
              as String?,
      memberId: freezed == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      bannedAt: freezed == bannedAt
          ? _value.bannedAt
          : bannedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bannedBy: freezed == bannedBy
          ? _value.bannedBy
          : bannedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      unbannedAt: freezed == unbannedAt
          ? _value.unbannedAt
          : unbannedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      unbannedBy: freezed == unbannedBy
          ? _value.unbannedBy
          : unbannedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      isBanned: freezed == isBanned
          ? _value.isBanned
          : isBanned // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForumCommentModel implements _ForumCommentModel {
  const _$_ForumCommentModel(
      {@JsonKey(name: "reply_id") this.replyId,
      @JsonKey(name: "reply_content") this.replyContent,
      @JsonKey(name: "thread_id") this.threadId,
      @JsonKey(name: "reply_at") this.replyAt,
      @JsonKey(name: "reply_by") this.replyBy,
      @JsonKey(name: "member_id") this.memberId,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "created_by") this.createdBy,
      @JsonKey(name: "udpated_at") this.updatedAt,
      @JsonKey(name: "updated_by") this.updatedBy,
      @JsonKey(name: "banned_at") this.bannedAt,
      @JsonKey(name: "banned_by") this.bannedBy,
      @JsonKey(name: "unbanned_at") this.unbannedAt,
      @JsonKey(name: "unbanned_by") this.unbannedBy,
      @JsonKey(name: "is_banned") this.isBanned});

  factory _$_ForumCommentModel.fromJson(Map<String, dynamic> json) =>
      _$$_ForumCommentModelFromJson(json);

  @override
  @JsonKey(name: "reply_id")
  final int? replyId;
  @override
  @JsonKey(name: "reply_content")
  final String? replyContent;
  @override
  @JsonKey(name: "thread_id")
  final int? threadId;
  @override
  @JsonKey(name: "reply_at")
  final DateTime? replyAt;
  @override
  @JsonKey(name: "reply_by")
  final String? replyBy;
  @override
  @JsonKey(name: "member_id")
  final int? memberId;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "created_by")
  final String? createdBy;
  @override
  @JsonKey(name: "udpated_at")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "updated_by")
  final String? updatedBy;
  @override
  @JsonKey(name: "banned_at")
  final DateTime? bannedAt;
  @override
  @JsonKey(name: "banned_by")
  final String? bannedBy;
  @override
  @JsonKey(name: "unbanned_at")
  final DateTime? unbannedAt;
  @override
  @JsonKey(name: "unbanned_by")
  final String? unbannedBy;
  @override
  @JsonKey(name: "is_banned")
  final bool? isBanned;

  @override
  String toString() {
    return 'ForumCommentModel(replyId: $replyId, replyContent: $replyContent, threadId: $threadId, replyAt: $replyAt, replyBy: $replyBy, memberId: $memberId, createdAt: $createdAt, createdBy: $createdBy, updatedAt: $updatedAt, updatedBy: $updatedBy, bannedAt: $bannedAt, bannedBy: $bannedBy, unbannedAt: $unbannedAt, unbannedBy: $unbannedBy, isBanned: $isBanned)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForumCommentModel &&
            (identical(other.replyId, replyId) || other.replyId == replyId) &&
            (identical(other.replyContent, replyContent) ||
                other.replyContent == replyContent) &&
            (identical(other.threadId, threadId) ||
                other.threadId == threadId) &&
            (identical(other.replyAt, replyAt) || other.replyAt == replyAt) &&
            (identical(other.replyBy, replyBy) || other.replyBy == replyBy) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
            (identical(other.bannedAt, bannedAt) ||
                other.bannedAt == bannedAt) &&
            (identical(other.bannedBy, bannedBy) ||
                other.bannedBy == bannedBy) &&
            (identical(other.unbannedAt, unbannedAt) ||
                other.unbannedAt == unbannedAt) &&
            (identical(other.unbannedBy, unbannedBy) ||
                other.unbannedBy == unbannedBy) &&
            (identical(other.isBanned, isBanned) ||
                other.isBanned == isBanned));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      replyId,
      replyContent,
      threadId,
      replyAt,
      replyBy,
      memberId,
      createdAt,
      createdBy,
      updatedAt,
      updatedBy,
      bannedAt,
      bannedBy,
      unbannedAt,
      unbannedBy,
      isBanned);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForumCommentModelCopyWith<_$_ForumCommentModel> get copyWith =>
      __$$_ForumCommentModelCopyWithImpl<_$_ForumCommentModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForumCommentModelToJson(
      this,
    );
  }
}

abstract class _ForumCommentModel implements ForumCommentModel {
  const factory _ForumCommentModel(
      {@JsonKey(name: "reply_id") final int? replyId,
      @JsonKey(name: "reply_content") final String? replyContent,
      @JsonKey(name: "thread_id") final int? threadId,
      @JsonKey(name: "reply_at") final DateTime? replyAt,
      @JsonKey(name: "reply_by") final String? replyBy,
      @JsonKey(name: "member_id") final int? memberId,
      @JsonKey(name: "created_at") final DateTime? createdAt,
      @JsonKey(name: "created_by") final String? createdBy,
      @JsonKey(name: "udpated_at") final DateTime? updatedAt,
      @JsonKey(name: "updated_by") final String? updatedBy,
      @JsonKey(name: "banned_at") final DateTime? bannedAt,
      @JsonKey(name: "banned_by") final String? bannedBy,
      @JsonKey(name: "unbanned_at") final DateTime? unbannedAt,
      @JsonKey(name: "unbanned_by") final String? unbannedBy,
      @JsonKey(name: "is_banned") final bool? isBanned}) = _$_ForumCommentModel;

  factory _ForumCommentModel.fromJson(Map<String, dynamic> json) =
      _$_ForumCommentModel.fromJson;

  @override
  @JsonKey(name: "reply_id")
  int? get replyId;
  @override
  @JsonKey(name: "reply_content")
  String? get replyContent;
  @override
  @JsonKey(name: "thread_id")
  int? get threadId;
  @override
  @JsonKey(name: "reply_at")
  DateTime? get replyAt;
  @override
  @JsonKey(name: "reply_by")
  String? get replyBy;
  @override
  @JsonKey(name: "member_id")
  int? get memberId;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "created_by")
  String? get createdBy;
  @override
  @JsonKey(name: "udpated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "updated_by")
  String? get updatedBy;
  @override
  @JsonKey(name: "banned_at")
  DateTime? get bannedAt;
  @override
  @JsonKey(name: "banned_by")
  String? get bannedBy;
  @override
  @JsonKey(name: "unbanned_at")
  DateTime? get unbannedAt;
  @override
  @JsonKey(name: "unbanned_by")
  String? get unbannedBy;
  @override
  @JsonKey(name: "is_banned")
  bool? get isBanned;
  @override
  @JsonKey(ignore: true)
  _$$_ForumCommentModelCopyWith<_$_ForumCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
