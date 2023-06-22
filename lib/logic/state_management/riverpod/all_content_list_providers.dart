import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter_neraca_ruang/logic/state_management/riverpod/dashboard_providers.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/consts/hive_const.dart';
import '../../../core/consts/urls.dart';
import '../../../data/models/dashboard_response/dashboard_response.dart';
import '../../../data/models/login_response_deprecated/login_response.dart';
import '../../../di.dart';

part 'all_content_list_providers.g.dart';

@riverpod
class Contents extends _$Contents {
  @override
  FutureOr<List<Datum>> build() async {
    return fetchContent();
  }

  Future<List<Datum>> fetchContent(
      {int? pageNumber = 1,
      int? limit = 5,
      String? type,
      String? keyword}) async {
    Map<String, String> queryParameters = {
      'page': pageNumber.toString(),
      'limit': limit.toString(),
    };
    // queryParameters['keyword'] = ref.watch(keywordProvider);
    var shouldStartSearchingByTag = ref.watch(startSearchingByTag);
    var shouldStartSearchingByKeyword = ref.watch(startSearchingByKeyword);
    var keywordParam = ref.watch(keywordProvider);
    var idTagsPihak = ref.watch(tagsPihak);
    var idTagsTopik = ref.watch(tagsTopik);
    var idTagsOtonom = ref.watch(tagsOtonom);
    if (shouldStartSearchingByTag) {
      queryParameters.remove('keyword');
      ref.invalidate(keywordProvider);
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
      ref.invalidate(tagsPihak);
      ref.invalidate(tagsTopik);
      ref.invalidate(tagsOtonom);
      if (keywordParam.isNotEmpty) {
        queryParameters['keyword'] = keywordParam;
      }
    }
    // keyword ?? "";
    print(": $queryParameters");

    // var authBox = sl<Box<LoginResponse>>();
    // var dataFromBox = authBox.get(userDataKey);
    // print("dataFromBox: $dataFromBox");

    String token =
        "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJuZXJhY2FydWFuZy1wb3J0YWwiLCJpYXQiOjE2ODMyOTIzNTZ9.BN1wbCp2HTxXVwmz9QtQXscHzv5INWPO6n5xTZDTDhc";
    // dataFromBox?.data?.token ?? "";

    var url = Uri.https(baseUrl, dashboardList, queryParameters);

    // final json = await http.get(url);
    final response = await http.get(url, headers: {
      'Authorization': token,
      'Accept': 'application/json',
    });
    print("URL fetch latest list from contentProvider: $url");
    log("result JSON: ${jsonDecode(response.body)}");
    // log("result JSON: ${DashboardResponse.fromJson(jsonDecode(response.body)).toJson().toString()}");
    try {
      final result =
          DashboardResponse.fromJson(jsonDecode(response.body)).data?.data ??
              <Datum>[];

      state = const AsyncValue.loading();
      state = await AsyncValue.guard(() async {
        return result;
      });
      return result;
    } on TypeError {
      state = const AsyncValue.loading();
      state = await AsyncValue.guard(() async {
        return [];
      });
      state = AsyncValue.error(TypeError, StackTrace.current);
      return [];
    }
    // finally {
    //   ref.invalidate(startSearching);
    //   ref.invalidate(tagsPihak);
    //   ref.invalidate(tagsOtonom);
    //   ref.invalidate(tagsTopik);
    // }
  }

  Future<void> likeContent(Datum content) async {
    state = AsyncValue.data([
      for (final (stateContent as Datum) in state.value ?? [])
        if (stateContent.id == content.id)
          stateContent.copyWith(
              localLike: !(stateContent.localLike ?? false),
              totalLike: (content.localLike != null)
                  ? (content.localLike!)
                      ? (stateContent.totalLike ?? 0) + 1
                      : (stateContent.totalLike ?? 0) - 1
                  : stateContent.totalLike)
        else
          stateContent,
    ]);
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
