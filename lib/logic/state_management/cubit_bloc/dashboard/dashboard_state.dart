part of 'dashboard_cubit.dart';

@freezed
class DashboardState with _$DashboardState {
  // const factory DashboardState.initial() = _Initial;
  const factory DashboardState(
      {@JsonKey(name: "dashboard_response")
      DashboardResponse? dashboardResponse,
      @JsonKey(name: "list_content_dashboard")
      List<Datum>? listContentDashboard,
      @JsonKey(name: "list_content_kabar") List<Datum>? listContentKabar,
      @JsonKey(name: "list_content_jurnal") List<Datum>? listContentJurnal,
      @JsonKey(name: "list_content_infografis")
      List<Datum>? listContentInfografis,
      @JsonKey(name: "list_content_video") List<Datum>? listContentVideo,
      @JsonKey(name: "list_content_foto") List<Datum>? listContentFoto,
      @JsonKey(name: "list_content_search") List<Datum>? listContentSearch,
      @JsonKey(name: "list_content_green_page")
      List<Datum>? listContentGreenPage,
      int? limit,
      int? page,
      String? slug,
      String? tipe,
      String? icon,
      @Default(false) is_loading,
      @Default(false) is_green_mode,
      @Default(0) int kota_id,
      @Default("") String kota_name,
      @Default(0) int tags_id,
      @Default("") String tags_name,
      @Default(0) int selected_id}) = _DashboardState;

  factory DashboardState.fromJson(Map<String, dynamic> json) =>
      _$DashboardStateFromJson(json);
}
