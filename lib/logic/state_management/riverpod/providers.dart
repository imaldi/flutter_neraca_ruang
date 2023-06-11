import 'dart:convert';

import 'package:flutter_neraca_ruang/core/consts/datum_type.dart';
import 'package:flutter_neraca_ruang/data/models/simple_dashboard_response/simple_dashboard_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

import '../../../data/models/dashboard_response/dashboard_response.dart';

// TODO: Buat FutureProvider untuk fetch semua konten yang tampil di dashboard
// var kabarProvider;
// var jurnalProvider;
// var infografisProvider;
// var videoProvider;
// var dashboardProvider;  // (Kombinasi semua provider itu, ambil yg terbaru dari masing2 response, dan jadikan sebagai sebuah list / map);

// FIXME: JANGAN SIMPAN TOKENNYA DI SINI!!! (JANGAN COMMIT INI) // udah terlanjur hadeh,
final userTokenProvider = StateProvider<String>((ref) =>
    "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJuZXJhY2FydWFuZy1wb3J0YWwiLCJpYXQiOjE2ODMyOTIzNTZ9.BN1wbCp2HTxXVwmz9QtQXscHzv5INWPO6n5xTZDTDhc");

final repositoryProvider = Provider((ref) => Repository(ref));
final simpleDashboardRepositoryProvider =
    Provider(SimpleDashboardRepository.new);

var kabarProvider = FutureProvider<DashboardResponse>((ref) async {
  final repo = ref.watch(repositoryProvider);
  final response = await repo.fetchDatum(DatumType.kabar.toString());
  return response;
});

var jurnalProvider = FutureProvider<DashboardResponse>((ref) async {
  final repo = ref.watch(repositoryProvider);
  final response = await repo.fetchDatum(DatumType.jurnal.toString());
  return response;
});

var infografisProvider = FutureProvider<DashboardResponse>((ref) async {
  final repo = ref.watch(repositoryProvider);
  final response = await repo.fetchDatum(DatumType.infografis.toString());
  return response;
});

var videoProvider = FutureProvider<DashboardResponse>((ref) async {
  final repo = ref.watch(repositoryProvider);
  final response = await repo.fetchDatum(DatumType.video.toString());
  return response;
});
var fotoProvider = FutureProvider<DashboardResponse>((ref) async {
  final repo = ref.watch(repositoryProvider);
  final response = await repo.fetchDatum(DatumType.foto.toString());
  return response;
});

class SelectedDummyStateNotifier extends StateNotifier<Datum?> {
  // We initialize the list of todos to an empty list
  SelectedDummyStateNotifier() : super(null);
  // Let's allow the UI to add todos.
  void saveDummy(Datum datum) {
    // Since our state is immutable, we are not allowed to do `state.add(todo)`.
    // Instead, we should create a new list of todos which contains the previous
    // items and the new one.
    // Using Dart's spread operator here is helpful!
    state = datum;
    // No need to call "notifyListeners" or anything similar. Calling "state ="
    // will automatically rebuild the UI when necessary.
  }
}

// FIXME: ini masih salah, belum pakai family (tapi kyknya udah bisa aja kok)
var dashBoardProvider = FutureProvider<List<Datum>>((ref) async {
  var kabar = await ref.watch(kabarProvider.future);
  var jurnal = await ref.watch(jurnalProvider.future);
  var infografis = await ref.watch(infografisProvider.future);
  var foto = await ref.watch(fotoProvider.future);
  var video = await ref.watch(videoProvider.future);
  var theList = <Datum>[]
    ..add(kabar.data?.data?.first ?? Datum())
    ..add(jurnal.data?.data?.first ?? Datum())
    ..add(infografis.data?.data?.first ?? Datum())
    ..add(video.data?.data?.first ?? Datum())
    ..add(foto.data?.data?.first ?? Datum());
  print("Dashboard Result: ${theList.toString()}");
  return await Future<List<Datum>>(() => theList);
});

class SimpleDashboardRepository {
  SimpleDashboardRepository(this.ref);

  final Ref ref;

  Future<SimpleDashboardResponse> fetchDatum() async {
    String token = ref.read(userTokenProvider);

    var url =
        Uri.https("neracaruang-api.binerapps.co.id", "/api/portal/carousel");

    final response = await http.get(url, headers: {
      'Authorization': token,
      'Accept': 'application/json',
    });

    print("URL: $url");
    print("Response body: ${response.body}");

    return SimpleDashboardResponse.fromJson(jsonDecode(response.body));
  }
}

class Repository {
  Repository(this.ref);

  final Ref ref;

  Future<DashboardResponse> fetchDatum(String tipe) async {
    String token = ref.read(userTokenProvider);

    var url =
        Uri.https("neracaruang-api.binerapps.co.id", "/api/portal/content", {
      'tipe': tipe,
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
