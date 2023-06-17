part of 'dashboard_cubit.dart';

@freezed
class DashboardState with _$DashboardState {
  // const factory DashboardState.initial() = _Initial;
  const factory DashboardState(
      {@JsonKey(name: "dashboard_response")
      DashboardResponse? dashboardResponse,
      @JsonKey(name: "list_content_dashboard")
      List<Datum>? listContentDashboard,
      int? limit,
      int? page,
      String? slug,
      String? tipe,
      @Default(0) int kota_id,
      @Default("") String kota_name,
      @Default(0) int tags_id,
      @Default("") String tags_name,
      @Default(0) int selected_id}) = _DashboardState;

  factory DashboardState.fromJson(Map<String, dynamic> json) =>
      _$DashboardStateFromJson(json);
}
