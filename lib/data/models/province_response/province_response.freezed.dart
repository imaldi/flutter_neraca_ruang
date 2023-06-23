// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'province_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProvinceResponse _$ProvinceResponseFromJson(Map<String, dynamic> json) {
  return _ProvinceResponse.fromJson(json);
}

/// @nodoc
mixin _$ProvinceResponse {
  String? get message => throw _privateConstructorUsedError;
  List<ProvinceModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProvinceResponseCopyWith<ProvinceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinceResponseCopyWith<$Res> {
  factory $ProvinceResponseCopyWith(
          ProvinceResponse value, $Res Function(ProvinceResponse) then) =
      _$ProvinceResponseCopyWithImpl<$Res, ProvinceResponse>;
  @useResult
  $Res call({String? message, List<ProvinceModel>? data});
}

/// @nodoc
class _$ProvinceResponseCopyWithImpl<$Res, $Val extends ProvinceResponse>
    implements $ProvinceResponseCopyWith<$Res> {
  _$ProvinceResponseCopyWithImpl(this._value, this._then);

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
              as List<ProvinceModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProvinceResponseCopyWith<$Res>
    implements $ProvinceResponseCopyWith<$Res> {
  factory _$$_ProvinceResponseCopyWith(
          _$_ProvinceResponse value, $Res Function(_$_ProvinceResponse) then) =
      __$$_ProvinceResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, List<ProvinceModel>? data});
}

/// @nodoc
class __$$_ProvinceResponseCopyWithImpl<$Res>
    extends _$ProvinceResponseCopyWithImpl<$Res, _$_ProvinceResponse>
    implements _$$_ProvinceResponseCopyWith<$Res> {
  __$$_ProvinceResponseCopyWithImpl(
      _$_ProvinceResponse _value, $Res Function(_$_ProvinceResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ProvinceResponse(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProvinceModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProvinceResponse implements _ProvinceResponse {
  const _$_ProvinceResponse({this.message, final List<ProvinceModel>? data})
      : _data = data;

  factory _$_ProvinceResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProvinceResponseFromJson(json);

  @override
  final String? message;
  final List<ProvinceModel>? _data;
  @override
  List<ProvinceModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProvinceResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProvinceResponse &&
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
  _$$_ProvinceResponseCopyWith<_$_ProvinceResponse> get copyWith =>
      __$$_ProvinceResponseCopyWithImpl<_$_ProvinceResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProvinceResponseToJson(
      this,
    );
  }
}

abstract class _ProvinceResponse implements ProvinceResponse {
  const factory _ProvinceResponse(
      {final String? message,
      final List<ProvinceModel>? data}) = _$_ProvinceResponse;

  factory _ProvinceResponse.fromJson(Map<String, dynamic> json) =
      _$_ProvinceResponse.fromJson;

  @override
  String? get message;
  @override
  List<ProvinceModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ProvinceResponseCopyWith<_$_ProvinceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ProvinceModel _$ProvinceModelFromJson(Map<String, dynamic> json) {
  return _ProvinceModel.fromJson(json);
}

/// @nodoc
mixin _$ProvinceModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get ibukota => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProvinceModelCopyWith<ProvinceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinceModelCopyWith<$Res> {
  factory $ProvinceModelCopyWith(
          ProvinceModel value, $Res Function(ProvinceModel) then) =
      _$ProvinceModelCopyWithImpl<$Res, ProvinceModel>;
  @useResult
  $Res call({int? id, String? name, int? ibukota});
}

/// @nodoc
class _$ProvinceModelCopyWithImpl<$Res, $Val extends ProvinceModel>
    implements $ProvinceModelCopyWith<$Res> {
  _$ProvinceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? ibukota = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      ibukota: freezed == ibukota
          ? _value.ibukota
          : ibukota // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProvinceModelCopyWith<$Res>
    implements $ProvinceModelCopyWith<$Res> {
  factory _$$_ProvinceModelCopyWith(
          _$_ProvinceModel value, $Res Function(_$_ProvinceModel) then) =
      __$$_ProvinceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, int? ibukota});
}

/// @nodoc
class __$$_ProvinceModelCopyWithImpl<$Res>
    extends _$ProvinceModelCopyWithImpl<$Res, _$_ProvinceModel>
    implements _$$_ProvinceModelCopyWith<$Res> {
  __$$_ProvinceModelCopyWithImpl(
      _$_ProvinceModel _value, $Res Function(_$_ProvinceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? ibukota = freezed,
  }) {
    return _then(_$_ProvinceModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      ibukota: freezed == ibukota
          ? _value.ibukota
          : ibukota // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProvinceModel implements _ProvinceModel {
  const _$_ProvinceModel({this.id, this.name, this.ibukota});

  factory _$_ProvinceModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProvinceModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? ibukota;

  @override
  String toString() {
    return 'ProvinceModel(id: $id, name: $name, ibukota: $ibukota)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProvinceModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.ibukota, ibukota) || other.ibukota == ibukota));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, ibukota);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProvinceModelCopyWith<_$_ProvinceModel> get copyWith =>
      __$$_ProvinceModelCopyWithImpl<_$_ProvinceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProvinceModelToJson(
      this,
    );
  }
}

abstract class _ProvinceModel implements ProvinceModel {
  const factory _ProvinceModel(
      {final int? id,
      final String? name,
      final int? ibukota}) = _$_ProvinceModel;

  factory _ProvinceModel.fromJson(Map<String, dynamic> json) =
      _$_ProvinceModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get ibukota;
  @override
  @JsonKey(ignore: true)
  _$$_ProvinceModelCopyWith<_$_ProvinceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
