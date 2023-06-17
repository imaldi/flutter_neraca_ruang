// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DashboardState _$DashboardStateFromJson(Map<String, dynamic> json) {
  return _DashboardState.fromJson(json);
}

/// @nodoc
mixin _$DashboardState {
  @JsonKey(name: "dashboard_response")
  DashboardResponse? get dashboardResponse =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "list_content_dashboard")
  List<Datum>? get listContentDashboard => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get tipe => throw _privateConstructorUsedError;
  int? get kota_id => throw _privateConstructorUsedError;
  int? get tags_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
  @useResult
  $Res call(
      {@JsonKey(name: "dashboard_response")
          DashboardResponse? dashboardResponse,
      @JsonKey(name: "list_content_dashboard")
          List<Datum>? listContentDashboard,
      int? limit,
      int? page,
      String? slug,
      String? tipe,
      int? kota_id,
      int? tags_id});

  $DashboardResponseCopyWith<$Res>? get dashboardResponse;
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dashboardResponse = freezed,
    Object? listContentDashboard = freezed,
    Object? limit = freezed,
    Object? page = freezed,
    Object? slug = freezed,
    Object? tipe = freezed,
    Object? kota_id = freezed,
    Object? tags_id = freezed,
  }) {
    return _then(_value.copyWith(
      dashboardResponse: freezed == dashboardResponse
          ? _value.dashboardResponse
          : dashboardResponse // ignore: cast_nullable_to_non_nullable
              as DashboardResponse?,
      listContentDashboard: freezed == listContentDashboard
          ? _value.listContentDashboard
          : listContentDashboard // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      tipe: freezed == tipe
          ? _value.tipe
          : tipe // ignore: cast_nullable_to_non_nullable
              as String?,
      kota_id: freezed == kota_id
          ? _value.kota_id
          : kota_id // ignore: cast_nullable_to_non_nullable
              as int?,
      tags_id: freezed == tags_id
          ? _value.tags_id
          : tags_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DashboardResponseCopyWith<$Res>? get dashboardResponse {
    if (_value.dashboardResponse == null) {
      return null;
    }

    return $DashboardResponseCopyWith<$Res>(_value.dashboardResponse!, (value) {
      return _then(_value.copyWith(dashboardResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DashboardStateCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$_DashboardStateCopyWith(
          _$_DashboardState value, $Res Function(_$_DashboardState) then) =
      __$$_DashboardStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "dashboard_response")
          DashboardResponse? dashboardResponse,
      @JsonKey(name: "list_content_dashboard")
          List<Datum>? listContentDashboard,
      int? limit,
      int? page,
      String? slug,
      String? tipe,
      int? kota_id,
      int? tags_id});

  @override
  $DashboardResponseCopyWith<$Res>? get dashboardResponse;
}

/// @nodoc
class __$$_DashboardStateCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$_DashboardState>
    implements _$$_DashboardStateCopyWith<$Res> {
  __$$_DashboardStateCopyWithImpl(
      _$_DashboardState _value, $Res Function(_$_DashboardState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dashboardResponse = freezed,
    Object? listContentDashboard = freezed,
    Object? limit = freezed,
    Object? page = freezed,
    Object? slug = freezed,
    Object? tipe = freezed,
    Object? kota_id = freezed,
    Object? tags_id = freezed,
  }) {
    return _then(_$_DashboardState(
      dashboardResponse: freezed == dashboardResponse
          ? _value.dashboardResponse
          : dashboardResponse // ignore: cast_nullable_to_non_nullable
              as DashboardResponse?,
      listContentDashboard: freezed == listContentDashboard
          ? _value._listContentDashboard
          : listContentDashboard // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      tipe: freezed == tipe
          ? _value.tipe
          : tipe // ignore: cast_nullable_to_non_nullable
              as String?,
      kota_id: freezed == kota_id
          ? _value.kota_id
          : kota_id // ignore: cast_nullable_to_non_nullable
              as int?,
      tags_id: freezed == tags_id
          ? _value.tags_id
          : tags_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DashboardState implements _DashboardState {
  const _$_DashboardState(
      {@JsonKey(name: "dashboard_response")
          this.dashboardResponse,
      @JsonKey(name: "list_content_dashboard")
          final List<Datum>? listContentDashboard,
      this.limit,
      this.page,
      this.slug,
      this.tipe,
      this.kota_id,
      this.tags_id})
      : _listContentDashboard = listContentDashboard;

  factory _$_DashboardState.fromJson(Map<String, dynamic> json) =>
      _$$_DashboardStateFromJson(json);

  @override
  @JsonKey(name: "dashboard_response")
  final DashboardResponse? dashboardResponse;
  final List<Datum>? _listContentDashboard;
  @override
  @JsonKey(name: "list_content_dashboard")
  List<Datum>? get listContentDashboard {
    final value = _listContentDashboard;
    if (value == null) return null;
    if (_listContentDashboard is EqualUnmodifiableListView)
      return _listContentDashboard;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? limit;
  @override
  final int? page;
  @override
  final String? slug;
  @override
  final String? tipe;
  @override
  final int? kota_id;
  @override
  final int? tags_id;

  @override
  String toString() {
    return 'DashboardState(dashboardResponse: $dashboardResponse, listContentDashboard: $listContentDashboard, limit: $limit, page: $page, slug: $slug, tipe: $tipe, kota_id: $kota_id, tags_id: $tags_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DashboardState &&
            (identical(other.dashboardResponse, dashboardResponse) ||
                other.dashboardResponse == dashboardResponse) &&
            const DeepCollectionEquality()
                .equals(other._listContentDashboard, _listContentDashboard) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.tipe, tipe) || other.tipe == tipe) &&
            (identical(other.kota_id, kota_id) || other.kota_id == kota_id) &&
            (identical(other.tags_id, tags_id) || other.tags_id == tags_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dashboardResponse,
      const DeepCollectionEquality().hash(_listContentDashboard),
      limit,
      page,
      slug,
      tipe,
      kota_id,
      tags_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DashboardStateCopyWith<_$_DashboardState> get copyWith =>
      __$$_DashboardStateCopyWithImpl<_$_DashboardState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DashboardStateToJson(
      this,
    );
  }
}

abstract class _DashboardState implements DashboardState {
  const factory _DashboardState(
      {@JsonKey(name: "dashboard_response")
          final DashboardResponse? dashboardResponse,
      @JsonKey(name: "list_content_dashboard")
          final List<Datum>? listContentDashboard,
      final int? limit,
      final int? page,
      final String? slug,
      final String? tipe,
      final int? kota_id,
      final int? tags_id}) = _$_DashboardState;

  factory _DashboardState.fromJson(Map<String, dynamic> json) =
      _$_DashboardState.fromJson;

  @override
  @JsonKey(name: "dashboard_response")
  DashboardResponse? get dashboardResponse;
  @override
  @JsonKey(name: "list_content_dashboard")
  List<Datum>? get listContentDashboard;
  @override
  int? get limit;
  @override
  int? get page;
  @override
  String? get slug;
  @override
  String? get tipe;
  @override
  int? get kota_id;
  @override
  int? get tags_id;
  @override
  @JsonKey(ignore: true)
  _$$_DashboardStateCopyWith<_$_DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}
