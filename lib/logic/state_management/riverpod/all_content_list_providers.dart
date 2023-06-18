import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/consts/hive_const.dart';
import '../../../core/consts/urls.dart';
import '../../../data/models/dashboard_response/dashboard_response.dart';
import '../../../data/models/login_response/login_response.dart';
import '../../../di.dart';

part 'all_content_list_providers.g.dart';

@riverpod
class Contents extends _$Contents {
  @override
  FutureOr<List<Datum>> build() async {
    return fetchTodo();
  }

  Future<List<Datum>> fetchTodo(
      {int? pageNumber = 1,
      int? limit = 5,
      String? type,
      String? keyword}) async {
    Map<String, String> queryParameters = {
      'page': pageNumber.toString(),
      'limit': limit.toString(),
    };

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

    final result =
        DashboardResponse.fromJson(jsonDecode(response.body)).data?.data ??
            <Datum>[];

    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return result;
    });
    return result;
  }

  Future<void> likeContent(String slug) async {
    // Map<String, String> queryParameters = {
    //   'slug'
    //       'page': pageNumber.toString(),
    //   'limit': limit.toString(),
    // };

    var authBox = sl<Box<LoginResponse>>();
    var dataFromBox = authBox.get(userDataKey);
    print("dataFromBox: $dataFromBox");

    String token = dataFromBox?.data?.token ?? "";

    var url = Uri.https(baseUrl, "$addLike/$slug");

    // final json = await http.get(url);
    final response = await http.patch(url, headers: {
      'Authorization': token,
      'Accept': 'application/json',
    });
    print("URL: $url");

    final result =
        DashboardResponse.fromJson(jsonDecode(response.body)).data?.data ??
            <Datum>[];
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return result;
    });
  }
}

// class ContentRepo {
//   Map<String, String> queryParameters = {
//     'page': pageNumber.toString(),
//     'limit': limit.toString(),
//   };
// }
