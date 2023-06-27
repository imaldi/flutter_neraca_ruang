// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kota_kabupaten_single_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KotaKabupatenSingleResponse _$KotaKabupatenSingleResponseFromJson(
    Map<String, dynamic> json) {
  return _KotaKabupatenSingleResponse.fromJson(json);
}

/// @nodoc
mixin _$KotaKabupatenSingleResponse {
  String? get message => throw _privateConstructorUsedError;
  KotaKabupaten? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KotaKabupatenSingleResponseCopyWith<KotaKabupatenSingleResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KotaKabupatenSingleResponseCopyWith<$Res> {
  factory $KotaKabupatenSingleResponseCopyWith(
          KotaKabupatenSingleResponse value,
          $Res Function(KotaKabupatenSingleResponse) then) =
      _$KotaKabupatenSingleResponseCopyWithImpl<$Res,
          KotaKabupatenSingleResponse>;
  @useResult
  $Res call({String? message, KotaKabupaten? data});

  $KotaKabupatenCopyWith<$Res>? get data;
}

/// @nodoc
class _$KotaKabupatenSingleResponseCopyWithImpl<$Res,
        $Val extends KotaKabupatenSingleResponse>
    implements $KotaKabupatenSingleResponseCopyWith<$Res> {
  _$KotaKabupatenSingleResponseCopyWithImpl(this._value, this._then);

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
              as KotaKabupaten?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $KotaKabupatenCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $KotaKabupatenCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_KotaKabupatenSingleResponseCopyWith<$Res>
    implements $KotaKabupatenSingleResponseCopyWith<$Res> {
  factory _$$_KotaKabupatenSingleResponseCopyWith(
          _$_KotaKabupatenSingleResponse value,
          $Res Function(_$_KotaKabupatenSingleResponse) then) =
      __$$_KotaKabupatenSingleResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, KotaKabupaten? data});

  @override
  $KotaKabupatenCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_KotaKabupatenSingleResponseCopyWithImpl<$Res>
    extends _$KotaKabupatenSingleResponseCopyWithImpl<$Res,
        _$_KotaKabupatenSingleResponse>
    implements _$$_KotaKabupatenSingleResponseCopyWith<$Res> {
  __$$_KotaKabupatenSingleResponseCopyWithImpl(
      _$_KotaKabupatenSingleResponse _value,
      $Res Function(_$_KotaKabupatenSingleResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_KotaKabupatenSingleResponse(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as KotaKabupaten?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KotaKabupatenSingleResponse implements _KotaKabupatenSingleResponse {
  const _$_KotaKabupatenSingleResponse({this.message, this.data});

  factory _$_KotaKabupatenSingleResponse.fromJson(Map<String, dynamic> json) =>
      _$$_KotaKabupatenSingleResponseFromJson(json);

  @override
  final String? message;
  @override
  final KotaKabupaten? data;

  @override
  String toString() {
    return 'KotaKabupatenSingleResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KotaKabupatenSingleResponse &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KotaKabupatenSingleResponseCopyWith<_$_KotaKabupatenSingleResponse>
      get copyWith => __$$_KotaKabupatenSingleResponseCopyWithImpl<
          _$_KotaKabupatenSingleResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KotaKabupatenSingleResponseToJson(
      this,
    );
  }
}

abstract class _KotaKabupatenSingleResponse
    implements KotaKabupatenSingleResponse {
  const factory _KotaKabupatenSingleResponse(
      {final String? message,
      final KotaKabupaten? data}) = _$_KotaKabupatenSingleResponse;

  factory _KotaKabupatenSingleResponse.fromJson(Map<String, dynamic> json) =
      _$_KotaKabupatenSingleResponse.fromJson;

  @override
  String? get message;
  @override
  KotaKabupaten? get data;
  @override
  @JsonKey(ignore: true)
  _$$_KotaKabupatenSingleResponseCopyWith<_$_KotaKabupatenSingleResponse>
      get copyWith => throw _privateConstructorUsedError;
}
