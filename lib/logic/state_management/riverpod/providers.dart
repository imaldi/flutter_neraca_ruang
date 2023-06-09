import 'dart:convert';

import 'package:flutter_neraca_ruang/core/consts/datum_type.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

import '../../../data/models/dashboard_response.dart';

// TODO: Buat FutureProvider untuk fetch semua konten yang tampil di dashboard
// var kabarProvider;
// var jurnalProvider;
// var infografisProvider;
// var videoProvider;
// var dashboardProvider;  // (Kombinasi semua provider itu, ambil yg terbaru dari masing2 response, dan jadikan sebagai sebuah list / map);

// FIXME: JANGAN SIMPAN TOKENNYA DI SINI!!! (JANGAN COMMIT INI)
final userTokenProvider = StateProvider<String>((ref) =>
    "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJuZXJhY2FydWFuZy1wb3J0YWwiLCJpYXQiOjE2ODMyOTIzNTZ9.BN1wbCp2HTxXVwmz9QtQXscHzv5INWPO6n5xTZDTDhc");

final repositoryProvider = Provider(Repository.new);
var fotoProvider = FutureProvider.autoDispose<Datum>((ref) async {
  final repo = ref.watch(repositoryProvider);
  final response = await repo.fetchDatum();
  final fotoDatum = response.data?.data?.first ?? Datum();
  return fotoDatum;
});

class Repository {
  Repository(this.ref);

  final Ref ref;

  Future<DashboardResponse> fetchDatum() async {
    String token = ref.read(userTokenProvider);

    var url =
        Uri.https("neracaruang-api.binerapps.co.id", "/api/portal/content", {
      'tipe': 'foto',
    });

    final response = await http.get(url, headers: {
      'Authorization': token,
      'Accept': 'application/json',
    });

    print("URL: $url");
    print("Response body: ${response.body}");

    return DashboardResponse.fromJson(jsonDecode(response.body));
  }
}