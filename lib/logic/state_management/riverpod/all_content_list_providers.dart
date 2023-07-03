import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter_neraca_ruang/logic/state_management/riverpod/dashboard_providers.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/my_toast.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/consts/urls.dart';
import '../../../data/models/dashboard_response/dashboard_response.dart';
import '../../../di.dart';
import 'async_state_auth_providers.dart';

part 'all_content_list_providers.g.dart';

@riverpod
class Contents extends _$Contents {
  @override
  FutureOr<List<Datum>?> build() async {
    var isLogin = ref.watch(authStatusProvider).value != null;
    if (!isLogin) {
      var box = sl<Box<String>>();
      box.clear();
    }
    return [];
    // return await fetchContent();
  }

  Future<void> fetchContent({
    // int? pageNumber = 1,
    int? limit = 5,
    int? kotaId = 0,
    int? tagsId = 0,
    String? type,
    String keyword = "",
    bool shouldStartSearchingByTag = false,
    bool shouldStartSearchingByKeyword = false,
  }) async {

    Map<String, String> queryParameters = {
      // 'page': pageNumber.toString(),
      'limit': limit.toString(),
    };
    if ((type ?? "").isNotEmpty) {
      queryParameters['tipe'] = type ?? "";
    }
    if (tagsId != 0) {
      queryParameters['tags_id'] = tagsId.toString();
    }
    // var kotaId = ref.watch(kotaIdProvider);
    if (kotaId != 0) {
      queryParameters['kota_id'] = kotaId.toString();
    }
    // queryParameters['keyword'] = ref.watch(keywordProvider);
    // var shouldStartSearchingByTag = ref.watch(startSearchingByTag);
    // var shouldStartSearchingByKeyword = ref.watch(startSearchingByKeyword);
    // var keywordParam = ref.watch(keywordProvider);
    var idTagsPihak = ref.watch(tagsPihak);
    var idTagsTopik = ref.watch(tagsTopik);
    var idTagsOtonom = ref.watch(tagsOtonom);

    var listBoxKey = sl<Box<String>>();
    if (shouldStartSearchingByTag) {
      queryParameters.remove('keyword');
      if (idTagsPihak != 0) {
        queryParameters['tags_pihak'] = idTagsPihak.toString();
      }
      if (idTagsTopik != 0) {
        queryParameters['tags_topik'] = idTagsTopik.toString();
      }
      if (idTagsOtonom != 0) {
        queryParameters['tags_otonomi'] = idTagsOtonom.toString();
      }
    }
    if (shouldStartSearchingByKeyword) {
      queryParameters.remove('tags_pihak');
      queryParameters.remove('tags_topik');
      queryParameters.remove('tags_otonomi');

      if ((keyword ?? "").isNotEmpty) {
        queryParameters['keyword'] = keyword;
      }
    }
    // keyword ?? "";
    print("query Param fetch content: $queryParameters");

    // var authBox = sl<Box<LoginResponse>>();
    // var dataFromBox = authBox.get(userDataKey);
    // print("dataFromBox: $dataFromBox");

    String token =
        "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJuZXJhY2FydWFuZy1wb3J0YWwiLCJpYXQiOjE2ODMyOTIzNTZ9.BN1wbCp2HTxXVwmz9QtQXscHzv5INWPO6n5xTZDTDhc";
    // dataFromBox?.data?.token ?? "";

    try {
      state = const AsyncValue.loading();
      var url = Uri.https(baseUrl, dashboardList, queryParameters);

      // final json = await http.get(url);
      final response = await http.get(url, headers: {
        'Authorization': token,
        'Accept': 'application/json',
      });
      print("URL fetch latest list from contentProvider: $url");
      log("result JSON: ${jsonDecode(response.body)}");
      // log("result JSON: ${DashboardResponse.fromJson(jsonDecode(response.body)).toJson().toString()}");

      final result = DashboardResponse.fromJson(jsonDecode(response.body))
              .data
              ?.data
              ?.map((e) {
            if (listBoxKey.containsKey(e.slug)) {
              return e.copyWith(localLike: true);
            }
            return e;
          }).toList() ??
          <Datum>[];

      state = await AsyncValue.guard(() async {
        return result;
      });
      // return result;
    } on TypeError {
      // state = await AsyncValue.guard(() async {
      //   return [];
      // });
      state = await AsyncValue.error(TypeError, StackTrace.current);
      // return [];
    }
    // finally {
    //   ref.invalidate(startSearching);
    //   ref.invalidate(tagsPihak);
    //   ref.invalidate(tagsOtonom);
    //   ref.invalidate(tagsTopik);
    // }
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
