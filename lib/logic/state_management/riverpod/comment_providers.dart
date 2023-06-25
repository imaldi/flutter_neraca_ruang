import 'dart:convert';
import 'dart:developer';

import 'package:flutter_neraca_ruang/core/dummy_json/fake_comment_response.dart';
import 'package:flutter_neraca_ruang/core/helper_functions/json_reader.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

import '../../../core/consts/hive_const.dart';
import '../../../core/consts/urls.dart';
import '../../../data/models/auth_response/auth_response.dart';
import '../../../data/models/comment_response/comment_response.dart';
import '../../../di.dart';
part 'comment_providers.g.dart';

@riverpod
class Comments extends _$Comments {
  @override
  FutureOr<List<CommentModel>> build() async {
    return await _fetchDummyData();
  }

  Future<List<CommentModel>> _fetchDummyData() async {
    try {
      // var jsonStringFromFile = await readJsonFile(
      //     '../../../core/dummy_json/fake_comment_response.json');
      var jsonResult =
          CommentResponse.fromJson(dummyCommentResponse).data ?? [];
      return jsonResult;
    } catch (e) {
      log("Error message: ${e.toString()}");
      throw e;
    }
  }

  Future<List<CommentModel>> _fetchCommentFromAPI(String slug) async {
    String token =
        "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJuZXJhY2FydWFuZy1wb3J0YWwiLCJpYXQiOjE2ODMyOTIzNTZ9.BN1wbCp2HTxXVwmz9QtQXscHzv5INWPO6n5xTZDTDhc";
    var url = Uri.https(baseUrl, "$dashboardList/$slug");

    try {
      final response = await http.get(url, headers: {
        'Authorization': token,
        'Accept': 'application/json',
      });
      if (response.statusCode == 200) {
        return CommentResponse.fromJson(jsonDecode(response.body)).data ?? [];
      }
      throw Error();
    } catch (_) {
      state = AsyncValue.error(Error(), StackTrace.current);
    }
    return [];
  }

  Future<void> postCommentAsMember(String slug, String komentar) async {
    try {
      var authBox = sl<Box<AuthResponse>>();
      var dataFromBox = authBox.get(userDataKey);
      MemberData userData =
          dataFromBox?.data?.copyWith(token: "") ?? MemberData();
      print("dataFromBox (login): ${dataFromBox?.toJson()}");
      var token = userData.token ?? "";
      var bodyParameters = {"slug": slug, "komentar": komentar};
      var url = Uri.https(
        baseUrl,
        registerUrl,
      );

      // final json = await http.get(url);
      final response = await http.post(url,
          headers: {
            'Authorization': "Bearer $token",
            'Accept': 'application/json',
          },
          body: bodyParameters);
      if (response.body != 201) {
        throw Error();
      }
    } catch (_) {
      AsyncValue.error(Error(), StackTrace.current);
    }
  }
}
