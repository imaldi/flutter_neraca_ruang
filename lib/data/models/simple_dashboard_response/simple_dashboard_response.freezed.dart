// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple_dashboard_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SimpleDashboardResponse _$SimpleDashboardResponseFromJson(
    Map<String, dynamic> json) {
  return _SimpleDashboardResponse.fromJson(json);
}

/// @nodoc
mixin _$SimpleDashboardResponse {
  String? get message => throw _privateConstructorUsedError;
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SimpleDashboardResponseCopyWith<SimpleDashboardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleDashboardResponseCopyWith<$Res> {
  factory $SimpleDashboardResponseCopyWith(SimpleDashboardResponse value,
          $Res Function(SimpleDashboardResponse) then) =
      _$SimpleDashboardResponseCopyWithImpl<$Res, SimpleDashboardResponse>;
  @useResult
  $Res call({String? message, List<Datum>? data});
}

/// @nodoc
class _$SimpleDashboardResponseCopyWithImpl<$Res,
        $Val extends SimpleDashboardResponse>
    implements $SimpleDashboardResponseCopyWith<$Res> {
  _$SimpleDashboardResponseCopyWithImpl(this._value, this._then);

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
              as List<Datum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SimpleDashboardResponseCopyWith<$Res>
    implements $SimpleDashboardResponseCopyWith<$Res> {
  factory _$$_SimpleDashboardResponseCopyWith(_$_SimpleDashboardResponse value,
          $Res Function(_$_SimpleDashboardResponse) then) =
      __$$_SimpleDashboardResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, List<Datum>? data});
}

/// @nodoc
class __$$_SimpleDashboardResponseCopyWithImpl<$Res>
    extends _$SimpleDashboardResponseCopyWithImpl<$Res,
        _$_SimpleDashboardResponse>
    implements _$$_SimpleDashboardResponseCopyWith<$Res> {
  __$$_SimpleDashboardResponseCopyWithImpl(_$_SimpleDashboardResponse _value,
      $Res Function(_$_SimpleDashboardResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_SimpleDashboardResponse(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SimpleDashboardResponse implements _SimpleDashboardResponse {
  const _$_SimpleDashboardResponse({this.message, final List<Datum>? data})
      : _data = data;

  factory _$_SimpleDashboardResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SimpleDashboardResponseFromJson(json);

  @override
  final String? message;
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
  String toString() {
    return 'SimpleDashboardResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SimpleDashboardResponse &&
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
  _$$_SimpleDashboardResponseCopyWith<_$_SimpleDashboardResponse>
      get copyWith =>
          __$$_SimpleDashboardResponseCopyWithImpl<_$_SimpleDashboardResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SimpleDashboardResponseToJson(
      this,
    );
  }
}

abstract class _SimpleDashboardResponse implements SimpleDashboardResponse {
  const factory _SimpleDashboardResponse(
      {final String? message,
      final List<Datum>? data}) = _$_SimpleDashboardResponse;

  factory _SimpleDashboardResponse.fromJson(Map<String, dynamic> json) =
      _$_SimpleDashboardResponse.fromJson;

  @override
  String? get message;
  @override
  List<Datum>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_SimpleDashboardResponseCopyWith<_$_SimpleDashboardResponse>
      get copyWith => throw _privateConstructorUsedError;
}
