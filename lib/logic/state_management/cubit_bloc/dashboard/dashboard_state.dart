part of 'dashboard_cubit.dart';

@freezed
class DashboardState with _$DashboardState {
  // const factory DashboardState.initial() = _Initial;
  const factory DashboardState({
    @JsonKey(name: "dashboard_response") DashboardResponse? dashboardResponse,
    List<Datum>? listContentDashboard,
    int? limit,
    int? page,
    String? slug,
    String? tipe,
    int? kota_id,
    int? tags_id,
  }) = _DashboardState;

  factory DashboardState.fromJson(Map<String, dynamic> json) =>
      _$DashboardStateFromJson(json);
}
