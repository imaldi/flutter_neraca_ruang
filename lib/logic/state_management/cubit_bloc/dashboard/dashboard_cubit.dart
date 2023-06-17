import 'dart:convert';

import 'package:flutter_neraca_ruang/data/models/dashboard_response/dashboard_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:http/http.dart' as http;

import '../../../../core/consts/urls.dart';

part 'dashboard_state.dart';
part 'dashboard_cubit.freezed.dart';
part 'dashboard_cubit.g.dart';

class DashboardCubit extends HydratedCubit<DashboardState> {
  DashboardCubit()
      : super(const DashboardState(listContentDashboard: <Datum>[]));

  fetchDashboardContent() async {
    // fetch data dari ke 5 tipe
    // DashboardState.loaded()
    try {
      // Map<String, String> queryParameters = ;
      var urlKabar = Uri.https(
          baseUrl, dashboardList, {'page': "1", 'limit': "1", 'tipe': 'kabar'});
      String token =
          "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJuZXJhY2FydWFuZy1wb3J0YWwiLCJpYXQiOjE2ODMyOTIzNTZ9.BN1wbCp2HTxXVwmz9QtQXscHzv5INWPO6n5xTZDTDhc";

      final headers = {
        'Authorization': token,
        'Accept': 'application/json',
      };

      // queryParameters['tipe'] = "kabar";
      // print("queryParameters: $queryParameters");

      final requestKabar = await http.get(urlKabar, headers: headers);

      final responseKabar =
          DashboardResponse.fromJson(jsonDecode(requestKabar.body))
                  .data
                  ?.data
                  ?.first ??
              Datum();

      var urlJurnal = Uri.https(baseUrl, dashboardList,
          {'page': "1", 'limit': "1", 'tipe': 'jurnal'});

      final requestJurnal = await http.get(urlJurnal, headers: headers);

      final responseJurnal =
          DashboardResponse.fromJson(jsonDecode(requestJurnal.body))
                  .data
                  ?.data
                  ?.first ??
              Datum();

      var urlInfografis = Uri.https(baseUrl, dashboardList,
          {'page': "1", 'limit': "1", 'tipe': 'infografis'});

      final requestInfografis = await http.get(urlInfografis, headers: headers);

      final responseInfografis =
          DashboardResponse.fromJson(jsonDecode(requestInfografis.body))
                  .data
                  ?.data
                  ?.first ??
              Datum();

      var urlVideo = Uri.https(
          baseUrl, dashboardList, {'page': "1", 'limit': "1", 'tipe': 'video'});

      final requestVideo = await http.get(urlVideo, headers: headers);

      final responseVideo =
          DashboardResponse.fromJson(jsonDecode(requestVideo.body))
                  .data
                  ?.data
                  ?.first ??
              Datum();

      var urlFoto = Uri.https(
          baseUrl, dashboardList, {'page': "1", 'limit': "1", 'tipe': 'foto'});

      final requestFoto = await http.get(urlFoto, headers: headers);

      final responseFoto =
          DashboardResponse.fromJson(jsonDecode(requestFoto.body))
                  .data
                  ?.data
                  ?.first ??
              Datum();

      print("URL: $urlKabar");
      print("URL: $urlJurnal");
      print("URL: $urlInfografis");
      print("URL: $urlVideo");
      print("URL: $urlFoto");
      // log("Response body content: ${response.body}");
      final dashboardContent = <Datum>[]
        ..add(responseKabar)
        ..add(responseJurnal)
        ..add(responseInfografis)
        ..add(responseVideo)
        ..add(responseFoto);
      emit(state.copyWith(listContentDashboard: dashboardContent));
      // print("Cubit State is: ${}");
    } on TypeError {
      return DashboardResponse();
    } catch (e) {
      print("Error Type: ${e}");
      throw Exception();
    }
  }

  fetchContentsWithCustomFilter(
      {int? pageNumber, int? limit, String? type, String? keyword}) {}

  giveLikeToAContent({required int id, required String slug}) {}

  @override
  DashboardState? fromJson(Map<String, dynamic> json) {
    try {
      // Parse the JSON data and create the bloc state object
      final cachedState = DashboardState.fromJson(json);

      // Compare the cached state with the newly fetched state
      // You can access the last known state with 'state' property of the bloc
      final currentState = state;
      if (currentState != cachedState) {
        // Handle the case where the states are different,
        // e.g., update the UI or notify the user about the new data
        // emit(currentState);
        return currentState;
      }

      // Return the cached state
      return cachedState;
    } catch (e) {
      return state;
    }
    // return DashboardState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(DashboardState state) {
    return state.toJson();
  }
}
