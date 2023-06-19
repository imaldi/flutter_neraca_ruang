// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tags_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TagsResponse _$TagsResponseFromJson(Map<String, dynamic> json) {
  return _TagsResponse.fromJson(json);
}

/// @nodoc
mixin _$TagsResponse {
  String? get message => throw _privateConstructorUsedError;
  List<Tags>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagsResponseCopyWith<TagsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagsResponseCopyWith<$Res> {
  factory $TagsResponseCopyWith(
          TagsResponse value, $Res Function(TagsResponse) then) =
      _$TagsResponseCopyWithImpl<$Res, TagsResponse>;
  @useResult
  $Res call({String? message, List<Tags>? data});
}

/// @nodoc
class _$TagsResponseCopyWithImpl<$Res, $Val extends TagsResponse>
    implements $TagsResponseCopyWith<$Res> {
  _$TagsResponseCopyWithImpl(this._value, this._then);

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
              as List<Tags>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TagsResponseCopyWith<$Res>
    implements $TagsResponseCopyWith<$Res> {
  factory _$$_TagsResponseCopyWith(
          _$_TagsResponse value, $Res Function(_$_TagsResponse) then) =
      __$$_TagsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, List<Tags>? data});
}

/// @nodoc
class __$$_TagsResponseCopyWithImpl<$Res>
    extends _$TagsResponseCopyWithImpl<$Res, _$_TagsResponse>
    implements _$$_TagsResponseCopyWith<$Res> {
  __$$_TagsResponseCopyWithImpl(
      _$_TagsResponse _value, $Res Function(_$_TagsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_TagsResponse(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Tags>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TagsResponse implements _TagsResponse {
  const _$_TagsResponse({this.message, final List<Tags>? data}) : _data = data;

  factory _$_TagsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TagsResponseFromJson(json);

  @override
  final String? message;
  final List<Tags>? _data;
  @override
  List<Tags>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TagsResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TagsResponse &&
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
  _$$_TagsResponseCopyWith<_$_TagsResponse> get copyWith =>
      __$$_TagsResponseCopyWithImpl<_$_TagsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TagsResponseToJson(
      this,
    );
  }
}

abstract class _TagsResponse implements TagsResponse {
  const factory _TagsResponse({final String? message, final List<Tags>? data}) =
      _$_TagsResponse;

  factory _TagsResponse.fromJson(Map<String, dynamic> json) =
      _$_TagsResponse.fromJson;

  @override
  String? get message;
  @override
  List<Tags>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_TagsResponseCopyWith<_$_TagsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
