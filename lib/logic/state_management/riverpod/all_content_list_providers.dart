import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter_neraca_ruang/logic/state_management/riverpod/dashboard_providers.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/my_toast.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/consts/urls.dart';
import '../../../data/models/dashboard_response/dashboard_response.dart';
import '../../../di.dart';
import 'async_state_auth_providers.dart';

part 'all_content_list_providers.g.dart';

final tipeKontenProvider = StateProvider((ref) => "");
final keywordKontenProvider = StateProvider((ref) => "");
// final myContentListProvider = FutureProvider<void>((ref) async {
//   // final myNotifier = ref.watch(contentsProvider.future);
//   await myNotifier.initialize();
// });

/// NOTE penting, jadi, kalau mau pakai (Async)NotifierProvider, kalau butuh "parameter" di
/// build method nya,
/// jangan pakai parameter di functionnya,
/// tapi sediakan StateProvider/FutureProvider yang menjadi state tersendiri
/// yang di evaluasi jika terjadi perubahan di suatu tempat (misal merubah state 'keyword' ketika button search di tekan dll)

@riverpod
class Contents extends _$Contents {
  @override
  FutureOr<List<Datum>?> build() async {
    var isLogin = ref.watch(authStatusProvider).value != null;

    if (!isLogin) {
      var box = sl<Box<String>>();
      box.clear();
    }
    return _fetchContent(
      "build method provider",
      // type: initType, keyword: keyword
    );
  }

  void setParams({
    int? limit,
    int? kotaId,
    int? tagsId,
    int? tagOtonomId,
    int? tagTopikId,
    int? tagPihakId,
    String? tipe,
    String? keyword,
  }) {
    ref.invalidate(kotaIdProvider);
    ref.invalidate(tagsIdProvider);
    ref.invalidate(tipeKontenProvider);
    ref.invalidate(keywordKontenProvider);
    ref.invalidate(tagsOtonom);
    ref.invalidate(tagsPihak);
    ref.invalidate(tagsTopik);
    // if (limit != 0) {
    //   ref.read(limitProvider.notifier).state = limit ?? 5;
    // }
    if (tagsId != null && tagsId != 0) {
      ref.read(tagsIdProvider.notifier).state = tagsId;
    }
    if (tagOtonomId != null && tagOtonomId != 0) {
      ref.read(tagsOtonom.notifier).state = tagOtonomId;
    }
    if (tagTopikId != null && tagsId != 0) {
      ref.read(tagsTopik.notifier).state = tagTopikId;
    }
    if (tagPihakId != null && tagsId != 0) {
      ref.read(tagsPihak.notifier).state = tagPihakId;
    }
    if (kotaId != null && kotaId != 0) {
      ref.read(kotaIdProvider.notifier).state = kotaId ?? 5;
    }
    if (tipe != null) {
      ref.read(tipeKontenProvider.notifier).state = tipe;
    }
    if (keyword != null) {
      ref.read(keywordKontenProvider.notifier).state = keyword;
    }
  }

  Future<List<Datum>?> _fetchContent(String calledFrom) async {
    int? limit = ref.watch(limitProvider);
    int? kotaId = ref.watch(kotaIdProvider);
    int? tagsId = ref.watch(tagsIdProvider);
    var idTagsPihak = ref.watch(tagsPihak);
    var idTagsTopik = ref.watch(tagsTopik);
    int? idTagsOtonom = ref.watch(tagsOtonom);
    var type = ref.watch(tipeKontenProvider);
    var keyword = ref.watch(keywordKontenProvider);
    Map<String, String> queryParameters = {
      // 'page': pageNumber.toString(),
      'limit': limit.toString(),
    };

    if ((type ?? "").isNotEmpty) {
      queryParameters['tipe'] = type ?? "";
    }
    if ((keyword ?? "").isNotEmpty) {
      queryParameters['keyword'] = keyword ?? "";
    }
    if (tagsId != 0) {
      queryParameters['tags_id'] = tagsId.toString();
    }
    // var kotaId = ref.watch(kotaIdProvider);
    if (kotaId != 0) {
      queryParameters['kota_id'] = kotaId.toString();
    }

    var listBoxKey = sl<Box<String>>();
    if (idTagsPihak != 0) {
      queryParameters['tags_pihak'] = idTagsPihak.toString();
    }
    if (idTagsTopik != 0) {
      queryParameters['tags_topik'] = idTagsTopik.toString();
    }
    if (idTagsOtonom != 0) {
      queryParameters['tags_otonomi'] = idTagsOtonom.toString();
    }
    print("query Param fetch content (from $calledFrom): $queryParameters");

    // var authBox = sl<Box<LoginResponse>>();
    // var dataFromBox = authBox.get(userDataKey);
    // print("dataFromBox: $dataFromBox");

    String token =
        "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJuZXJhY2FydWFuZy1wb3J0YWwiLCJpYXQiOjE2ODMyOTIzNTZ9.BN1wbCp2HTxXVwmz9QtQXscHzv5INWPO6n5xTZDTDhc";
    // dataFromBox?.data?.token ?? "";

    try {
      state = const AsyncValue.loading();

      var url = Uri.https(baseUrl, dashboardList, queryParameters);

      final response = await http.get(url, headers: {
        'Authorization': token,
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      });
      print("URL fetch latest list from contentProvider: $url");
      log("result JSON status code: ${response.statusCode}");
      log("result JSON: ${response.body}");
      // log("result JSON: ${DashboardResponse.fromJson(jsonDecode(response.body)).toJson().toString()}");

      final result = DashboardResponse.fromJson(jsonDecode(response.body))
          .data
          ?.data
          ?.map((e) {
        if (listBoxKey.containsKey(e.slug)) {
          return e.copyWith(localLike: true);
        }
        return e;
      }).toList();
      state = await AsyncValue.guard(() async {
        return result;
      });
      return result;
    } on TypeError {
      state = await AsyncValue.error(TypeError, StackTrace.current);
    } catch (e) {
      // TODO handle "Bad State: Future Already Comleted" later
      log("There is an error $e");
    }
  }

  Future<void> unlikeContent(Datum content) async {
    /// kirim query untuk like content
    String token =
        "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJuZXJhY2FydWFuZy1wb3J0YWwiLCJpYXQiOjE2ODMyOTIzNTZ9.BN1wbCp2HTxXVwmz9QtQXscHzv5INWPO6n5xTZDTDhc";

    /// simpan data ke persistence / box
    var box = sl<Box<String>>();
    if (box.containsKey(content.slug ?? "")) {
      box.delete(content.slug ?? "");
    }
    try {
      var url = Uri.https(baseUrl, "$updateUnlikeUrl/${content.slug ?? ""}");

      // final json = await http.get(url);
      final response = await http.patch(url, headers: {
        'Authorization': token,
        'Accept': 'application/json',
      });
      print("URL unlike content contentProvider: $url");
      log("result JSON: ${jsonDecode(response.body)}");
      if (response.statusCode != 200) throw Exception();

      /// ubah dulu secara lokal
      state = AsyncValue.data([
        for (final (stateContent as Datum) in state.value ?? [])
          if (stateContent.id == content.id)
            stateContent.copyWith(
                localLike: false, totalLike: (stateContent.totalLike ?? 0) - 1)
          else
            stateContent,
      ]);
    } catch (_) {
      state = AsyncValue.error(Error(), StackTrace.current);
      box.delete(content.slug ?? "");
      // throw Exception()
    }
  }

  Future<void> likeContent(Datum content) async {
    /// kirim query untuk like content
    /// TODO perbaiki nih token yang berantakan di mana mana ini!!!
    String token =
        "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJuZXJhY2FydWFuZy1wb3J0YWwiLCJpYXQiOjE2ODMyOTIzNTZ9.BN1wbCp2HTxXVwmz9QtQXscHzv5INWPO6n5xTZDTDhc";

    /// simpan data ke persistence / box
    var box = sl<Box<String>>();
    await box.put(content.slug ?? "", content.slug ?? "");
    try {
      var url = Uri.https(baseUrl, "$updateLikeUrl/${content.slug ?? ""}");

      // final json = await http.get(url);
      final response = await http.patch(url, headers: {
        'Authorization': token,
        'Accept': 'application/json',
      });
      print("URL like content contentProvider: $url");
      log("result JSON: ${jsonDecode(response.body)}");
      if (response.statusCode != 200) throw Exception();

      /// ubah dulu secara lokal
      state = AsyncValue.data([
        for (final (stateContent as Datum) in state.value ?? [])
          if (stateContent.id == content.id)
            stateContent.copyWith(
                localLike: true, totalLike: (stateContent.totalLike ?? 0) + 1)
          else
            stateContent,
      ]);
    } catch (_) {
      state = AsyncValue.error(Error(), StackTrace.current);
      box.delete(content.slug ?? "");
      // throw Exception()
    }
  }

  Future<void> markContentAsRed(String contentSlug) async {
    // state = const AsyncValue.loading();

    state = AsyncValue.data([
      for (final (stateContent as Datum) in state.value ?? [])
        if (stateContent.slug == contentSlug)
          stateContent.copyWith(totalRead: (stateContent.totalRead ?? 0) + 1)
        else
          stateContent,
    ]);
    String token =
        "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJuZXJhY2FydWFuZy1wb3J0YWwiLCJpYXQiOjE2ODMyOTIzNTZ9.BN1wbCp2HTxXVwmz9QtQXscHzv5INWPO6n5xTZDTDhc";

    try {
      var url = Uri.https(baseUrl, "$dashboardList/$contentSlug");

      // final json = await http.get(url);
      final response = await http.get(url, headers: {
        'Authorization': token,
        'Accept': 'application/json',
      });
      print("URL mark as read latest list from contentProvider: $url");
      log("result JSON: ${jsonDecode(response.body)}");
      if (response.statusCode != 200) throw Exception();
    } catch (_) {
      state = AsyncValue.error(Error(), StackTrace.current);
      print("There is an Error");
    }
  }

  Future<void> addShareCount(String slug) async {
    /// TODO perbaiki nih token yang berantakan di mana mana ini!!!
    String token =
        "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJuZXJhY2FydWFuZy1wb3J0YWwiLCJpYXQiOjE2ODMyOTIzNTZ9.BN1wbCp2HTxXVwmz9QtQXscHzv5INWPO6n5xTZDTDhc";

    try {
      var url = Uri.https(baseUrl, "$addSharedCountUrl/$slug");

      // final json = await http.get(url);
      final response = await http.patch(url, headers: {
        'Authorization': token,
        'Accept': 'application/json',
      });
      print("URL like content contentProvider: $url");
      log("result JSON: ${jsonDecode(response.body)}");
      if (response.statusCode != 200) throw Exception();
      // myToast("Update Shared Count Success");
    } catch (_) {
      state = AsyncValue.error(Error(), StackTrace.current);
      // throw Exception()
    }
  }

  // Future<void> likeContent(String slug) async {
  //   // Map<String, String> queryParameters = {
  //   //   'slug'
  //   //       'page': pageNumber.toString(),
  //   //   'limit': limit.toString(),
  //   // };
  //
  //   var authBox = sl<Box<LoginResponse>>();
  //   var dataFromBox = authBox.get(userDataKey);
  //   print("dataFromBox: $dataFromBox");
  //
  //   String token = dataFromBox?.data?.token ?? "";
  //
  //   var url = Uri.https(baseUrl, "$addLike/$slug");
  //
  //   // final json = await http.get(url);
  //   final response = await http.patch(url, headers: {
  //     'Authorization': token,
  //     'Accept': 'application/json',
  //   });
  //   print("URL: $url");
  //
  //   final result =
  //       DashboardResponse.fromJson(jsonDecode(response.body)).data?.data ??
  //           <Datum>[];
  //   state = const AsyncValue.loading();
  //   state = await AsyncValue.guard(() async {
  //     return result;
  //   });
  // }
}
