// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kota_kabupaten_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KotaKabupatenResponse _$KotaKabupatenResponseFromJson(
    Map<String, dynamic> json) {
  return _KotaKabupatenResponse.fromJson(json);
}

/// @nodoc
mixin _$KotaKabupatenResponse {
  String? get message => throw _privateConstructorUsedError;
  List<KotaKabupaten>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KotaKabupatenResponseCopyWith<KotaKabupatenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KotaKabupatenResponseCopyWith<$Res> {
  factory $KotaKabupatenResponseCopyWith(KotaKabupatenResponse value,
          $Res Function(KotaKabupatenResponse) then) =
      _$KotaKabupatenResponseCopyWithImpl<$Res, KotaKabupatenResponse>;
  @useResult
  $Res call({String? message, List<KotaKabupaten>? data});
}

/// @nodoc
class _$KotaKabupatenResponseCopyWithImpl<$Res,
        $Val extends KotaKabupatenResponse>
    implements $KotaKabupatenResponseCopyWith<$Res> {
  _$KotaKabupatenResponseCopyWithImpl(this._value, this._then);

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
              as List<KotaKabupaten>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KotaKabupatenResponseCopyWith<$Res>
    implements $KotaKabupatenResponseCopyWith<$Res> {
  factory _$$_KotaKabupatenResponseCopyWith(_$_KotaKabupatenResponse value,
          $Res Function(_$_KotaKabupatenResponse) then) =
      __$$_KotaKabupatenResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, List<KotaKabupaten>? data});
}

/// @nodoc
class __$$_KotaKabupatenResponseCopyWithImpl<$Res>
    extends _$KotaKabupatenResponseCopyWithImpl<$Res, _$_KotaKabupatenResponse>
    implements _$$_KotaKabupatenResponseCopyWith<$Res> {
  __$$_KotaKabupatenResponseCopyWithImpl(_$_KotaKabupatenResponse _value,
      $Res Function(_$_KotaKabupatenResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_KotaKabupatenResponse(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<KotaKabupaten>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KotaKabupatenResponse implements _KotaKabupatenResponse {
  const _$_KotaKabupatenResponse(
      {this.message, final List<KotaKabupaten>? data})
      : _data = data;

  factory _$_KotaKabupatenResponse.fromJson(Map<String, dynamic> json) =>
      _$$_KotaKabupatenResponseFromJson(json);

  @override
  final String? message;
  final List<KotaKabupaten>? _data;
  @override
  List<KotaKabupaten>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'KotaKabupatenResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KotaKabupatenResponse &&
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
  _$$_KotaKabupatenResponseCopyWith<_$_KotaKabupatenResponse> get copyWith =>
      __$$_KotaKabupatenResponseCopyWithImpl<_$_KotaKabupatenResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KotaKabupatenResponseToJson(
      this,
    );
  }
}

abstract class _KotaKabupatenResponse implements KotaKabupatenResponse {
  const factory _KotaKabupatenResponse(
      {final String? message,
      final List<KotaKabupaten>? data}) = _$_KotaKabupatenResponse;

  factory _KotaKabupatenResponse.fromJson(Map<String, dynamic> json) =
      _$_KotaKabupatenResponse.fromJson;

  @override
  String? get message;
  @override
  List<KotaKabupaten>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_KotaKabupatenResponseCopyWith<_$_KotaKabupatenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

KotaKabupaten _$KotaKabupatenFromJson(Map<String, dynamic> json) {
  return _KotaKabupaten.fromJson(json);
}

/// @nodoc
mixin _$KotaKabupaten {
  int? get id => throw _privateConstructorUsedError;
  int? get propinsiId => throw _privateConstructorUsedError;
  int? get kotaId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get kotaIcon1 => throw _privateConstructorUsedError;
  String? get kotaIcon2 => throw _privateConstructorUsedError;
  String? get kotaIcon3 => throw _privateConstructorUsedError;
  String? get kotaIcon4 => throw _privateConstructorUsedError;
  String? get kotaIcon5 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KotaKabupatenCopyWith<KotaKabupaten> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KotaKabupatenCopyWith<$Res> {
  factory $KotaKabupatenCopyWith(
          KotaKabupaten value, $Res Function(KotaKabupaten) then) =
      _$KotaKabupatenCopyWithImpl<$Res, KotaKabupaten>;
  @useResult
  $Res call(
      {int? id,
      int? propinsiId,
      int? kotaId,
      String? name,
      String? kotaIcon1,
      String? kotaIcon2,
      String? kotaIcon3,
      String? kotaIcon4,
      String? kotaIcon5});
}

/// @nodoc
class _$KotaKabupatenCopyWithImpl<$Res, $Val extends KotaKabupaten>
    implements $KotaKabupatenCopyWith<$Res> {
  _$KotaKabupatenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? propinsiId = freezed,
    Object? kotaId = freezed,
    Object? name = freezed,
    Object? kotaIcon1 = freezed,
    Object? kotaIcon2 = freezed,
    Object? kotaIcon3 = freezed,
    Object? kotaIcon4 = freezed,
    Object? kotaIcon5 = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      propinsiId: freezed == propinsiId
          ? _value.propinsiId
          : propinsiId // ignore: cast_nullable_to_non_nullable
              as int?,
      kotaId: freezed == kotaId
          ? _value.kotaId
          : kotaId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_KotaKabupatenCopyWith<$Res>
    implements $KotaKabupatenCopyWith<$Res> {
  factory _$$_KotaKabupatenCopyWith(
          _$_KotaKabupaten value, $Res Function(_$_KotaKabupaten) then) =
      __$$_KotaKabupatenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? propinsiId,
      int? kotaId,
      String? name,
      String? kotaIcon1,
      String? kotaIcon2,
      String? kotaIcon3,
      String? kotaIcon4,
      String? kotaIcon5});
}

/// @nodoc
class __$$_KotaKabupatenCopyWithImpl<$Res>
    extends _$KotaKabupatenCopyWithImpl<$Res, _$_KotaKabupaten>
    implements _$$_KotaKabupatenCopyWith<$Res> {
  __$$_KotaKabupatenCopyWithImpl(
      _$_KotaKabupaten _value, $Res Function(_$_KotaKabupaten) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? propinsiId = freezed,
    Object? kotaId = freezed,
    Object? name = freezed,
    Object? kotaIcon1 = freezed,
    Object? kotaIcon2 = freezed,
    Object? kotaIcon3 = freezed,
    Object? kotaIcon4 = freezed,
    Object? kotaIcon5 = freezed,
  }) {
    return _then(_$_KotaKabupaten(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      propinsiId: freezed == propinsiId
          ? _value.propinsiId
          : propinsiId // ignore: cast_nullable_to_non_nullable
              as int?,
      kotaId: freezed == kotaId
          ? _value.kotaId
          : kotaId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_KotaKabupaten implements _KotaKabupaten {
  const _$_KotaKabupaten(
      {this.id,
      this.propinsiId,
      this.kotaId,
      this.name,
      this.kotaIcon1,
      this.kotaIcon2,
      this.kotaIcon3,
      this.kotaIcon4,
      this.kotaIcon5});

  factory _$_KotaKabupaten.fromJson(Map<String, dynamic> json) =>
      _$$_KotaKabupatenFromJson(json);

  @override
  final int? id;
  @override
  final int? propinsiId;
  @override
  final int? kotaId;
  @override
  final String? name;
  @override
  final String? kotaIcon1;
  @override
  final String? kotaIcon2;
  @override
  final String? kotaIcon3;
  @override
  final String? kotaIcon4;
  @override
  final String? kotaIcon5;

  @override
  String toString() {
    return 'KotaKabupaten(id: $id, propinsiId: $propinsiId, kotaId: $kotaId, name: $name, kotaIcon1: $kotaIcon1, kotaIcon2: $kotaIcon2, kotaIcon3: $kotaIcon3, kotaIcon4: $kotaIcon4, kotaIcon5: $kotaIcon5)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KotaKabupaten &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.propinsiId, propinsiId) ||
                other.propinsiId == propinsiId) &&
            (identical(other.kotaId, kotaId) || other.kotaId == kotaId) &&
            (identical(other.name, name) || other.name == name) &&
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
  int get hashCode => Object.hash(runtimeType, id, propinsiId, kotaId, name,
      kotaIcon1, kotaIcon2, kotaIcon3, kotaIcon4, kotaIcon5);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KotaKabupatenCopyWith<_$_KotaKabupaten> get copyWith =>
      __$$_KotaKabupatenCopyWithImpl<_$_KotaKabupaten>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KotaKabupatenToJson(
      this,
    );
  }
}

abstract class _KotaKabupaten implements KotaKabupaten {
  const factory _KotaKabupaten(
      {final int? id,
      final int? propinsiId,
      final int? kotaId,
      final String? name,
      final String? kotaIcon1,
      final String? kotaIcon2,
      final String? kotaIcon3,
      final String? kotaIcon4,
      final String? kotaIcon5}) = _$_KotaKabupaten;

  factory _KotaKabupaten.fromJson(Map<String, dynamic> json) =
      _$_KotaKabupaten.fromJson;

  @override
  int? get id;
  @override
  int? get propinsiId;
  @override
  int? get kotaId;
  @override
  String? get name;
  @override
  String? get kotaIcon1;
  @override
  String? get kotaIcon2;
  @override
  String? get kotaIcon3;
  @override
  String? get kotaIcon4;
  @override
  String? get kotaIcon5;
  @override
  @JsonKey(ignore: true)
  _$$_KotaKabupatenCopyWith<_$_KotaKabupaten> get copyWith =>
      throw _privateConstructorUsedError;
}
