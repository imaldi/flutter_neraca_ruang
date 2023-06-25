// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentResponse _$CommentResponseFromJson(Map<String, dynamic> json) {
  return _CommentResponse.fromJson(json);
}

/// @nodoc
mixin _$CommentResponse {
  String? get message => throw _privateConstructorUsedError;
  List<CommentModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentResponseCopyWith<CommentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentResponseCopyWith<$Res> {
  factory $CommentResponseCopyWith(
          CommentResponse value, $Res Function(CommentResponse) then) =
      _$CommentResponseCopyWithImpl<$Res, CommentResponse>;
  @useResult
  $Res call({String? message, List<CommentModel>? data});
}

/// @nodoc
class _$CommentResponseCopyWithImpl<$Res, $Val extends CommentResponse>
    implements $CommentResponseCopyWith<$Res> {
  _$CommentResponseCopyWithImpl(this._value, this._then);

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
              as List<CommentModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommentResponseCopyWith<$Res>
    implements $CommentResponseCopyWith<$Res> {
  factory _$$_CommentResponseCopyWith(
          _$_CommentResponse value, $Res Function(_$_CommentResponse) then) =
      __$$_CommentResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, List<CommentModel>? data});
}

/// @nodoc
class __$$_CommentResponseCopyWithImpl<$Res>
    extends _$CommentResponseCopyWithImpl<$Res, _$_CommentResponse>
    implements _$$_CommentResponseCopyWith<$Res> {
  __$$_CommentResponseCopyWithImpl(
      _$_CommentResponse _value, $Res Function(_$_CommentResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_CommentResponse(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentResponse implements _CommentResponse {
  const _$_CommentResponse({this.message, final List<CommentModel>? data})
      : _data = data;

  factory _$_CommentResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CommentResponseFromJson(json);

  @override
  final String? message;
  final List<CommentModel>? _data;
  @override
  List<CommentModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CommentResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentResponse &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentResponseCopyWith<_$_CommentResponse> get copyWith =>
      __$$_CommentResponseCopyWithImpl<_$_CommentResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentResponseToJson(
      this,
    );
  }
}

abstract class _CommentResponse implements CommentResponse {
  const factory _CommentResponse(
      {final String? message,
      final List<CommentModel>? data}) = _$_CommentResponse;

  factory _CommentResponse.fromJson(Map<String, dynamic> json) =
      _$_CommentResponse.fromJson;

  @override
  String? get message;
  @override
  List<CommentModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_CommentResponseCopyWith<_$_CommentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentModel _$CommentModelFromJson(Map<String, dynamic> json) {
  return _CommentModel.fromJson(json);
}

/// @nodoc
mixin _$CommentModel {
  int? get id => throw _privateConstructorUsedError;
  int? get contentId => throw _privateConstructorUsedError;
  String? get komentar => throw _privateConstructorUsedError;
  int? get memberId => throw _privateConstructorUsedError;
  String? get nikPublic => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get emailPublic => throw _privateConstructorUsedError;
  String? get tipeUser => throw _privateConstructorUsedError;
  DateTime? get komentarAt => throw _privateConstructorUsedError;
  int? get isHide => throw _privateConstructorUsedError;
  DateTime? get hideAt => throw _privateConstructorUsedError;
  DateTime? get unhideAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentModelCopyWith<CommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentModelCopyWith<$Res> {
  factory $CommentModelCopyWith(
          CommentModel value, $Res Function(CommentModel) then) =
      _$CommentModelCopyWithImpl<$Res, CommentModel>;
  @useResult
  $Res call(
      {int? id,
      int? contentId,
      String? komentar,
      int? memberId,
      String? nikPublic,
      String? username,
      String? emailPublic,
      String? tipeUser,
      DateTime? komentarAt,
      int? isHide,
      DateTime? hideAt,
      DateTime? unhideAt});
}

/// @nodoc
class _$CommentModelCopyWithImpl<$Res, $Val extends CommentModel>
    implements $CommentModelCopyWith<$Res> {
  _$CommentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? contentId = freezed,
    Object? komentar = freezed,
    Object? memberId = freezed,
    Object? nikPublic = freezed,
    Object? username = freezed,
    Object? emailPublic = freezed,
    Object? tipeUser = freezed,
    Object? komentarAt = freezed,
    Object? isHide = freezed,
    Object? hideAt = freezed,
    Object? unhideAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      contentId: freezed == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as int?,
      komentar: freezed == komentar
          ? _value.komentar
          : komentar // ignore: cast_nullable_to_non_nullable
              as String?,
      memberId: freezed == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int?,
      nikPublic: freezed == nikPublic
          ? _value.nikPublic
          : nikPublic // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      emailPublic: freezed == emailPublic
          ? _value.emailPublic
          : emailPublic // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeUser: freezed == tipeUser
          ? _value.tipeUser
          : tipeUser // ignore: cast_nullable_to_non_nullable
              as String?,
      komentarAt: freezed == komentarAt
          ? _value.komentarAt
          : komentarAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isHide: freezed == isHide
          ? _value.isHide
          : isHide // ignore: cast_nullable_to_non_nullable
              as int?,
      hideAt: freezed == hideAt
          ? _value.hideAt
          : hideAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      unhideAt: freezed == unhideAt
          ? _value.unhideAt
          : unhideAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommentModelCopyWith<$Res>
    implements $CommentModelCopyWith<$Res> {
  factory _$$_CommentModelCopyWith(
          _$_CommentModel value, $Res Function(_$_CommentModel) then) =
      __$$_CommentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? contentId,
      String? komentar,
      int? memberId,
      String? nikPublic,
      String? username,
      String? emailPublic,
      String? tipeUser,
      DateTime? komentarAt,
      int? isHide,
      DateTime? hideAt,
      DateTime? unhideAt});
}

/// @nodoc
class __$$_CommentModelCopyWithImpl<$Res>
    extends _$CommentModelCopyWithImpl<$Res, _$_CommentModel>
    implements _$$_CommentModelCopyWith<$Res> {
  __$$_CommentModelCopyWithImpl(
      _$_CommentModel _value, $Res Function(_$_CommentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? contentId = freezed,
    Object? komentar = freezed,
    Object? memberId = freezed,
    Object? nikPublic = freezed,
    Object? username = freezed,
    Object? emailPublic = freezed,
    Object? tipeUser = freezed,
    Object? komentarAt = freezed,
    Object? isHide = freezed,
    Object? hideAt = freezed,
    Object? unhideAt = freezed,
  }) {
    return _then(_$_CommentModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      contentId: freezed == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as int?,
      komentar: freezed == komentar
          ? _value.komentar
          : komentar // ignore: cast_nullable_to_non_nullable
              as String?,
      memberId: freezed == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int?,
      nikPublic: freezed == nikPublic
          ? _value.nikPublic
          : nikPublic // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      emailPublic: freezed == emailPublic
          ? _value.emailPublic
          : emailPublic // ignore: cast_nullable_to_non_nullable
              as String?,
      tipeUser: freezed == tipeUser
          ? _value.tipeUser
          : tipeUser // ignore: cast_nullable_to_non_nullable
              as String?,
      komentarAt: freezed == komentarAt
          ? _value.komentarAt
          : komentarAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isHide: freezed == isHide
          ? _value.isHide
          : isHide // ignore: cast_nullable_to_non_nullable
              as int?,
      hideAt: freezed == hideAt
          ? _value.hideAt
          : hideAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      unhideAt: freezed == unhideAt
          ? _value.unhideAt
          : unhideAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentModel implements _CommentModel {
  const _$_CommentModel(
      {this.id,
      this.contentId,
      this.komentar,
      this.memberId,
      this.nikPublic,
      this.username,
      this.emailPublic,
      this.tipeUser,
      this.komentarAt,
      this.isHide,
      this.hideAt,
      this.unhideAt});

  factory _$_CommentModel.fromJson(Map<String, dynamic> json) =>
      _$$_CommentModelFromJson(json);

  @override
  final int? id;
  @override
  final int? contentId;
  @override
  final String? komentar;
  @override
  final int? memberId;
  @override
  final String? nikPublic;
  @override
  final String? username;
  @override
  final String? emailPublic;
  @override
  final String? tipeUser;
  @override
  final DateTime? komentarAt;
  @override
  final int? isHide;
  @override
  final DateTime? hideAt;
  @override
  final DateTime? unhideAt;

  @override
  String toString() {
    return 'CommentModel(id: $id, contentId: $contentId, komentar: $komentar, memberId: $memberId, nikPublic: $nikPublic, username: $username, emailPublic: $emailPublic, tipeUser: $tipeUser, komentarAt: $komentarAt, isHide: $isHide, hideAt: $hideAt, unhideAt: $unhideAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.contentId, contentId) ||
                other.contentId == contentId) &&
            (identical(other.komentar, komentar) ||
                other.komentar == komentar) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.nikPublic, nikPublic) ||
                other.nikPublic == nikPublic) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.emailPublic, emailPublic) ||
                other.emailPublic == emailPublic) &&
            (identical(other.tipeUser, tipeUser) ||
                other.tipeUser == tipeUser) &&
            (identical(other.komentarAt, komentarAt) ||
                other.komentarAt == komentarAt) &&
            (identical(other.isHide, isHide) || other.isHide == isHide) &&
            (identical(other.hideAt, hideAt) || other.hideAt == hideAt) &&
            (identical(other.unhideAt, unhideAt) ||
                other.unhideAt == unhideAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      contentId,
      komentar,
      memberId,
      nikPublic,
      username,
      emailPublic,
      tipeUser,
      komentarAt,
      isHide,
      hideAt,
      unhideAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentModelCopyWith<_$_CommentModel> get copyWith =>
      __$$_CommentModelCopyWithImpl<_$_CommentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentModelToJson(
      this,
    );
  }
}

abstract class _CommentModel implements CommentModel {
  const factory _CommentModel(
      {final int? id,
      final int? contentId,
      final String? komentar,
      final int? memberId,
      final String? nikPublic,
      final String? username,
      final String? emailPublic,
      final String? tipeUser,
      final DateTime? komentarAt,
      final int? isHide,
      final DateTime? hideAt,
      final DateTime? unhideAt}) = _$_CommentModel;

  factory _CommentModel.fromJson(Map<String, dynamic> json) =
      _$_CommentModel.fromJson;

  @override
  int? get id;
  @override
  int? get contentId;
  @override
  String? get komentar;
  @override
  int? get memberId;
  @override
  String? get nikPublic;
  @override
  String? get username;
  @override
  String? get emailPublic;
  @override
  String? get tipeUser;
  @override
  DateTime? get komentarAt;
  @override
  int? get isHide;
  @override
  DateTime? get hideAt;
  @override
  DateTime? get unhideAt;
  @override
  @JsonKey(ignore: true)
  _$$_CommentModelCopyWith<_$_CommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
